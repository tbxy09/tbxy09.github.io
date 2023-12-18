from fastapi import APIRouter, HTTPException, HTMLResponse
from pathlib import Path

router = APIRouter()

@router.get("/privacy", response_class=HTMLResponse)
async def privacy():
    privacy_file_path = Path("static/privacy.html")
    if not privacy_file_path.is_file():
        raise HTTPException(status_code=404, detail="Privacy policy not found")
    return HTMLResponse(content=privacy_file_path.read_text(), status_code=200)
