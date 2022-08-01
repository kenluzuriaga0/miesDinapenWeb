from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas.schemas import OrganizacionesSchema

router = APIRouter()


@router.get('/api/organizaciones', response_model=list[OrganizacionesSchema])
def addOrganizaciones(db:Session = Depends(get_db)):
    myorganizaciones = db.query(models.Organizaciones).all()
    return myorganizaciones
 