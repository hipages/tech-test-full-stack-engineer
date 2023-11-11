from app.db.core import Base
from sqlalchemy import VARCHAR, INTEGER, TEXT, TIMESTAMP, ForeignKey
from sqlalchemy.sql.schema import Column
from sqlalchemy.orm import Session
from datetime import datetime
from app.schemas.jobs_schema import Job

class Jobs(Base):
    __tablename__ = 'jobs'

    id = Column(INTEGER, primary_key=True, autoincrement=True)
    status = Column(VARCHAR(50), nullable=False, default="new")
    contact_name = Column(VARCHAR(255), nullable=False)
    contact_phone = Column(VARCHAR(255), nullable=False)
    contact_email = Column(VARCHAR(255), nullable=False)
    price = Column(INTEGER, nullable=False)
    description = Column(TEXT, nullable=False)
    created_at = Column(TIMESTAMP, nullable=False, default=datetime.now)
    updated_at = Column(TIMESTAMP, nullable=False, default="0000-00-00 00:00:00", onupdate=datetime.now)
    suburb_id = Column(INTEGER, ForeignKey("suburb.id"))
    category_id = Column(INTEGER, ForeignKey("category.id"))

    def to_job_schema(self) -> Job:
        return Job(
            id=self.id,
            status=self.status,
            contact_name=self.contact_name,
            contact_phone=self.contact_phone,
            contact_email=self.contact_email,
            price=self.price,
            description=self.description,
            created_at=self.created_at,
            updated_at=self.updated_at,
            suburb_id=self.suburb_id,
            category_id=self.category_id
        )


    @classmethod 
    def select_all_jobs(cls, db:Session):
        query = (
            db.query(Jobs).all()
        )

        return query
