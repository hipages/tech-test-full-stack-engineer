from typing import Optional
from pydantic import BaseModel
from datetime import datetime 

class Job(BaseModel):
    id: int 
    status: str 
    contact_name: str 
    contact_email: str 
    price: int 
    description: str
    created_at: datetime 
    updated_at: Optional[str] = None 
    suburb_id: int 
    category_id: int