from app.db.core import Base
from sqlalchemy import Boolean, VARCHAR, DateTime, INTEGER, TEXT, TIMESTAMP, ForeignKey
from sqlalchemy.dialects.postgresql import UUID
from sqlalchemy.sql.schema import Column
from sqlalchemy.orm import Session, relationship
from datetime import datetime

class Suburb(Base):
    __tablename__ = 'suburb'

    id = Column(INTEGER, primary_key=True, autoincrement=True)
    name = Column(VARCHAR(255), nullable=False)
    postcode = Column(VARCHAR(4), nullable=False)
