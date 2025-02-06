# LastChaos Docker Server

Ambiente Docker completo para rodar o servidor **LastChaos**, incluindo todos os serviços necessários.

## Requisitos

- **Docker**  
- **Docker Compose**  
- **4GB de RAM** (mínimo)  
- **20GB de espaço em disco**  

## Portas Públicas

| **Serviço**     | **Porta** | **Descrição**                |
|-----------------|-----------|------------------------------|
| MySQL           | 3306      | Banco de dados               |
| LoginServer     | 3001      | Servidor de autenticação     |
| GameServer      | 4221      | Servidor principal do jogo   |

## Credenciais

### MySQL  
- **Usuário:** `root`  
- **Senha do root:** Definida no arquivo `.env`  

###*** Rodando em ambiente WINDOWS ***###
Requisitos: Docker Desktop e Docker Compose (https://www.docker.com/products/docker-desktop/)

## Comandos Docker

**Primeira execução:**
-> powershell
docker-compose build --no-cache; docker-compose up -d


**Acessar console de um serviço (ex: LoginServer):**
-> powershell
docker exec -it lc_loginserver bash
screen -r loginserver


**Atualizar após mudanças no Dockerfile:**
-> powershell
docker-compose down; docker-compose build --no-cache; docker-compose up -d


**Reiniciar serviços ou atualizar após mudanças no `docker-compose.yml`:**
-> powershell
docker-compose down; docker-compose up -d


---

###*** Rodando em ambiente LINUX ***###
Requisitos: Docker e Docker Compose

## Comandos Docker

**Primeira execução:**
-> bash
docker-compose build --no-cache && docker-compose up -d

**Acessar console de um serviço (ex: LoginServer):**
-> powershell
docker exec -it lc_loginserver bash
screen -r loginserver


**Reiniciar serviços ou atualizar após mudanças no `docker-compose.yml`:**
-> bash
docker-compose down && docker-compose build --no-cache && docker-compose up -d


## Estrutura de Diretórios

Server/
├── docker-compose.yml
├── Dockerfile.centos
├── .env
├── DB/
├── CashServer/
├── Connector/
├── GameServer/
├── Helper/
├── LoginServer/
├── Messenger/
├── Libs/
│   └── libmysqlclient.so.16
└── LogFiles/
    ├── Connector/
    ├── GameServer/
    ├── Helper/
    ├── LoginServer/
    └── Messenger/
