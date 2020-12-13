[![Build Status](https://travis-ci.com/pAmanda/gces-tf-api.svg?branch=master)](https://travis-ci.com/pAmanda/gces-tf-api)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=coverage)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
[![Duplicated Lines (%)](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=duplicated_lines_density)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
[![Code Smells](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=code_smells)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=pAmanda_gces-tf-api&metric=bugs)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)

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

Foi utilizando o SonarCloud para a análise e coleta de métricas do código fonte.

[![SonarCloud](https://sonarcloud.io/images/project_badges/sonarcloud-black.svg)](https://sonarcloud.io/dashboard?id=pAmanda_gces-tf-api)
