from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas import schemas
router = APIRouter()


@router.get('/api/organizaciones', response_model=list[schemas.Organizaciones])
def addProvincias(db:Session = Depends(get_db)):
    myorganizaciones:models.Organizaciones = db.query(models.Organizaciones).all()
    return myorganizaciones
 