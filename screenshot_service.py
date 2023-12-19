import httpx
import asyncio
import os
import tempfile
from selenium import webdriver
from selenium.webdriver.chrome.options import Options

# Asynchronous Screenshot Capture with ScreenshotOne API
async def capture_screenshot_with_screenshotone(url: str) -> str:
    async with httpx.AsyncClient() as client:
        params = {
            "access_key": os.getenv('SCREENSHOT_API_KEY'),
            'url': url,
            'format': 'png',
            'viewport_width': 1024,
            'viewport_height': 768,
        }

        api_endpoint = 'https://api.screenshotone.com/take'

        response = await client.get(api_endpoint, params=params)

        if response.status_code == 200:
            screenshot_path = tempfile.NamedTemporaryFile(suffix='.png', delete=False).name
            with open(screenshot_path, 'wb') as result_file:
                result_file.write(response.content)

            return screenshot_path
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
def capture_screenshot(url):
    driver = setup_driver()
    driver.get(url)
    total_height = driver.execute_script('return document.body.parentNode.scrollHeight')
    driver.set_window_size(1920, total_height)
    screenshot_path = tempfile.NamedTemporaryFile(suffix='.png', delete=False).name
    driver.save_screenshot(screenshot_path)
    driver.quit()
    return screenshot_path
