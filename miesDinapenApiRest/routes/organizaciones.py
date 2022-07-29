from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models.models import Organizaciones
from schemas.schemas import Organizaciones

router = APIRouter()


@router.get('/api/organizaciones', response_model=list[Organizaciones])
def addOrganizaciones(db:Session = Depends(get_db)):
    myorganizaciones:Organizaciones = db.query(Organizaciones).all()
    return myorganizaciones
 