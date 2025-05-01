from .crud import __init__ as crud
from .core.database import engine, SessionLocal, Base
from .models import __init__ as models
from .schemas import __init__ as schemas
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Olá, Mundo! eu sou projeto !__TEMPLATE_NAME__!."}
