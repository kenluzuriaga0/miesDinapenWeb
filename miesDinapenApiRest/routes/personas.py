from fastapi import APIRouter, Depends,status
from config.db import get_db
from sqlalchemy.orm import Session
from models.models import Personas
from schemas.schemas import PersonasSchema

router = APIRouter()


@router.get('/api/personas', response_model=list[PersonasSchema])
def getAllPersonas(db: Session = Depends(get_db)):
    mypersonas = db.query(Personas).all()
    return mypersonas


'''
 
@router.get('/api/personas/{id_persona}', response_model=PersonasSchema)
def getPersonasById(id_persona:int, db:Session = Depends(get_db)):
    print(id_persona)
    mypersonas = db.query(Personas).get(id_persona) # where id==param
    return mypersonas
'''
# Filtra por apellido y nombre


@router.get('/api/personas/', response_model=list[PersonasSchema])
def getPersonasQuery(apellido1: str = None, nombre1: str = None, db: Session = Depends(get_db)):
    if apellido1 is None and nombre1 is not None:
        return db.query(Personas).filter(Personas.Nombre1.like(f'%{nombre1}%')).all()
    elif apellido1 is not None and nombre1 is None:
        return db.query(Personas).filter(Personas.Apellido1.like(f'%{apellido1}%')).all()
    else:
        return db.query(Personas).filter(Personas.Apellido1 == apellido1, Personas.Nombre1 == nombre1).all()

@router.get('/api/personas/{cedula}', response_model=list[PersonasSchema])
def getPersonasByCedula(cedula: str, db: Session = Depends(get_db)):
    if cedula is not None:
        return db.query(Personas).filter(Personas.Cedula == cedula).all()

@router.post('/api/personas/',status_code=status.HTTP_201_CREATED)
def addPersona(p:PersonasSchema,db:Session = Depends(get_db)):
    new_persona = Personas(
    Apellido1=p.Apellido1,
    Apellido2=p.Apellido2,
    Nombre1=p.Nombre1,
    Nombre2=p.Nombre2,
    Cedula=p.Cedula,
    IDGenero=p.genero.IDGenero,
    NacIDNacionalidad=p.nacionalidad.IDNacionalidad,
    FechaNacim=p.FechaNacim
    )
    db.add(new_persona)
    db.commit()
    db.refresh(new_persona)
    return new_persona