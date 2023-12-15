from flask import Flask, request, send_file
import requests
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import time

app = Flask(__name__)

@app.route('/screenshot', methods=['POST'])
def take_screenshot():
    url = request.json['url']
    options = Options()
    options.headless = True
    driver = webdriver.Chrome(options=options)
    driver.get(url)
    time.sleep(2)  # Allow time for page to load
    screenshot_path = 'screenshot.png'
    driver.save_screenshot(screenshot_path)
    driver.quit()
    return send_file(screenshot_path, mimetype='image/png')

if __name__ == '__main__':
    app.run(debug=True)