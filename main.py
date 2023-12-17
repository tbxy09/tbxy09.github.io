#!/usr/bin/env python3
"""
Created on: 2023/11/10 11:00
Author: tbxy09
File: main.py
"""
import requests
from pathlib import Path
from urllib.parse import unquote
from typing import List
import tempfile

from fastapi import FastAPI, HTTPException, Query
from fastapi.middleware.cors import CORSMiddleware
from fastapi.responses import HTMLResponse, FileResponse, JSONResponse
from fastapi.staticfiles import StaticFiles

from file_management import (
    FileSchema, 
    ArrayEditSchema, 
    ArrayFileSchema, 
    copy_to_static, 
    move_to_static, 
    print_tree, 
    generate_random_string
)
from screenshot_service import capture_screenshot
from const import ROOT_URL_F, ROOT_URL_B

app = FastAPI()

# CORS middleware configuration
default_origins = [ROOT_URL_F]  # Adjust according to the frontend host
app.add_middleware(
    CORSMiddleware,
    allow_origins=default_origins,
    allow_credentials=True,
    allow_methods=['*'],
    allow_headers=['*'],
)
# Dictionary to store project information
# {
#     "random_string": {
#         "path": "path/to/project",
#         "state": "init" | "developing" | "deployed"
#     }
# }
path_mapping = {"cbx2ovkQmU": {
    "path": "static/aMpW3xAJuI", "state": "developing"}}

static_directory = Path('project') / "static"
static_directory.mkdir(parents=True, exist_ok=True)


@app.get("/listfiles/{projectID}")
async def query_file_structure(projectID: str):
    root = Path("project") / projectID
    if root.is_dir():
        return {"treeprint": print_tree(root)}
    else:
        raise HTTPException(status_code=404, detail="Index file not found")

# @app.get("/gpts-openapi.yaml")
# async def get_openapi_yaml():
#     return FileResponse("gpts-openapi.yaml")


@app.get("/readfiles/{projectID}", response_model=List[FileSchema], responses={404: {"description": "One or more files not found"}})
async def readfiles(projectID: str, filelist: str):
    print(filelist)
    files = unquote(filelist).split(',')
    result = []

    for file in files:
        root = Path("project") / projectID
        if root.is_dir():
            file_path = root / unquote(file.strip())
            if not file_path.is_file():
                continue
            content = file_path.read_text()
            result.append(FileSchema(content=content,
                                     path=str(file_path)))
        else:
            raise HTTPException(
                status_code=404, detail=f"File {file} not found")
    return result


@app.post("/newworkspace", responses={404: {"description": "new failed"}})
async def upload_files(files: ArrayFileSchema):
    # use move_to_static
    random_string = generate_random_string()
    save_directory = Path('project') / random_string
    save_directory.mkdir(parents=True, exist_ok=True)

    for file in files.files:
        file_path = save_directory / file.path
        # Ensure the directory exists
        file_path.parent.mkdir(parents=True, exist_ok=True)
        file_path.write_text(file.content)
        copy_to_static(file_path)

    # Store the mapping
    path_mapping[random_string] = {
        "path": str(save_directory),
        "state": "developing"
    }
    return {
        "message":
        f"Files uploaded successfully. uniqueid: {random_string}. please form your url with end_point with projectID query c?projectID={random_string}"
    }
@app.post("/editFiles/{projectID}", responses={404: {"description": "One or more files not found"}})
async def edit_files(projectID: str, file_edits: ArrayEditSchema):
    root = Path("project") / projectID
    if not root.is_dir():
        raise HTTPException(status_code=404, detail="Project not found")
    for file_edit in file_edits.files:
        file_path = root / file_edit.path
        if not file_path.is_file():
            file_path.parent.mkdir(parents=True, exist_ok=True)
        file_path.write_text(file_edit.new_content)
        copy_to_static(file_path)
    return {"message": "Files edited successfully: " + ",".join([file_edit.path for file_edit in file_edits.files])}

# curl "ROOT_URL_B/c?project_id=your_project_id"
@app.get("/c")
async def serve_project(projectID: str = Query(None)):
    file_path = Path("project")/projectID/"index.html"
    print(file_path)
    if not file_path.is_file():
        raise HTTPException(status_code=404) 
    for file in file_path.parent.iterdir():
        if file.is_file():
            copy_to_static(file)
    return f"{ROOT_URL_B}/index.html"

@app.post('/screenshot')
def take_screenshot(url: str):
    screenshot_path = capture_screenshot(url)
    screenshot_url = move_to_static(screenshot_path)
    return JSONResponse(content={'url': screenshot_url})

@app.post('/screenshot/sidebyside')
def take_side_by_side_screenshot(project_id: str, url: str):
    # Capture screenshot of the code preview from the project URL
    code_url = f'{ROOT_URL_B}/c?projectID={project_id}'
    code_screenshot_path = capture_screenshot(code_url)

    # Capture screenshot of the target URL
    target_screenshot_path = capture_screenshot(url)

    # Combine both screenshots side by side
    from PIL import Image
    code_image = Image.open(code_screenshot_path)
    target_image = Image.open(target_screenshot_path)
    combined_width = code_image.width + target_image.width
    combined_height = max(code_image.height, target_image.height)
    combined_image = Image.new('RGB', (combined_width, combined_height))
    combined_image.paste(code_image, (0, 0))
    combined_image.paste(target_image, (code_image.width, 0))

    # Save the combined image
    combined_screenshot_path = tempfile.NamedTemporaryFile(suffix='.png', delete=False).name
    combined_image.save(combined_screenshot_path)

    # Return the combined image URL
    combined_screenshot_url = move_to_static(combined_screenshot_path)
    return JSONResponse(content={'url': combined_screenshot_url})

@app.get("/privacy", response_class=HTMLResponse)
async def privacy():
    return HTMLResponse(content=Path("static/privacy.html").read_text(), status_code=200)
    
@app.get("/repo/{owner}/{repo}/{path:path}")
async def read_repo(owner: str, repo: str, path: str = ''):
    github_api_url = f"https://api.github.com/repos/{owner}/{repo}/contents/{path}"
    response = requests.get(github_api_url)

    if response.status_code == 200:
        return response.json()
    else:
        raise HTTPException(status_code=response.status_code,
                            detail="Error fetching data from GitHub")
# Mount a static files 
app.mount("/", StaticFiles(directory="static"), name="static")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)