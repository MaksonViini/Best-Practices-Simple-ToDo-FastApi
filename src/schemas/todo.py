from pydantic import BaseModel


class RecordEntity(BaseModel):
    title: str
    description: str
    status: str

    class Config:
        orm_mode = True
