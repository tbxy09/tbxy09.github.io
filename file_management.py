import os
from pathlib import Path
import random
import shutil
import string
from typing import List
from pydantic import BaseModel, Field
from const import ROOT_URL_B

class FileSchema(BaseModel):
    path: str = Field(..., description="path of the file")
    content: str = Field(..., description="Content of the file")


class FileEdit(BaseModel):
    path: str = Field(...,
                      description="path of the file to be edited")
    new_content: str = Field(..., description="New content of the file")


class ArrayEditSchema(BaseModel):
    files: List[FileEdit] = Field(
        ..., description="Array of edited files object with relative path and new_content")


class ArrayFileSchema(BaseModel):
    files: List[FileSchema] = Field(
        ..., description="Array of upload files object with relative path and content")


# Function to move a file to the static directory and return its URL
def move_to_static(screenshot_path, static_dir='static'):
    file_name = os.path.basename(screenshot_path)
    static_path = os.path.join(static_dir, file_name)
    shutil.move(screenshot_path, static_path)
    return f'{ROOT_URL_B}/{file_name}'

def copy_to_static(screenshot_path, static_dir='static'):
    file_name = os.path.basename(screenshot_path)
    static_path = os.path.join(static_dir, file_name)
    shutil.copy(screenshot_path, static_path)
    return f'{ROOT_URL_B}/{static_dir}/{file_name}'

# add a query file structure endpoint
def print_tree(directory, file_path_indent="", sub_dirs_indent=""):
    result = f"{file_path_indent}{Path(directory).name}\n"
    # result = ""

    for path in sorted(directory.iterdir()):
        if path.is_file():
            result += f"{sub_dirs_indent}    ├── {path.name}\n"
        elif path.is_dir():
            result += print_tree(path, f"{sub_dirs_indent}    ├── ",
                                 f"{sub_dirs_indent}    │   ")

    return result

def generate_random_string(length=10):
    return ''.join(random.choices(string.ascii_letters + string.digits,
                                  k=length))
# Additional file management functions can be added here as needed

