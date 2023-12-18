#!/usr/bin/env python3
"""
Created on: 2023/11/10 11:00
Author: tbxy09
File: main.py
"""
import requests
from urllib.parse import unquote
from typing import List

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
from screenshot_service import capture_screenshot_with_screenshotone
from const import ROOT_URL_F, ROOT_URL_B
from util import combine_images_side_by_side, create_temporary_file

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
path_mapping = {"cbx2ovkQmU": {
    "path": "static/aMpW3xAJuI", "state": "developing"}}

static_directory = Path('project') / "static"
static_directory.mkdir(parents=True, exist_ok=True)

# Other API endpoints remain unchanged

@app.post('/screenshot/sidebyside')
async def take_side_by_side_screenshot(project_id: str, url: str):
    # Capture screenshot of the code preview from the project URL
    code_url = f'{ROOT_URL_B}/c?projectID={project_id}'
    code_screenshot_path = await capture_screenshot_with_screenshotone(code_url)

    # Capture screenshot of the target URL
    target_screenshot_path = await capture_screenshot_with_screenshotone(url)

    # Combine both screenshots side by side
    combined_image = combine_images_side_by_side(code_screenshot_path, target_screenshot_path)

    # Save the combined image
    combined_screenshot_path = create_temporary_file('.png')
    combined_image.save(combined_screenshot_path)

    # Return the combined image URL
    combined_screenshot_url = move_to_static(combined_screenshot_path)
    return JSONResponse(content={'url': combined_screenshot_url})

# Other functions and endpoints remain unchanged
# Placeholder for additional functionality from the old version of main.py