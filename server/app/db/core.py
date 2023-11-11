import logging
from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import sessionmaker
from app.core.config import DATABASE_URL

logger = logging.getLogger(__name__)

engine = create_engine(str(DATABASE_URL))
print("db", str(DATABASE_URL))
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()

def get_db():
    db = SessionLocal()
    try:
        yield db 
    except Exception as e:
        logger.warn("--- DB DISCONNECTED ---")
        logger.warn(e)
        logger.warn("--- DB DISCONNECTED ---")
        db.close()
