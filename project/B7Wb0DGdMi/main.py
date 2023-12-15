from fastapi import FastAPI, HTTPException
import requests

app = FastAPI()

@app.get("/repo/{owner}/{repo}/{path:path}")
async def read_repo(owner: str, repo: str, path: str = ''):
    github_api_url = f"https://api.github.com/repos/{owner}/{repo}/contents/{path}"
    response = requests.get(github_api_url)

    if response.status_code == 200:
        return response.json()
    else:
        raise HTTPException(status_code=response.status_code, detail="Error fetching data from GitHub")