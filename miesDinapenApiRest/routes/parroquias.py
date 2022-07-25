from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models

router = APIRouter()

@router.get('/api/parroquias')
def addProvincias(db:Session = Depends(get_db)):
    myparroquias = db.query(models.Parroquias).all()
    return myparroquias
