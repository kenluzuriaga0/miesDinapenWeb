from sqlalchemy import Column, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.sql.sqltypes import Integer, String
from config.db import Base
from routes import organizaciones

class Provincias(Base):
    __tablename__ = "ListaIDProvincias"
    IDProvincia = Column(Integer, primary_key=True,index=True)
    Provincia = Column(String(50))
    IDNacionalidad = Column(Integer)
    cantones =  relationship('Cantones')

class Cantones(Base):
    __tablename__ = "ListaIDCantones"
    IDCanton = Column(Integer, primary_key=True,index=True)
    Canton = Column(String(50))
    IDProvincia = Column(Integer, ForeignKey("ListaIDProvincias.IDProvincia"))

class Parroquias(Base):
    __tablename__ = "ListaIDParroquias"
    IDParroquia = Column(Integer, primary_key=True,index=True)
    Parroquia = Column(String(100))
    IDCanton = Column(Integer, ForeignKey("ListaIDCantones.IDCanton"))


class Organizaciones(Base):
    __tablename__ = "ListaIDOrganizacionesCoope"
    IDOrganizacion = Column(Integer, primary_key=True,index=True)
    Organizacion = Column(String(100), nullable=False)
    Zona = Column(Integer)
    IDProvincia = Column(Integer, ForeignKey("ListaIDProvincias.IDProvincia"))
    IDCanton = Column(Integer, ForeignKey("ListaIDCantones.IDCanton"))
    IDParroquia = Column(Integer, ForeignKey("ListaIDParroquias.IDParroquia"))
    IDTipoOrganizacion = Column(Integer, ForeignKey("ListaIDTipoOrganizacion.IDTipoOrganizacion"))
    tipo = relationship("TipoOrganizacion",back_populates="organizaciones")

class TipoOrganizacion(Base):
    __tablename__ = "ListaIDTipoOrganizacion"
    IDTipoOrganizacion = Column(Integer, primary_key=True,index=True)
    TipoOrganizacion = Column(String(100))
    organizaciones = relationship("Organizaciones",back_populates="tipo")
