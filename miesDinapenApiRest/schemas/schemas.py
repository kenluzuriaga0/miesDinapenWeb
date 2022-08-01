from datetime import date
from  pydantic import BaseModel
from  pydantic.schema import Optional

class ProvinciaSchema(BaseModel):
    IDProvincia:int
    Provincia:str
    IDNacionalidad:int
    class Config:
        orm_mode = True

class CantonesSchema(BaseModel):
    IDCanton:int
    Canton:str
    IDProvincia:int
    class Config:
        orm_mode = True

class TipoOrganizacion(BaseModel):
    IDTipoOrganizacion :int
    TipoOrganizacion:str
    class Config:
        orm_mode = True

class ParroquiasSchema(BaseModel):
    IDParroquia:int
    Parroquia:str
    IDCanton: int
    class Config:
        orm_mode = True

class OrganizacionesSchema(BaseModel):
    IDOrganizacion:int
    Organizacion:str
    Zona:int
    provincia:ProvinciaSchema
    canton:CantonesSchema
    parroquia:ParroquiasSchema
    tipo:TipoOrganizacion  #se usa el atributo que tiene el relationship()
    class Config:
        orm_mode = True

# Listas referenciadas en "Personas"

class NacionalidadesSchema(BaseModel):
    IDNacionalidad :int
    Nacionalidad :str
    class Config:
        orm_mode = True

class GenerosSchema(BaseModel):
    IDGenero :int
    Genero :str
    class Config:
        orm_mode = True

class EtniasSchema(BaseModel):
    IDEtnia :int
    Etnia :str
    class Config:
        orm_mode = True

class EstaturaSchema(BaseModel):
    IDEstatura :int
    Estatura :str
    class Config:
        orm_mode = True

class EstadoCivilSchema(BaseModel):
    IDEstadoCivil :int
    EstadoCivil :str
    class Config:
        orm_mode = True

class CabelloColorSchema(BaseModel):
    IDColorCabello :int
    ColorCabello :str
    class Config:
        orm_mode = True

class CabelloTipoSchema(BaseModel):
    IDCabelloTipo :int
    CabelloTipo :str
    class Config:
        orm_mode = True

class CondicionMedicaSchema(BaseModel):
    IDCondicionMedica :int
    CondicionMedica :str
    class Config:
        orm_mode = True

class ContexturasSchema(BaseModel):
    IDContextura :int
    Contextura :str
    class Config:
        orm_mode = True

class DiscapacidadSchema(BaseModel):
    IDDiscapacidad :int
    Discapacidad :str
    class Config:
        orm_mode = True

class PersonasSchema(BaseModel):
    IDPersona:int
    Apellido1:str
    Apellido2: Optional[str]
    Nombre1: str
    Nombre2: Optional[str]
    Cedula: Optional[str]
    FechaNacim: Optional[date]
    nacionalidad: Optional[NacionalidadesSchema] #Permite nulos
    provincia:Optional[ProvinciaSchema]
    canton:Optional[CantonesSchema]
    parroquia:Optional[ParroquiasSchema]
    genero:Optional[GenerosSchema]
    etnia:Optional[EtniasSchema]
    estadoCivil:Optional[EstadoCivilSchema]
    cabelloColor:Optional[CabelloColorSchema]
    cabelloTipo:Optional[CabelloTipoSchema]
    contextura:Optional[ContexturasSchema]
    estatura:Optional[EstaturaSchema]
    condicionMedica:Optional[CondicionMedicaSchema]
    discapacidad:Optional[DiscapacidadSchema]
    DiscapacidadNivel:Optional[str]
    IngresosAprox:Optional[int]
    class Config:
        orm_mode = True
