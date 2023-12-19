import difflib
from fastapi import APIRouter, HTTPException
from pathlib import Path
from urllib.parse import unquote
from typing import List
from file_management import FileSchema, ArrayEditSchema, ArrayFileSchema, copy_to_static, generate_random_string, print_tree
from path_mapping import path_mapping
router = APIRouter()

@router.get("/listfiles/{projectID}")
async def query_file_structure(projectID: str):
    root = Path("project") / projectID
    if root.is_dir():
        return {"treeprint": print_tree(root)}
    else:
        raise HTTPException(status_code=404, detail="Index file not found")

@router.get("/readfiles/{projectID}", response_model=List[FileSchema])
async def readfiles(projectID: str, filelist: str):
    root = Path("project") / projectID
    files = unquote(filelist).split(',')
    result = []
    for file in files:
        file_path = root / unquote(file.strip())
        if not file_path.is_file():
            continue
        content = file_path.read_text()
        result.append(FileSchema(content=content, path=str(file_path)))
    return result

@router.post("/newworkspace")
async def upload_files(files: ArrayFileSchema):
    random_string = generate_random_string()
    save_directory = Path('project') / random_string
    save_directory.mkdir(parents=True, exist_ok=True)
    for file in files.files:
        file_path = save_directory / file.path
        file_path.parent.mkdir(parents=True, exist_ok=True)
        file_path.write_text(file.content)
        copy_to_static(file_path)
    path_mapping[random_string] = {"path": str(save_directory), "state": "developing"}
    return {"message": f"Files uploaded successfully. uniqueid: {random_string}. please form your url with end_point with projectID query c?projectID={random_string}"
}

@router.post("/editFiles/{projectID}")
async def edit_files(projectID: str, file_edits: ArrayEditSchema):
    root = Path("project") / projectID
    if not root.is_dir():
        raise HTTPException(status_code=404, detail="Project not found")
    for file_edit in file_edits.files:
        file_path = root / file_edit.path
        if not file_path.is_file():
            file_path.parent.mkdir(parents=True, exist_ok=True)
        old_content = file_path.read_text()
        file_path.write_text(file_edit.new_content)
        copy_to_static(file_path)
        # Run git diff and capture the output

        # Assume old_content is the content read from the file
        # and new_content is the content you want to write to the file
        old_content_lines = old_content.splitlines()
        new_content_lines = file_edit.new_content.splitlines()

        diff = difflib.unified_diff(old_content_lines, new_content_lines)

        # The diff is a generator, so we need to join it into a string
        diff_str = '\n'.join(diff)
        if diff_str:
            file_edit.diff = diff_str
    return {"message": "Files edited successfully: " + ",".join([f"{file_edit.path}:\n{file_edit.diff}" for file_edit in file_edits.files])}