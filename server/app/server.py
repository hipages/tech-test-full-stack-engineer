from fastapi import FastAPI, APIRouter
from fastapi.middleware.cors import CORSMiddleware
from app.core import config
from app.routers.jobs_router import jobs_api

app = FastAPI(title=config.PROJECT_NAME, version=config.VERSION)
app.add_middleware(
        CORSMiddleware,
        allow_origins=["*"],
        allow_credentials=True, 
        allow_methods=["*"],
        allow_headers=["*"]
    )

app.include_router(jobs_api, prefix="/api", tags=["jobs_api"])