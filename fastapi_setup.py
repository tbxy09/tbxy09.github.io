# FastAPI Setup and CORS Middleware
from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from const import ROOT_URL_F

app = FastAPI()
default_origins = [ROOT_URL_F]
app.add_middleware(
    CORSMiddleware,
    allow_origins=default_origins,
    allow_credentials=True,
    allow_methods=['*'],
    allow_headers=['*'],
)

# Additional initialization code can be added here
