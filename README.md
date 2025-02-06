# LastChaos Docker Server 🎮

Ambiente Docker completo para servidor LastChaos, oferecendo uma solucao containerizada e automatizada para todos os servicos necessarios.

## ✨ Caracteristicas

- **Containerizacao Completa**: Todos os servicos rodam em containers Docker isolados
- **Multi-plataforma**: Funciona em Windows e Linux
- **Auto-recuperacao**: Reinicializacao automatica em caso de falhas
- **Facil Manutencao**: Comandos simples para gerenciamento
- **Banco de Dados Otimizado**: MySQL/MariaDB com Event Scheduler configurado
- **Rede Isolada**: Comunicacao segura entre servicos via rede interna Docker

## 🚀 Servicos Inclusos

- MySQL/MariaDB (Banco de Dados)
- LoginServer (Autenticacao)
- GameServer (Servidor Principal)
- Connector (Conexoes)
- Helper (Guildas)
- Messenger (Mensagens)
- CashServer (Sistema de Cash)

## 📦 Pre-requisitos

- Docker
- Docker Compose
- 4GB RAM (minimo)
- 20GB espaco em disco

## 🛠️ Configuracao Rapida

1. Clone o repositorio
2. Configure o arquivo .env
3. Execute os comandos:
    ```bash
    docker-compose build --no-cache
    docker-compose up -d
    ```

Para mais detalhes, consulte o [README](./Server/README.md)

## 🚑 Download do Cliente

Para acessar o cliente oficial do LastChaos, faca o download atraves do link abaixo:

[Download do Cliente - Windows v1.0.0](https://github.com/splt5k/Docker-LC/releases/tag/v1.0.0)

## 🤝 Contribuicoes

Contribuicoes sao bem-vindas! Sinta-se a vontade para abrir issues e pull requests.

---

⭐ Se este projeto te ajudou, considere dar uma estrela!

