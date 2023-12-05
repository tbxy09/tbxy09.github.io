from pathlib import Path
from fastapi import FastAPI, HTTPException, UploadFile
from fastapi.responses import HTMLResponse, FileResponse
from fastapi.staticfiles import StaticFiles
from pydantic import BaseModel, Field
from typing import List
import os
import random
import string
import requests

def generate_random_string(length=10):
    return ''.join(random.choices(string.ascii_letters + string.digits, k=length))

class FileSchema(BaseModel):
    name: str = Field(..., description="Name of the upload file")
    content: str = Field(..., description="Content of the upload file")

class UploadFilesSchema(BaseModel):
    files: List[FileSchema] = Field(..., description="Array of upload files object with name and content")

app = FastAPI()

# Dictionary to store random string and file path mapping
path_mapping = {}

# Mount a static files directory
app.mount("/static", StaticFiles(directory="static"), name="static")

@app.post("/uploadCode")
async def upload_files(files: UploadFilesSchema):
    random_string = generate_random_string()
    save_directory = Path('static') / random_string
    save_directory.mkdir(parents=True, exist_ok=True)

    for file in files.files:
        file_path = save_directory / file.name
        file_path.parent.mkdir(parents=True, exist_ok=True)  # Ensure the directory exists
        file_path.write_text(file.content)

    # Store the mapping
    path_mapping[random_string] = str(save_directory)
    return {"message": f"Files uploaded successfully. uniqueid: {random_string}"}

@app.get("/{random_string}")
async def serve_index(random_string: str):
    if random_string in path_mapping:
        file_path = Path(path_mapping[random_string]) / 'index.html'
        if file_path.is_file():
            return FileResponse(str(file_path))
        else:
            raise HTTPException(status_code=404, detail="Index file not found")
    else:
        raise HTTPException(status_code=404, detail="Random string not found")

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
