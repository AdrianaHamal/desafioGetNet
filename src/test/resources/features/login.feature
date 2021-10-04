#language:pt
@Login
Funcionalidade: Login

  Cenario: Login com Sucesso
    Dado que sejam preenchidos os valores de login com
      | email    | eve.holt@reqres.in |
      | password | pistol             |
    Quando que seja realizado o POST do Login
    Entao o sistema devolve o status 200
    E valido que o campo "id" retornou o valor 4

  Cenario: Login com Email invalido
    Dado que sejam preenchidos os valores de login com
      | email    | adriana@gmail.com |
      | password | pistol            |
    Quando que seja realizado o POST do Login
    Entao o sistema devolve o status 400
    E valido que o campo "error" retornou o valor "Note: Only defined users succeed registration"

  Cenario: Login sem Email
    Dado que sejam preenchidos os valores de login com
      | email    |        |
      | password | pistol |
    Quando que seja realizado o POST do Login
    Entao o sistema devolve o status 400
    E valido que o campo "error" retornou o valor "Missing email or username"

  Cenario: Login sem password
    Dado que sejam preenchidos os valores de login com
      | email    | eve.holt@reqres.in |
      | password |                    |
    Quando que seja realizado o POST do Login
    Entao o sistema devolve o status 400
    E valido que o campo "error" retornou o valor "Missing password"

  Cenario: Login sem email e password
    Dado que sejam preenchidos os valores de login com
      | email    |  |
      | password |  |
    Quando que seja realizado o POST do Login
    Entao o sistema devolve o status 400
    E valido que o campo "error" retornou o valor "Missing email or username"
