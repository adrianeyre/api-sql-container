# .NET Core 3.1 API - SQL - Docker Container
![net](https://img.shields.io/badge/core-v3.1-blue.svg?&logo=.net) [![Generic badge](https://img.shields.io/badge/SSMS-v18.6-blue.svg)](https://shields.io/) ![](https://img.shields.io/docker/build/mariobehling/loklak.svg)

## Background
This is a simple .NET Core API that is containerised using Docker and a containerised SQL Server.

## Index
* [Prerequisites](#prerequisites)
* [Setup](#setup)
* [CRUD Commands](#commands)
* [Database Management](#dbm)

## <a name="prerequisites">Prerequisites</a>
- [Visual Studio 2019](https://visualstudio.microsoft.com/downloads)
- [SQL Server Management Studio (SSMS)](https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms)
- [Docker Desktop](https://www.docker.com/products/docker-desktop)

## <a name="setup">Setup</a>
* Download [Docker Desktop](https://www.docker.com/products/docker-desktop), install and log in to the application
* To clone the repo and run the game
```shell
$ git clone https://github.com/adrianeyre/api-sql-container
$ cd api-sql-container
```
- Open the file `\ApiSQLContainer\ApiSQLContainer.sln`
- Run the application `Docker Compose`
- Navigate to `https://localhost:32798/api/products`

## <a name="commands">RESTful Commands</a>
- Open a command prompt

GET
```shell
curl https://localhost:32798/api/products -UseBasicParsing
```

POST
```
curl -i -H "Content-Type: application/json" -X POST --data '{\"name\":\"test\",\"price\":1.99}' https://localhost:32798/api/products
```

## <a name="dbm">Database Management</a>
- Open `SQL Server Management Studio (SSMS)`
- Login Credetials
```
  Server Name: 127.0.0.1,1433
  Authentication: SQL Server Authentication
  Login: sa
  Password: SecureP4ssW0rd
```
