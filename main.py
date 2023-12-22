#!/usr/bin/env python3
import requests
from urllib.parse import unquote
from typing import List
from pathlib import Path

from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from fastapi.staticfiles import StaticFiles

from const import ROOT_URL_F, ROOT_URL_B
from routes.file_routes import router as file_router
from routes.screenshot_routes import router as screenshot_router
from routes.project_serving_routes import router as project_serving_router
from routes.privacy_route import router as privacy_router
from routes.github_repo_route import router as github_repo_router

app = FastAPI()

# CORS middleware configuration
default_origins = [ROOT_URL_F]
app.add_middleware(
    CORSMiddleware,
    allow_origins=default_origins,
    allow_credentials=True,
    allow_methods=['*'],
    allow_headers=['*'],
)

path_mapping = {"cbx2ovkQmU": {"path": "static/aMpW3xAJuI", "state": "developing"}}

static_directory = Path('project') / "static"
static_directory.mkdir(parents=True, exist_ok=True)

app.include_router(file_router)
app.include_router(screenshot_router)
app.include_router(project_serving_router)
app.include_router(privacy_router)
app.include_router(github_repo_router)

app.mount("/", StaticFiles(directory="static"), name="static")

if __name__ == '__main__':
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
