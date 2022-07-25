from fastapi import APIRouter,Depends,status
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas.schemas import ProvinciaSchema

router = APIRouter()

@router.get('/api/provincias')
def addProvincias(db:Session = Depends(get_db)):
    myprovincias = db.query(models.Provincias).all()
    return myprovincias

@router.post('/api/provincias',status_code=status.HTTP_201_CREATED)
def addProvincias(provincia:ProvinciaSchema, db:Session = Depends(get_db)):
    new_provincia = models.Provincias(IDProvincia=provincia.idProvincia, Provincia=provincia.provincia,IDNacionalidad=provincia.idNacionalidad)
    db.add(new_provincia)
    db.commit()
    db.refresh(new_provincia)
    return new_provincia