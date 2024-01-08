from fastapi import APIRouter, HTTPException
from fastapi.responses import JSONResponse
from const import ROOT_URL_B
from screenshot_service import capture_screenshot_with_screenshotone, capture_screenshot
from file_management import move_to_static
from PIL import Image
import tempfile

router = APIRouter()

PROJECT_CODE_BASE_URL = "https://curly-funicular-7vv6xr4ggqvfvgv-8000.app.github.dev/c?projectID="

def is_code_url(url: str) -> bool:
    return url.startswith(PROJECT_CODE_BASE_URL)

@router.post('/screenshot')
async def take_screenshot(url: str):
    # Determine if the URL is a code URL
    code_url_flag = is_code_url(url)
    screenshot_path = await capture_screenshot_with_screenshotone(url, code_url_flag)
    screenshot_url = move_to_static(screenshot_path)
    return JSONResponse(content={'url': screenshot_url})

@router.post('/screenshot/sidebyside')
async def take_side_by_side_screenshot(project_id: str, url: str):
    # Determine if the URL is a code URL
    code_url = f'{ROOT_URL_B}/c?projectID={project_id}'
    code_screenshot_path = await capture_screenshot_with_screenshotone(code_url, True)
    target_screenshot_path = await capture_screenshot_with_screenshotone(url, False)
    code_image = Image.open(code_screenshot_path)
    target_image = Image.open(target_screenshot_path)
    combined_width = code_image.width + target_image.width
    combined_height = max(code_image.height, target_image.height)
    combined_image = Image.new('RGB', (combined_width, combined_height))
    combined_image.paste(code_image, (0, 0))
    combined_image.paste(target_image, (code_image.width, 0))
    combined_screenshot_path = tempfile.NamedTemporaryFile(suffix='.png', delete=False).name
    combined_image.save(combined_screenshot_path)
    combined_screenshot_url = move_to_static(combined_screenshot_path)
    return JSONResponse(content={'url': combined_screenshot_url})
