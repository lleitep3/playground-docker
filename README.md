Aula Docker
===

# Objetivo da aula
Sair da aula com o conhecimento essencial de docker para o trabalho do dia-dia.

# Agenda
- [1 - Overview](#1---overview)
- [2 - Docker cli](#2---docker-commandline)
- [3 - Registry containers](#3---registry-containers)
- [4 - Dockerfile](#4---dockerfile)
- [5 - Docker Compose (orquestrador de ambientes)](#5---docker-compose-orquestrador-de-ambientes)

--------------------------------------------------------
### Pré-requisitos:
  - Conhecimentos básicos de linux
  - Conhecimentos básicos de bash command-line
  - Conhecimentos básicos de shell

-------------------------------------------------------
## 1 - Overview:
  - Containers NÃO são VMs *OK*
  - O que é um container? E como funciona? *OK*
  - Plataforma do Docker *OK*
  - Imagens e containers *OK*

### Referências:
  - [Containers x virtualização](https://www.docker.com/resources/what-container)
  - [Overview](https://docs.docker.com/get-started/overview/)
  - [Get Started](https://docs.docker.com/get-started/)

--------------------------------------------------------
<!-- Docker_Commandline -->
## 2 - Docker Commandline:
  - Comandos básicos do dia-dia
    - docker ps
    - docker run
    - docker exec

### Cronograma

**Verificando imagens locais**
```shell
$ docker images
$ docker images | grep 'node'
$ docker image rmi
```

**Baixar imagem:**
```shell
$ docker pull node:slim
```

**Rodar uma imagem:**
```shell
$ docker run node:slim
```

**Rodar uma imagem no modo interativo:**
```shell
$ docker run --name api-ts -it node:slim /bin/bash
```

**Rodar uma imagem no modo interativo com auto-remove:**
```shell
$ docker run --name api-ts --rm -it node:slim /bin/bash
```

**Criando uma imagem e montando um volume:**
```shell
$ docker build -t image-api-ts -v ${PWD}/api /app .
```

#### Referências:
  - [Command-line](https://docs.docker.com/engine/reference/commandline/docker/)

--------------------------------------------------------
## 3 - Registry containers
  - Docker Hub
  - Docker Login

#### Referências:
  - [Docker Hub](https://hub.docker.com/_/node)

--------------------------------------------------------
## 4 - Dockerfile
  - Comandos
  - Como criar seu container

**Criando uma imagem:**
```shell
$ docker build -t image-api-ts .
```

**Criando uma imagem e montando um volume:**
```shell
$ docker build -t node-ts . --build-arg ENV='local'
  docker run -p 8000:8000 -v ${PWD}/api:/app  --rm -it --name minha-api-ts node-ts
```

#### Referências:
  - [CMD VS ENTRYPOINT](https://phoenixnap.com/kb/docker-cmd-vs-entrypoint)
  - [Docker and Node.js Best Practices](https://github.com/nodejs/docker-node/blob/master/docs/BestPractices.md)

--------------------------------------------------------
## 5 - Docker Compose (orquestrador de ambientes)
  - Comandos
  - Criando nosso ambiente

### Referências:
  - https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

--------------------------------------------------------
### Comandos utilizados na aula:
  - `touch` - *cria um arquivo vazio*
  - `mkdir` - *cria uma pasta*
  - `echo 'opa'` - *mostra uma string (como um console.log)*
  - `ls -la` - *lista os arquivos de uma pasta*
  - `pwd` - *mostra o path absoluto atual*
  - `${PWD}` - *variável de ambiente que com o valor do path absoluto atual*
  - `watch -n1 -e 'docker ps'` - *roda um comando a cada 1 segundo*
  - `chmod +x <caminho_do_arquivo>` - *altera a permissão de um arquivo para que ele seja executável*
  - `ln -s arquivo_origem link_destino` - *cria um link simbolico*

--------------------------------------------------------
### Tips to deep:
  - [Docker em 100 segundos](https://www.youtube.com/watch?v=Gjnup-PuquQ&list=PL0vfts4VzfNjTHIOupS8u9cxTYtz5RPYU)
  - [Docker Commands Cheat Sheet](https://phoenixnap.com/kb/list-of-docker-commands-cheat-sheet)
  - [Golden Image](https://blog.mycloudit.com/everything-you-need-to-know-about-golden-images)
  - [Curso de Shell Scripting](https://www.cursou.com.br/informatica/shell-scripting/)
  - [VSCode Remote develompent](https://github.com/Microsoft/vscode-remote-release)
  - [VSCode Remote development 2](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
  - Sobre variações de imagens slim/alpine/...
    - [Alpine, Slim, Stretch, Buster, Jessie, Bullseye — What are the Differences in Docker Images?](https://medium.com/swlh/alpine-slim-stretch-buster-jessie-bullseye-bookworm-what-are-the-differences-in-docker-62171ed4531d)
    - [Um Mergulho em Imagens de Containers - Parte 1](https://blog.lsantos.dev/um-mergulho-em-imagens-de-containers-parte-1/)
    - [Um Mergulho em Imagens de Containers - Parte 2](https://blog.lsantos.dev/um-mergulho-em-imagens-de-containers-parte-2/)
