from fastapi import APIRouter
from starlette.responses import RedirectResponse

router = APIRouter(
    prefix="/api",
    responses={404: {"description": "Not found"}},
)


class Initial:
    @router.get("/")
    async def main():
        return RedirectResponse(url="/docs/")

    @router.get("/v1/health-checker")
    async def hello_world():
        return {"Ping": "Pong"}, 200


class TodoRecord:
    @router.get("/v1/get-record")
    async def get_todo():
        return 1, 200

    @router.get("/v1/get-record{id}")
    async def get_todo_by_id(id: int):
        return 1, 200

    @router.get("/v1/create-record{id}")
    async def create_todo(id: int):
        return 1, 200
