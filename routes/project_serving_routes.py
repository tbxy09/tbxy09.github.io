from fastapi import APIRouter, HTTPException, Query
from pathlib import Path
from fastapi.responses import FileResponse
from shutil import copytree
import os

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

@router.post("/deploy")
async def deploy_project(projectID: str = Query(None)):
    root = Path("project")/projectID 
    try:
        backend_src = root/'backend'
        backend_dst = root/'../../root/'  # Fix: Provide a valid expression for the backend_dst variable
        frontend_src = root/'editor'
        frontend_dst = root/'../../root/editor'  # Fix: Provide a valid expression for the frontend_dst variable

        # Creating destination directories if they don't exist
        backend_dst.mkdir(parents=True, exist_ok=True)
        frontend_dst.mkdir(parents=True, exist_ok=True)

        # Copy backend and frontend directories
        copytree(backend_src, backend_dst, dirs_exist_ok=True)
        copytree(frontend_src, frontend_dst, dirs_exist_ok=True)

        return {"message": "Project deployed successfully to ../../root"}
    except Exception as e:
        raise HTTPException(status_code=500, detail=f"Error during deployment: {e}")
