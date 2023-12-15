#!/usr/bin/env python3
"""
Created on: 2023/11/10 11:00
Author: tbxy09
File: main.py
"""

import requests
from fastapi import FastAPI, HTTPException
import string
import random
import shutil
from pathlib import Path

from pydantic import BaseModel, Field
from typing import List

from fastapi import FastAPI, HTTPException, Response
from fastapi.responses import HTMLResponse, FileResponse
from fastapi.staticfiles import StaticFiles


def generate_random_string(length=10):
    return ''.join(random.choices(string.ascii_letters + string.digits,
                                  k=length))

class FileSchema(BaseModel):
    path: str = Field(..., description="path of the file")
    content: str = Field(..., description="Content of the file")


class FileEdit(BaseModel):
    path: str = Field(...,
                      description="path of the file to be edited")
    new_content: str = Field(..., description="New content of the file")


# FileEditSchema = List[FileEdit]
class FileEditSchema(BaseModel):
    files: List[FileEdit] = Field(
        ..., description="Array of edited files object with path and new_content")


class UploadFilesSchema(BaseModel):
    files: List[FileSchema] = Field(
        ..., description="Array of upload files object with path and content")


app = FastAPI()

# Dictionary to store project information
# {
#     "random_string": {
#         "path": "path/to/project",
#         "state": "init" | "developing" | "deployed"
#     }
# }
path_mapping = {"cbx2ovkQmU": {
    "path": "static/aMpW3xAJuI", "state": "developing"}}

# add a query file structure endpoint
def print_tree(directory, file_path_indent="", sub_dirs_indent=""):
    # result = f"{file_path_indent}{Path(directory).name}\n"
    result = ""

    for path in sorted(directory.iterdir()):
        if path.is_file():
            result += f"{sub_dirs_indent}    ├── {path.name}\n"
        elif path.is_dir():
            result += print_tree(path, f"{sub_dirs_indent}    ├── ",
                                 f"{sub_dirs_indent}    │   ")

    return result


@app.get("/queryFileStructure/{random_string}")
async def query_file_structure(random_string: str):
    root = Path("project") / random_string
    if root.is_dir():
        return {"treeprint": print_tree(root)}
    else:
        raise HTTPException(status_code=404, detail="Index file not found")

@app.get("/gpts-openapi.yaml")
async def get_openapi_yaml():
    return FileResponse("gpts-openapi.yaml")


@app.get("/downloadCode/{projectID}/{filelist}", response_model=List[FileSchema], responses={404: {"description": "One or more files not found"}})
async def downloadCode(projectID: str, filelist: str):
    files = filelist.split(',')
    result = []

    for file in files:
        root = Path("project") / projectID
        if root.is_dir():
            file_path = root / file
            print(file_path)
            if not file_path.is_file():
                continue
            content = file_path.read_text()
            result.append(FileSchema(content=content,
                                     path=str(file_path)))
        else:
            raise HTTPException(
                status_code=404, detail=f"File {file} not found")

    return result


@app.post("/uploadCode", responses={404: {"description": "upload failed"}})
async def upload_files(files: UploadFilesSchema):
    random_string = generate_random_string()
    save_directory = Path('project') / random_string
    save_directory.mkdir(parents=True, exist_ok=True)

    for file in files.files:
        file_path = save_directory / file.path
        # Ensure the directory exists
        file_path.parent.mkdir(parents=True, exist_ok=True)
        file_path.write_text(file.content)

    # Store the mapping
    path_mapping[random_string] = {
        "path": str(save_directory),
        "state": "developing"
    }
    return {
        "message":
        f"Files uploaded successfully. uniqueid: {random_string}. please form your url with end_point c/{random_string}"
    }


@app.post("/editFiles/{projectID}", responses={404: {"description": "One or more files not found"}})
async def edit_files(projectID: str, file_edits: FileEditSchema):
    root = Path("project") / projectID
    if not root.is_dir():
        raise HTTPException(status_code=404, detail="Project not found")
    for file_edit in file_edits.files:
        file_path = root / file_edit.path
        if not file_path.is_file():
            # create the file
            file_path.parent.mkdir(parents=True, exist_ok=True)
        file_path.write_text(file_edit.new_content)
    # and return all the files edited
    return {"message": "Files edited successfully: " + ",".join([file_edit.path for file_edit in file_edits.files])}

@app.get("/c/{random_string}")
async def serve_root(random_string: str):
    print(random_string)
    file_path = Path("project") / random_string / "index.html"
    if file_path.is_file():
        return FileResponse(str(file_path))
    else:
        raise HTTPException(status_code=404, detail="Index file not found")

app.mount("/c", StaticFiles(directory="project"), name="static")

# @app.get("/c/{random_string}/{filename:path}")
# async def serve_file(random_string: str, filename: str):
#     file_path = Path("project") / random_string / filename
#     if file_path.is_file():
#         return FileResponse(str(file_path))
#     else:
#         raise HTTPException(status_code=404, detail="File not found")
    
# Mount a static files directory

@app.get("/privacy", response_class=HTMLResponse)
async def privacy_policy():
    html_content = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy</title>
</head>
<body>

    <header>
        <h1>Privacy Policy for Cloner to remote deployment</h1>
    </header>

    <main>
        <section>
            <p>Effective date: 12/7/2023</p>

            <h2>1. Introduction</h2>
            <p>
                Thank you for using Cloner Service. This privacy policy ("Policy") describes our practices regarding the collection, use, and sharing of your information through the use of our FastAPI endpoint, which is accessible at https://clonerapi.replit.app ("Service"). 
            </p>

            <h2>2. Information We Do Not Collect</h2>
            <p>
                We do not collect or store any personal information from the users of our Service. The Service does not require any form of registration or submission of personal data. 
            </p>

            <h2>3. How We Use Information</h2>
            <p>
                Since we do not collect personal information, we do not use any such data in any way. Our Service is designed to be used without the necessity of providing any personal or identifiable information.
            </p>

            <h2>4. Sharing Of Information</h2>
            <p>
                We do not share any personal information simply because we do not collect any. There is no sharing of personal data with third parties, advertisers, or other users.
            </p>

            <h2>5. Data Security</h2>
            <p>
                The security of potential data is important to us. Even though we do not collect personal information, we strive to use commercially acceptable means to protect our Service and maintain the privacy of our users.
            </p>

            <h2>6. Changes to This Privacy Policy</h2>
            <p>
                We may update our Privacy Policy from time to time. We will notify you of any changes by posting the new Privacy Policy on this page. You are advised to review this Privacy Policy periodically for any changes.
            </p>

            <h2>7. Contact Us</h2>
            <p>
                If you have any questions about this Privacy Policy, please contact us:
                <ul>
                    <li>Via twitter: tbxy09@gmail.com</li>
                </ul>
            </p>
        </section>
    </main>

</body>
</html>
    """
    return Response(content=html_content, media_type="text/html")


@app.get("/repo/{owner}/{repo}/{path:path}")
async def read_repo(owner: str, repo: str, path: str = ''):
    github_api_url = f"https://api.github.com/repos/{owner}/{repo}/contents/{path}"
    response = requests.get(github_api_url)

    if response.status_code == 200:
        return response.json()
    else:
        raise HTTPException(status_code=response.status_code,
                            detail="Error fetching data from GitHub")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)