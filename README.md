# miesDinapenWeb 👦
Aplicación web para Mies - Dinapen (Proyecto Vinculación-UG)

# Base de datos
<span align="left">
<img title="MySQL" alt="MySQL" src="https://raw.githubusercontent.com/Thomas-George-T/Thomas-George-T/master/assets/mysql.svg" width="40" height="40" />
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
<span align="left">	<img title="Php" alt="Python" src="https://cdn-icons-png.flaticon.com/512/5968/5968332.png" width="60" height="60" /></span>

#### Correr apache con php linkeando el container mysql
```sh
docker run -d -p 3000:80 --link mysql -v ($pwd)/src:/var/www/html php-apache
```
- El volumen es tipo "binding", es decir, todo lo que haga en la carpeta src se refleja en el var/www/html del apache

# Frontend
<span align="left"> <img title="Angular" alt="Python" src="https://cdn.worldvectorlogo.com/logos/angular-icon.svg" width="40" height="40" /> </span>

#### Instalar paquetes
```sh
npm install
```
#### Levantar frontend
```sh
ng serve -o
```

## Ramas:
- prod-php: rama principal Angular + PHP
- main: rama antigua Angular + Python (FastApi)

## Colaboradores:
- Ken Luzuriaga
- Freya López
- Harry Méndez
- José López
- Aldo Nicola

