from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas.schemas import TipoActividad

router = APIRouter()


@router.get('/api/listactividades', response_model=list[TipoActividad])
def addProvincias(db:Session = Depends(get_db)):
    myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
    return myTipoActividades
 