from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas.schemas import CantonesSchema

router = APIRouter()

@router.get('/api/cantones', response_model=list[CantonesSchema])
def addCantones(db:Session = Depends(get_db)):
    mycantones = db.query(models.Cantones).all()
    return mycantones
