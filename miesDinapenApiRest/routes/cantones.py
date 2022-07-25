from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models

router = APIRouter()

@router.get('/api/cantones')
def addProvincias(db:Session = Depends(get_db)):
    mycantones = db.query(models.Cantones).all()
    return mycantones
