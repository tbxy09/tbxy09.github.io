import httpx
import asyncio
import os
import tempfile
from hashlib import md5
from pathlib import Path
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

# Cache directory
cache_dir = Path("screenshot_cache")
cache_dir.mkdir(parents=True, exist_ok=True)

# Function to normalize URL (remove trailing slash)
def normalize_url(url: str) -> str:
    return url.rstrip('/')

# Function to generate a cache key based on URL
def generate_cache_key(url: str) -> str:
    normalized_url = normalize_url(url)
    return md5(normalized_url.encode()).hexdigest()

# Asynchronous Screenshot Capture with ScreenshotOne API
async def capture_screenshot_with_screenshotone(url: str, is_code_url: bool = False) -> str:
    cache_key = generate_cache_key(url)
    cached_path = cache_dir / f"{cache_key}.png"

    # Skip cache if it's a code URL from the current project
    if not is_code_url and cached_path.is_file(): 
        return str(cached_path)

    async with httpx.AsyncClient(timeout=60) as client:
        params = {
            "access_key": os.getenv('SCREENSHOT_API_KEY'),
            'url': url,
            'viewport_width': 1024,
            'viewport_height': 768,
            'format': 'png',
            "full_page": "true",
            "device_scale_factor": "1"
        }

        api_endpoint = 'https://api.screenshotone.com/take'
        response = await client.get(api_endpoint, params=params)

        if response.status_code == 200:
            with open(cached_path, 'wb') as result_file:
                result_file.write(response.content)
            return str(cached_path)
        else:
            raise Exception(f'Failed to capture screenshot: {response.status_code}')

# Function to set up the headless Chrome driver
def setup_driver():
    options = Options()
    options.add_argument('--headless')
    options.add_argument('--no-sandbox')
    options.add_argument('--disable-dev-shm-usage')
    options.headless = True
    options.add_argument('--disable-gpu')
    options.add_argument('--hide-scrollbars')
    options.add_argument('--enable-logging')
    options.add_argument('--window-size=1920,1080')
    driver = webdriver.Chrome(options=options)
    return driver

# Function to take a screenshot with Selenium
async def capture_screenshot(url):
    driver = setup_driver()
    driver.get(url)
    total_height = driver.execute_script('return document.body.parentNode.scrollHeight')
    driver.set_window_size(1920, total_height)
    screenshot_path = tempfile.NamedTemporaryFile(suffix='.png', delete=False).name
    driver.save_screenshot(screenshot_path)
    driver.quit()
    return screenshot_path
