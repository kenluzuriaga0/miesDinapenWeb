from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas.schemas import Parroquias

router = APIRouter()

@router.get('/api/parroquias', response_model=list[Parroquias])
def addProvincias(db:Session = Depends(get_db)):
    myparroquias = db.query(models.Parroquias).all()
    return myparroquias
