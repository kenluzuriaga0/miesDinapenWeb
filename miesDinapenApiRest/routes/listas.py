from enum import Enum
from fastapi import APIRouter,Depends
from config.db import get_db
from sqlalchemy.orm import Session
from models import models

router = APIRouter()

class ListasP(str, Enum):
    actividadTipo = "act"
    cabelloColor = "cac"
    cabelloTipo = "cat"
    circunstancia = "cir"
    condicionmedica = "com"
    condicion = "con"
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

@router.get('/api/listasprogramadas/{lista_id}')
def addListasProgramadas(lista_id:ListasP,db:Session = Depends(get_db)): #parametro es un Enum

    if lista_id == ListasP.actividadTipo:
        return db.query(models.TipoActividad).all()

    elif lista_id == ListasP.cabelloColor:
        return db.query(models.CabelloColor).all()
 
    elif lista_id == ListasP.cabelloTipo:
       return db.query(models.CabelloTipo).all()

    elif lista_id == ListasP.circunstancia:
        return db.query(models.Circunstancias).all()

    elif lista_id == ListasP.condicionmedica:
        return db.query(models.CondicionMedica).all()

    elif lista_id == ListasP.condicion:
        return db.query(models.Condiciones).all()

    elif lista_id == ListasP.contextura:
        return db.query(models.Contexturas).all()

    elif lista_id == ListasP.discapacidad:
        return db.query(models.Discapacidad).all()

    elif lista_id == ListasP.estadocivil:
        return db.query(models.EstadoCivil).all()

    elif lista_id == ListasP.estatura:
        return db.query(models.Estatura).all()

    elif lista_id == ListasP.estudio:
        return db.query(models.Estudio).all()

    elif lista_id == ListasP.etnia:
        return db.query(models.Etnias).all()

    elif lista_id == ListasP.exposicion:
        return db.query(models.Exposiciones).all()

    elif lista_id == ListasP.genero:
        return db.query(models.Generos).all()

    elif lista_id == ListasP.instituciones:
        return db.query(models.Instituciones).all()

    elif lista_id == ListasP.nacionalidad:
        return db.query(models.Nacionalidades).all()

    elif lista_id == ListasP.parentesco:
        return db.query(models.Parentezcos).all()
