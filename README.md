# miesDinapenWeb
Aplicación web para Mies - Dinapen (Proyecto Vinculación-UG)

# Base de datos
<span align="left">
<img title="MySQL" alt="MySQL" src="https://raw.githubusercontent.com/Thomas-George-T/Thomas-George-T/master/assets/mysql.svg" width="30" height="30" />
</span>

### Levantar base en docker
```sh
docker volume create dbmies
docker run --name some-mysql -v dbmies:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=12345 -d mysql:5.7.38
docker exec -it some-mysql mysql -p
create database miesdinapen_MiesDinapen;
```
- Ejecutar script miesdinapen_MiesDinapen.sql en un cliente sql o en consola


# Backend
<span align="left">	<img title="Python" alt="Python" src="https://raw.githubusercontent.com/Thomas-George-T/Thomas-George-T/master/assets/python.svg" width="30" height="30" /></span>

#### Instalar librerias
```sh
pip install -r miesDinapenApiRest/requirements.txt
```
#### Levantar servidor
```sh
uvicorn main:app --reload
```

# Frontend
<span align="left"> <img title="Angular" alt="Python" src="https://cdn.worldvectorlogo.com/logos/angular-icon.svg" width="30" height="30" /> </span>

#### Instalar paquetes
```sh
npm install
```
#### Levantar frontend
```sh
ng serve -o
```
