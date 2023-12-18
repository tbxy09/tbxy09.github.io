from fastapi import FastAPI
from backend.routes.file_routes import router as file_router
from backend.routes.screenshot_routes import router as screenshot_router
from backend.routes.project_serving_routes import router as project_serving_router
from backend.routes.privacy_route import router as privacy_router
from backend.routes.github_repo_route import router as github_repo_router

app = FastAPI()
app.include_router(file_router)
app.include_router(screenshot_router)
app.include_router(project_serving_router)
app.include_router(privacy_router)
app.include_router(github_repo_router)

if __name__ == '__main__':
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
