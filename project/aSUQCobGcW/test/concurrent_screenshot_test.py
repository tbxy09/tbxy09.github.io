import asyncio
import sys
from pathlib import Path
# Append the parent directory of the current file to sys.path
sys.path.append(str(Path(__file__).parent.parent / 'backend'))

from screenshot_service import capture_screenshot_with_screenshotone, capture_screenshot

async def test_screenshot(url):
    # Call the screenshot function
    screenshot_path = await capture_screenshot_with_screenshotone(url)
    # screenshot_path = capture_screenshot(url)
    print(f"Screenshot for {url} saved at {screenshot_path}")

async def main():
    # List of URLs to take screenshots of
    urls = ["https://replit.com/@tbxy09","https://aihomedesign.com/","https://www.canva.com/","https://www.houzz.com/"]
    # urls = ["https://aihomedesign.com"]

    # Create tasks for each URL
    tasks = [asyncio.create_task(test_screenshot(url)) for url in urls]

    # Wait for all tasks to complete
    await asyncio.gather(*tasks)

# Run the test case
asyncio.run(main())