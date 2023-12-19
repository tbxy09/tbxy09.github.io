from fastapi.testclient import TestClient
import pytest
from main import app
from pathlib import Path
from pydantic import BaseModel
from typing import List
import os

# Define the ArrayEditSchema and FileEditSchema for testing
class FileEditSchema(BaseModel):
    path: str
    new_content: str

class ArrayEditSchema(BaseModel):
    files: List[FileEditSchema]

# rm test_project if it exists
# if Path("project/test_project").exists():
    # shutil.rmtree("project/test_project")

client = TestClient(app, base_url="https://curly-funicular-7vv6xr4ggqvfvgv-8000.app.github.dev")

def test_privacy_policy():
    response = client.get("/privacy")
    assert response.status_code == 200
    assert "<title>Privacy Policy</title>" in response.text

projectID="10TfQCdYvI"
project_dir = os.path.join('project', projectID)

@pytest.mark.skipif(os.path.isdir(project_dir), reason="Project already exists")
def test_create_project():
    response = client.post("/newworkspace", json={
        'files': [
            {"path": "test1/test_file1.txt", "content": "Test content 1"},
            {"path": "test2/test_file2.txt", "content": "Test content 2"}
        ]})
    assert response.status_code == 200
    assert "uniqueid" in response.json()["message"]
    global projectID
    projectID = response.json()["message"].split(" ")[-1]
    print(response.json()["message"])
    # assert Path("project") / response.json()["message"].split(" ")[-1] / "index.html"
# # Assuming listfiles and readfiles are GET methods with routes "/listfiles" and "/readfiles/{filename}"
def test_listfiles():
    response = client.get(f"/listfiles/{projectID}")
    assert response.status_code == 200
    print(response.json())
    # Add more assertions based on the expected response

def test_readfiles():
    filename = "test1/test_file1.txt, test2/test_file2.txt"
    response = client.get(f"/readfiles/{projectID}",params={"filelist": filename})
    assert response.status_code == 200
    assert response.json() == [{"path": f"project/{projectID}/test1/test_file1.txt", "content": "Test content 1"}, {"path": f"project/{projectID}/test2/test_file2.txt", "content": "Test content 2"}]
    # Add more assertions based on the expected response

def test_edit_files():
    # Test creating new files
    response = client.post(f"/editFiles/{projectID}", json={
        "files": [
            {"path": "test1/test_file1.txt", "new_content": "Test New content 1"},
            {"path": "test2/test_file2.txt", "new_content": "Test New content 2"}
        ]
    })
    print(response.json())
    assert response.status_code == 200
    assert Path(f"project/{projectID}/test1/test_file1.txt").read_text() == "Test New content 1"
    assert Path(f"project/{projectID}/test2/test_file2.txt").read_text() == "Test New content 2"
    response = client.post(f"/editFiles/{projectID}", json={
        "files": [
            {"path": "test1/test_file1.txt", "new_content": "Test content 1"},
            {"path": "test2/test_file2.txt", "new_content": "Test content 2"}
        ]
    })
    # assert response.json() == {'message': 'Files edited successfully: test1/test_file1.txt:\n--- \n\n+++ \n\n@@ -1 +1 @@\n\n-Test content 1\n+Test New content 1,test2/test_file2.txt:\n--- \n\n+++ \n\n@@ -1 +1 @@\n\n-Test content 2\n+Test New content 2'}

    # # Test editing existing files
    # response = client.post("/edit_files/{projectID}", json={
    #     "files": [
    #         {"path": "test_file1.txt", "new_content": "New content 1"},
    #         {"path": "test_file2.txt", "new_content": "New content 2"}
    #     ]
    # })
    # assert response.status_code == 200
    # assert response.json() == {"message": "Files edited successfully: test_file1.txt,test_file2.txt"}
    # assert Path(f"project/{projectID}/test_file1.txt").read_text() == "New content 1"
    # assert Path(f"project/{projectID}/test_file2.txt").read_text() == "New content 2"

    # Test with non-existing project
    # with pytest.raises(HTTPException):
    #     response = client.post("/edit_files/non_existing_project", json={
    #         "files": [
    #             {"path": "test_file1.txt", "new_content": "Test content 1"},
    #             {"path": "test_file2.txt", "new_content": "Test content 2"}
    #         ]
    #     })