from sqlalchemy.orm import Session
from app.schemas.jobs_schema import Job
from app.models.jobs_model import Jobs 
from typing import List

def get_all_jobs(db: Session) -> List[Job]:
    jobs_query_response = Jobs.select_all_jobs(db)

    all_jobs = list(map(lambda x: x.to_job_schema(), jobs_query_response))

    return all_jobs

