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
    organizaciones = relationship("Organizaciones",back_populates="provincia")

class Cantones(Base):
    __tablename__ = "ListaIDCantones"
    IDCanton = Column(Integer, primary_key=True,index=True)
    Canton = Column(String(50))
    IDProvincia = Column(Integer, ForeignKey("ListaIDProvincias.IDProvincia"))
    organizaciones = relationship("Organizaciones",back_populates="canton")

class Parroquias(Base):
    __tablename__ = "ListaIDParroquias"
    IDParroquia = Column(Integer, primary_key=True,index=True)
    Parroquia = Column(String(100))
    IDCanton = Column(Integer, ForeignKey("ListaIDCantones.IDCanton"))
    organizaciones = relationship("Organizaciones",back_populates="parroquia")


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
    parroquia = relationship("Parroquias",back_populates="organizaciones")
    canton = relationship("Cantones",back_populates="organizaciones")
    provincia = relationship("Provincias",back_populates="organizaciones")

class TipoOrganizacion(Base):
    __tablename__ = "ListaIDTipoOrganizacion"
    IDTipoOrganizacion = Column(Integer, primary_key=True,index=True)
    TipoOrganizacion = Column(String(100))
    organizaciones = relationship("Organizaciones",back_populates="tipo")

# FIN de lugares

# INICIO de LISTAS PROGRAMADAS

class TipoActividad(Base):
    __tablename__ = "ListaIDTipoActividad"
    IDTipoActividad = Column(Integer, primary_key=True,index=True)
    TipoActividad = Column(String(100))

class CabelloColor(Base):
    __tablename__ = "ListaIDCabelloColor"
    IDColorCabello = Column(Integer, primary_key=True,index=True)
    ColorCabello = Column(String(20))

class CabelloTipo(Base):
    __tablename__ = "ListaIDCabelloTipo"
    IDCabelloTipo = Column(Integer, primary_key=True,index=True)
    CabelloTipo = Column(String(20))

class Contexturas(Base):
    __tablename__ = "ListaIDContexturas"
    IDContextura = Column(Integer, primary_key=True,index=True)
    Contextura = Column(String(100))

class CondicionMedica(Base):
    __tablename__ = "ListaIDCondicionMedica"
    IDCondicionMedica = Column(Integer, primary_key=True,index=True)
    CondicionMedica = Column(String(100))

class Etnias(Base):
    __tablename__ = "ListaIDEtnias"
    IDEtnia = Column(Integer, primary_key=True,index=True)
    Etnia = Column(String(20))

class Estatura(Base):
    __tablename__ = "ListaIDEstatura"
    IDEstatura = Column(Integer, primary_key=True,index=True)
    Estatura = Column(String(100))

class Estudio(Base):
    __tablename__ = "ListaIDEstudio"
    IDEstudio = Column(Integer, primary_key=True,index=True)
    NivelEstudio = Column(String(100))

class Nacionalidades(Base):
    __tablename__ = "ListaIDNacionalidades"
    IDNacionalidad = Column(Integer, primary_key=True,index=True)
    Nacionalidad = Column(String(100))

class Generos(Base):
    __tablename__ = "ListaIDGeneros"
    IDGenero = Column(Integer, primary_key=True,index=True)
    Genero = Column(String(100))

class Exposiciones(Base):
    __tablename__ = "ListaIDExposiciones"
    IDExposicion = Column(Integer, primary_key=True,index=True)
    Exposicion = Column(String(100))

class Condiciones(Base):
    __tablename__ = "ListaIDCondiciones"
    IDCondicion = Column(Integer, primary_key=True,index=True)
    Condicion = Column(String(100))

class Circunstancias(Base):
    __tablename__ = "ListaIDCircunstancias"
    IDCircunstancia = Column(Integer, primary_key=True,index=True)
    Circunstancia = Column(String(100))


class Discapacidad(Base):
    __tablename__ = "ListaIDDiscapacidad"
    IDDiscapacidad = Column(Integer, primary_key=True,index=True)
    Discapacidad = Column(String(100))


class EstadoCivil(Base):
    __tablename__ = "ListaIDEstadoCivil"
    IDEstadoCivil = Column(Integer, primary_key=True,index=True)
    EstadoCivil = Column(String(100))


class Parentezcos(Base):
    __tablename__ = "ListaIDParentezcos"
    IDParentezco = Column(Integer, primary_key=True,index=True)
    Parentezco = Column(String(100))
    ParenGradoConsan = Column(Integer)

class Instituciones(Base):
    __tablename__ = "ListaIDInstituciones"
    IDInstitucion = Column(Integer, primary_key=True,index=True)
    InstiNombre = Column(String(100))
    InstiDireccion = Column(String(100))
    InstiTelefono = Column(String(100))
