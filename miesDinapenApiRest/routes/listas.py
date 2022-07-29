from enum import Enum
from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models
from schemas.schemas import TipoActividad

router = APIRouter()

class ListasP(str, Enum):
    actividadTipo = "act"
    cabelloColor = "cac"
    cabelloTipo = "cat"
    circunstancia = "cir"
    condicionmedica = "con"
    condicion = "cnd"
    contextura = "cnt"
    discapacidad = "dis"
    estadocivil = "eci"
    estatura = "eta"
    estudio = "est"
    etnia = "etn"
    exposicion  = "exp"
    genero = "gen"
    instituciones = "ins"
    nacionalidad = "nac"
    parentesco = "par"


@router.get('/api/listasprogramadas/{lista_id}', response_model=list[TipoActividad])
def addListasProgramadas(lista_id:ListasP,db:Session = Depends(get_db)):

    if lista_id == ListasP.actividadTipo:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.cabelloColor:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades
 
    elif lista_id == ListasP.cabelloTipo:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.circunstancia:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades    

    elif lista_id == ListasP.condicionmedica:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.condicion:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.contextura:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.discapacidad:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.estadocivil:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.estatura:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.estudio:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.etnia:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.exposicion:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.genero:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.instituciones:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.nacionalidad:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades

    elif lista_id == ListasP.parentesco:
        myTipoActividades:models.TipoActividad = db.query(models.TipoActividad).all()
        return myTipoActividades  