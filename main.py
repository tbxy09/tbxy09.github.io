from pydantic import BaseModel, Field
from typing import List
from fastapi import FastAPI, File, UploadFile

class File(BaseModel):
    name: str = Field(..., description="Name of the upload file")
    content: str = Field(..., description="Content of the upload file")

class UploadFilesSchema(BaseModel):
    files: List[File] = Field(..., description="Array of upload files object with name and content")

from fastapi import FastAPI, HTTPException
from fastapi.responses import HTMLResponse

app = FastAPI()

# Global variables to store HTML and CSS
latest_html_code = "<p>No HTML code uploaded yet</p>"
latest_css_code = ""

@app.post("/uploadCode")
async def upload_files(files: UploadFilesSchema):
    # Process the uploaded files here
    # Example: Just returning the file names
    file_names = [file.name for file in files.files]
    return {"file_names": file_names}

@app.get("/")
async def read_root():
    combined_content = f"<style>{latest_css_code}</style>{latest_html_code}"
    return HTMLResponse(content=combined_content)

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)



