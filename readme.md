# Desafio GetNet

1. Testes de Login através da API https://reqres.in/api/register

# Automatizado os testes:

1. Login com sucesso
2. Login com Email invalido
3. Login sem Email
4. Login sem Password
5. Login sem email e password

# Com as seguintes tecnologias

1. Java
2. Cucumber
3. RestAssured
4. JUnit
5. Maven

# Cucumber

Pelos testes terem as requisições parecidas
Foi identificado que poderia reutilizar os métodos criados
O qual é um dos pontos fortes do Cucumber+gherkin

# RestUtils

Uma classe criada para utilização dos métodos comuns do RestAssured
Facilitando o uso de diversos métodos

# LoginSteps

Classe que contém os passos que devem ser executados
Nele estão os métodos que foram gerados pelo cucumber*

# RunnerTest

Classe responsável para executar os testes
É uma classe com execução JUnit
Podendo utilizar tags criadas para direcionar a sua execução


