from fastapi import FastAPI, HTTPException, Response
from fastapi.responses import HTMLResponse, FileResponse, JSONResponse
from fastapi.staticfiles import StaticFiles
from .screenshot_service import capture_screenshot
from .file_management import move_to_static, FileSchema, ArrayEditSchema
import requests
from urllib.parse import unquote
from pathlib import Path

app = FastAPI()

# Define your API routes here
@app.post('/screenshot')
def take_screenshot(url: str):
    screenshot_path = capture_screenshot(url)
    screenshot_url = move_to_static(screenshot_path)
    return JSONResponse(content={'url': screenshot_url})

# Additional endpoints can be added here

# Mount a static files directory
app.mount("/static", StaticFiles(directory="backend/static"), name="static")
