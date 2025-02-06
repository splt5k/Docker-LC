# LastChaos Docker Server

Ambiente Docker completo para rodar o servidor **LastChaos**, incluindo todos os servicos necessarios.

## Requisitos

- **Docker**  
- **Docker Compose**  
- **4GB de RAM** (minimo)  
- **20GB de espaco em disco**  

## Portas Publicas

| **Servico**     | **Porta** | **Descricao**                |
|-----------------|-----------|------------------------------|
| MySQL           | 3306      | Banco de dados               |
| LoginServer     | 3001      | Servidor de autenticacao     |
| GameServer      | 4221      | Servidor principal do jogo   |

## Credenciais

### MySQL  
- **Usuario:** `root`  
- **Senha do root:** Definida no arquivo `.env`  

### ***Rodando em ambiente WINDOWS***
Requisitos: Docker Desktop e Docker Compose [link](https://www.docker.com/products/docker-desktop/)

## Comandos Docker

**Primeira execucao:**  
```powershell
docker-compose build --no-cache; docker-compose up -d
```

**Acessar console de um servico (ex: LoginServer):**  
```powershell
docker exec -it lc_loginserver bash
screen -r loginserver
```

**Atualizar apos mudancas no Dockerfile:**  
```powershell
docker-compose down; docker-compose build --no-cache; docker-compose up -d
```

**Reiniciar servicos ou atualizar apos mudancas no `docker-compose.yml`:**  
```powershell
docker-compose down; docker-compose up -d
```

---

### ***Rodando em ambiente LINUX***
Requisitos: Docker e Docker Compose

## Comandos Docker

**Primeira execucao:**  
```bash
docker compose build --no-cache && docker compose up -d
```

**Acessar console de um servico (ex: LoginServer):**  
```bash
docker exec -it lc_loginserver bash
screen -r loginserver
```

**Atualizar apos mudancas no Dockerfile:**  
```bash
docker compose down; docker compose build --no-cache; docker compose up -d
```

**Reiniciar servicos ou atualizar apos mudancas no `docker-compose.yml`:**  
```bash
docker compose down; docker compose up -d
```

## Estrutura de Diretorios

```
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
    ├── CashServer/
    ├── Connector/
    ├── GameServer/
    ├── Helper/
    ├── LoginServer/
    └── Messenger/
```

