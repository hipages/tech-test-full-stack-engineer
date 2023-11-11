from starlette.config import Config
from starlette.datastructures import Secret 

config = Config(".env")

PROJECT_NAME = "hipages-ui"
VERSION = "1.0.0"
API_PREFIX = "/api"

SECRET_KEY = config("SECRET_KEY", cast=Secret, default="CHANGEME")

MYSQL_USER = config("MYSQL_USER", cast=str)
MYSQL_PASSWORD = config("MYSQL_PASSWORD", cast=Secret)
MYSQL_SERVER = config("MYSQL_SERVER", cast=str, default="db")
MYSQL_PORT = config("MYSQL_PORT", cast=str, default="3306")
MYSQL_DB = config("MYSQL_DB", cast=str)

DATABASE_URL = config(
  "DATABASE_URL",
  default=f"mysql://{MYSQL_USER}:{MYSQL_PASSWORD}@{MYSQL_SERVER}:{MYSQL_PORT}/{MYSQL_DB}"
)

TEST_DATABASE_URL = config(
    "TEST_DATABASE_URL",
    default=f"mysql://{MYSQL_USER}:{MYSQL_PASSWORD}@{MYSQL_SERVER}:{MYSQL_PORT}/{MYSQL_DB}_test"
)