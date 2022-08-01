from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas.schemas import PersonasSchema

router = APIRouter()


@router.get('/api/personas', response_model=list[PersonasSchema])
def addOrganizaciones(db:Session = Depends(get_db)):
    mypersonas = db.query(models.Personas).all()
    return mypersonas
 