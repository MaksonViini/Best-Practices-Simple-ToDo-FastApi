from motor.motor_asyncio import AsyncIOMotorClient
from .config import Settings


settings = Settings(config={'env': 'dev'}).config

DB_URL = f"""mongodb://root:{settings.db_password}
@{settings.db_host}:{settings.db_port}/"""

client = AsyncIOMotorClient(DB_URL)
database = client['teste_data']
collection = database['data_health']