from  pydantic import BaseModel

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

class Parroquias(BaseModel):
    IDParroquia:int
    Parroquia:str
    IDCanton: int
    class Config:
        orm_mode = True

class Organizaciones(BaseModel):
    IDOrganizacion:int
    Organizacion:str
    Zona:int
    provincia:ProvinciaSchema
    canton:CantonesSchema
    parroquia:Parroquias
    tipo:TipoOrganizacion  #se usa el atributo que tiene el relationship()
    class Config:
        orm_mode = True


class TipoActividad(BaseModel):
    IDTipoActividad:int
    TipoActividad:str
    class Config:
        orm_mode = True
