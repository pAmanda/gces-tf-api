[![Build Status](https://travis-ci.com/pAmanda/gces-tf-api.svg?branch=master)](https://travis-ci.com/pAmanda/gces-tf-api)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=coverage)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=duplicated_lines_density)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=code_smells)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=bugs)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=alert_status)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)

# Trabalho Final da Disciplina GCES

Esse repositório guarda o código fonte da API em Rails do trabalho final da disciplina **GCES**.

## Como rodar?

* Instale o docker e docker compose em sua máquina.

* Rode os seguintes comandos:

Primeiro, crie uma rede para conectar a API ao banco de dados:

```$ docker network create network-api```

```$ docker-compose build```

```$ docker-compose up```

Após isso, acesse a aplicação na seguinte URL:

http://localhost:3000

## Análise estática

Foi utilizado o SonarCloud para a análise e coleta de métricas do código fonte.

[![SonarCloud](https://sonarcloud.io/images/project_badges/sonarcloud-black.svg)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)

## Conteinerização

Para isolar o ambiente, foi utilizado Docker e o Docker compose para a orquestração dos containers.

Criei o Dockerfile para a construção da imagem docker da API. No docker-compose.yml, utilizei a imgagem docker da API e também uma do postgres, pois o banco também deveria estar isolado. Para que a API conectasse ao banco, criei uma network. Os volumes foram usados para armazenar os dados fora do container, já que ele é volátil.

## Integração Contínua

Foram utilizados o Travis CI e o Sonar para verificar a qualidade do código.

A **master** foi configurada para não aceitar códigos que não passaram na Integração Contínua.

<p align="center">
  <img src="./img/master.png" alt="master">
</p>

## Deploy Automático

O deploy foi feito utilizando 2 Droplets na Digital Ocean, 1 sendo para a instação do Rancher e o outro para o deploy dos containers.

<p align="center">
  <img src="./img/master.png" alt="master">
</p>

URL Rancher: http://104.236.2.94:8080/

Os containers da API, do banco de dados e do front-end estão rodando na stack gces-tf.

<p align="center">
  <img src="./img/containers.png" alt="master">
</p>

URL API: http://104.131.170.181:3000/

Para o deploy automático, foram adicionadas 2 fases no travis, a Docker e o Deploy.

* Fase Docker: cria a imagem e pusha ela para a minha conta pessoal no Docker Hub.

* Fase Deploy: executa um script em python responsável por chamar a api do próprio Rancher para fazer o Upgrade da imagem antiga para a que foi criada na fase anterior. OBS: Usei esse script do trabalho em grupo de GCES (Convinfo).

Para o travis se integrar corretamente com o Docker hub e Ranhcer, foram adicionadas as seguintes variáveis de ambiente:

<p align="center">
  <img src="./img/travis.png" alt="master">
</p>
