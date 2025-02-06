# LastChaos Docker Server 🎮

Ambiente Docker completo para servidor LastChaos, oferecendo uma solução containerizada e automatizada para todos os serviços necessários.

## ✨ Características

- **Containerização Completa**: Todos os serviços rodam em containers Docker isolados
- **Multi-plataforma**: Funciona em Windows e Linux
- **Auto-recuperação**: Reinicialização automática em caso de falhas
- **Fácil Manutenção**: Comandos simples para gerenciamento
- **Banco de Dados Otimizado**: MySQL/MariaDB com Event Scheduler configurado
- **Rede Isolada**: Comunicação segura entre serviços via rede interna Docker

## 🚀 Serviços Inclusos

- MySQL/MariaDB (Banco de Dados)
- LoginServer (Autenticação)
- GameServer (Servidor Principal)
- Connector (Conexões)
- Helper (Guildas)
- Messenger (Mensagens)
- CashServer (Sistema de Cash)

## 📦 Pré-requisitos

- Docker
- Docker Compose
- 4GB RAM (mínimo)
- 20GB espaço em disco

## 🛠️ Configuração Rápida

1. Clone o repositório
2. Configure o arquivo .env
3. Execute os comandos:
    `docker-compose build --no-cache`
    `docker-compose up -d`

Para mais detalhes, consulte o [README](./Server/README.md)

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues e pull requests.

---
⭐ Se este projeto te ajudou, considere dar uma estrela!
