from typing import Literal, Union

from dotenv import load_dotenv
from pydantic import BaseModel, BaseSettings, Field

load_dotenv()


class TestConfig(BaseSettings):
    env: Literal["test"]
    db_host: str = Field(env="DB_HOST_TEST")
    db_password: str = Field(env="DB_PASSWORD_TEST")
    db_database: str = Field(env="DB_DATABASE_TEST")
    db_port: str = Field(env="DB_PORT_TEST")


class ProdConfig(BaseSettings):
    env: Literal["prod"]
    db_host: str = Field(env="DB_HOST_PROD")
    db_password: str = Field(env="DB_PASSWORD_PROD")
    db_database: str = Field(env="DB_DATABASE_PROD")
    db_port: str = Field(env="DB_PORT_PROD")


class DevConfig(BaseSettings):
    env: Literal["dev"]
    db_host: str = Field(env="DB_HOST_DEV")
    db_password: str = Field(env="DB_PASSWORD_DEV")
    db_database: str = Field(env="DB_DATABASE_DEV")
    db_port: str = Field(env="DB_PORT_DEV")


class Settings(BaseModel):
    config: Union[DevConfig, ProdConfig, TestConfig]
