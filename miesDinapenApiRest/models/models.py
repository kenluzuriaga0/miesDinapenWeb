from sqlalchemy import Column, ForeignKey
from sqlalchemy.orm import relationship
from sqlalchemy.sql.sqltypes import Integer, String, Date
from config.db import Base
from routes import organizaciones

class Provincias(Base):
    __tablename__ = "ListaIDProvincias"
    IDProvincia = Column(Integer, primary_key=True,index=True)
    Provincia = Column(String(50))
    IDNacionalidad = Column(Integer)
    organizaciones = relationship("Organizaciones",back_populates="provincia")
    personas = relationship("Personas",back_populates="provincia")

class Cantones(Base):
    __tablename__ = "ListaIDCantones"
    IDCanton = Column(Integer, primary_key=True,index=True)
    Canton = Column(String(50))
    IDProvincia = Column(Integer, ForeignKey("ListaIDProvincias.IDProvincia"))
    organizaciones = relationship("Organizaciones",back_populates="canton")
    personas = relationship("Personas",back_populates="canton")


class Parroquias(Base):
    __tablename__ = "ListaIDParroquias"
    IDParroquia = Column(Integer, primary_key=True,index=True)
    Parroquia = Column(String(100))
    IDCanton = Column(Integer, ForeignKey("ListaIDCantones.IDCanton"))
    organizaciones = relationship("Organizaciones",back_populates="parroquia")
    personas = relationship("Personas",back_populates="parroquia")


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
    personas = relationship("Personas",back_populates="cabelloColor")


class CabelloTipo(Base):
    __tablename__ = "ListaIDCabelloTipo"
    IDCabelloTipo = Column(Integer, primary_key=True,index=True)
    CabelloTipo = Column(String(20))
    personas = relationship("Personas",back_populates="cabelloTipo")

class Contexturas(Base):
    __tablename__ = "ListaIDContexturas"
    IDContextura = Column(Integer, primary_key=True,index=True)
    Contextura = Column(String(100))
    personas = relationship("Personas",back_populates="contextura")

class CondicionMedica(Base):
    __tablename__ = "ListaIDCondicionMedica"
    IDCondicionMedica = Column(Integer, primary_key=True,index=True)
    CondicionMedica = Column(String(100))
    personas = relationship("Personas",back_populates="condicionMedica")

class Etnias(Base):
    __tablename__ = "ListaIDEtnias"
    IDEtnia = Column(Integer, primary_key=True,index=True)
    Etnia = Column(String(20))
    personas = relationship("Personas",back_populates="etnia")

class Estatura(Base):
    __tablename__ = "ListaIDEstatura"
    IDEstatura = Column(Integer, primary_key=True,index=True)
    Estatura = Column(String(100))
    personas = relationship("Personas",back_populates="estatura")

class Estudio(Base):
    __tablename__ = "ListaIDEstudio"
    IDEstudio = Column(Integer, primary_key=True,index=True)
    NivelEstudio = Column(String(100))

class Nacionalidades(Base):
    __tablename__ = "ListaIDNacionalidades"
    IDNacionalidad = Column(Integer, primary_key=True,index=True)
    Nacionalidad = Column(String(100),nullable=True)
    personas = relationship("Personas",back_populates="nacionalidad")

class Generos(Base):
    __tablename__ = "ListaIDGeneros"
    IDGenero = Column(Integer, primary_key=True,index=True)
    Genero = Column(String(100))
    personas = relationship("Personas",back_populates="genero")

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
    personas = relationship("Personas",back_populates="discapacidad")


class EstadoCivil(Base):
    __tablename__ = "ListaIDEstadoCivil"
    IDEstadoCivil = Column(Integer, primary_key=True,index=True)
    EstadoCivil = Column(String(100))
    personas = relationship("Personas",back_populates="estadoCivil")


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


class Personas(Base):
    __tablename__ = "ListaIDPersonas"
    IDPersona = Column(Integer, primary_key=True,index=True,)
    Apellido1= Column(String(50))
    Apellido2= Column(String(50))
    Nombre1= Column(String(50))
    Nombre2= Column(String(50))
    Cedula= Column(String(10))
    FechaNacim= Column(Date)
    NacIDNacionalidad= Column(Integer, ForeignKey("ListaIDNacionalidades.IDNacionalidad"))
    NacIDProvincia= Column(Integer, ForeignKey("ListaIDProvincias.IDProvincia"),nullable=True)
    NacIDCanton= Column(Integer, ForeignKey("ListaIDCantones.IDCanton"))
    NacIDParroquia= Column(Integer, ForeignKey("ListaIDParroquias.IDParroquia"))
    IDGenero= Column(Integer, ForeignKey("ListaIDGeneros.IDGenero"))
    IDEtnia= Column(Integer, ForeignKey("ListaIDEtnias.IDEtnia"))
    IDEstadoCivil= Column(Integer, ForeignKey("ListaIDEstadoCivil.IDEstadoCivil"))
    IDColorCabello= Column(Integer, ForeignKey("ListaIDCabelloColor.IDColorCabello"))
    IDCabelloTipo= Column(Integer, ForeignKey("ListaIDCabelloTipo.IDCabelloTipo"))
    IDContextura= Column(Integer, ForeignKey("ListaIDContexturas.IDContextura"))
    IDEstatura= Column(Integer, ForeignKey("ListaIDEstatura.IDEstatura"))
    IDCondicionMedica= Column(Integer, ForeignKey("ListaIDCondicionMedica.IDCondicionMedica"))
    IDDiscapacidad= Column(Integer, ForeignKey("ListaIDDiscapacidad.IDDiscapacidad"))
    DiscapacidadNivel= Column(Integer)
    IngresosAprox= Column(Integer)
    nacionalidad = relationship("Nacionalidades",back_populates="personas")
    provincia = relationship("Provincias",back_populates="personas")
    canton = relationship("Cantones",back_populates="personas")
    parroquia = relationship("Parroquias",back_populates="personas")
    genero = relationship("Generos",back_populates="personas")
    etnia = relationship("Etnias",back_populates="personas")
    estadoCivil = relationship("EstadoCivil",back_populates="personas")
    cabelloColor = relationship("CabelloColor",back_populates="personas")
    cabelloTipo = relationship("CabelloTipo",back_populates="personas")
    contextura = relationship("Contexturas",back_populates="personas")
    estatura = relationship("Estatura",back_populates="personas")
    condicionMedica = relationship("CondicionMedica",back_populates="personas")
    discapacidad = relationship("Discapacidad",back_populates="personas")
