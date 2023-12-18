from fastapi import APIRouter, HTTPException, Query
from pathlib import Path
from fastapi.responses import FileResponse

from file_management import copy_to_static

router = APIRouter()

@router.get("/c")
async def serve_project(projectID: str = Query(None)):
    file_path = Path("project")/projectID/"index.html"
    if not file_path.is_file():
        raise HTTPException(status_code=404, detail="Project index file not found")
    for file in file_path.parent.iterdir():
        if file.is_file():
            copy_to_static(file)
    return FileResponse(file_path)
