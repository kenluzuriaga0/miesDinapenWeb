from  pydantic import BaseModel

class ProvinciaSchema(BaseModel):
    idProvincia:int
    provincia:str
    idNacionalidad:int


class TipoOrganizacion(BaseModel):
    IDTipoOrganizacion :int
    TipoOrganizacion:str
    class Config:
        orm_mode = True

class Organizaciones(BaseModel):
    IDOrganizacion:int
    Organizacion:str
    Zona:int
    IDProvincia:int
    IDCanton:int
    IDParroquia:int
    tipo:TipoOrganizacion  #se usa el atributo que tiene el relationship()
    class Config:
        orm_mode = True
