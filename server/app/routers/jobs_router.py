
from fastapi import APIRouter, Depends
from sqlalchemy.orm import Session
from app.db.core import get_db
from app.schemas.jobs_schema import Job
from app.controllers import jobs_controller
from typing import List


jobs_api = APIRouter()

@jobs_api.get('/jobs', name="jobs: get-all-jobs", response_model=List[Job])
def get_all_jobs(db: Session = Depends(get_db)) -> List[Job]:
    return jobs_controller.get_all_jobs(db)
