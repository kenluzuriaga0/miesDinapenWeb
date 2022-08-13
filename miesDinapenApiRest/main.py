from pickle import TRUE
from fastapi import FastAPI
from routes import organizaciones, provincias,cantones, parroquias, listas, personas
from fastapi.middleware.cors import CORSMiddleware

app = FastAPI(title="MiesDinapen API", version="0.0.1")

origins = [
    "http://localhost:4200", #permitir acceso al front en angular
]
app.add_middleware( #configuracion de CORS
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=['GET', 'POST'],
    allow_headers=['*'],
)

app.include_router(provincias.router) #añade la ruta de provincia
app.include_router(cantones.router) 
app.include_router(parroquias.router) 
app.include_router(organizaciones.router) 
app.include_router(listas.router) 
app.include_router(personas.router) 

