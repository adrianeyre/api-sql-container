# Containerise Database</span>
#### Technologies: .NET Core 3.1 API, Docker, SQL Server, Entity Framework

![net](https://img.shields.io/badge/core-v3.1-blue.svg?&logo=.net) ![docker](https://img.shields.io/static/v1?label=docker&message=v2.4.0&color=blue&logo=docker&link=https://www.docker.com/products/docker-desktop) ![ssms](https://img.shields.io/badge/SSMS-v18.6-blue.svg?&logo=visual-studio-code) [![Generic badge](https://img.shields.io/badge/EntityFramework-v3.1.8-blue.svg)](https://shields.io/) 

## Background
The purpose of this repo is to define the pros and cons for containerising an Entity Framework vs Database dacpac solution. Each version has a simple API and database in docker containers.


## Index
* [Prerequisites](#prerequisites)
* [Initial Setup](#initial)
* [Entity Framework](#entity)
  * [Setup](#entitysetup)
* [Dacpac Database](#dacpac)
  * [Setup](#dacpacsetup)
* [API Usage](#api)
* [Database Management](#dbm)

## <a name="prerequisites">Prerequisites</a>
- [Visual Studio 2019](https://visualstudio.microsoft.com/downloads)
- [SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)

### <a name="initial">Initial Setup</a>
* Download [Docker Desktop](https://www.docker.com/products/docker-desktop), install and log in to the application
* To clone the repo and run the game
```shell
$ git clone https://github.com/adrianeyre/api-sql-container
$ cd api-sql-container
```

## <a name="entity">Entity Framework</a>
### <a name="entitysetup">Setup</a>
- Open folder `/EntityFrameworkMigrationsExample`
- Load the application `ApiSQLContainer.sln`
- Set the start up project to `docker-compose`

## <a name="dacpac">Dacpac Database</a>
### <a name="dacpacsetup">Setup</a>
- Open folder `/DacPacExample/API`
- Load the application `DacPacApiExample.sln`
- Set the start up project to `docker-compose`

## <a name="api">API Usage</a>
- Navigate to `https://localhost:44325/api/products`
- Navigate to `https://localhost:44325/api/books`

## <a name="dbm">Database Management</a>
- Open `SQL Server Management Studio (SSMS)`
- Login Credetials
```
  Server Name: 127.0.0.1,1433
  Authentication: SQL Server Authentication
  Login: sa
  Password: SecureP4ssW0rd
```
