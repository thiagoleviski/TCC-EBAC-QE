# language: pt
Funcionalidade: API de cupons
Como admin da EBAC-SHOP
Quero criar um serviço de cupom
Para poder listar e cadastrar os cupons

  Contexto: 
    Dado que tenho acesso à API da EBAC-SHOP
    E que eu insiro o usuário "admin_ebac" na autenticação da API
    E que eu insiro a senha "@admin!&b@c!2022" na autenticação da API

  Cenário: Deve listar todos os cupons cadastrado
    Quando eu acesso o endpoint "/wc/v3/coupons"
    E com o método GET
    E eu uso pelo menos o parâmetro context como view
    Então uma lista de cupons é retornado na response da requisição
    E o status da requisição retorna 200

  Esquema do Cenário: Deve listar um cumpom através de um id específico
    Quando eu acesso o endpoint "/wc/v3/coupons/{id}"
    E com o método GET
    E eu uso pelo menos o parâmetro context como view
    E eu uso o path <id>
    Então retorna <response>
    E com status <valor>

    Exemplos:
        | id            | response               | valor |
        | existente     | os dados do cupom      | 200   |
        | não existente | uma response negativa  | 404   |
        | mais de um id | uma response negativa  | 404   |
        | vazio         | uma response negativa  | 404   |
        
  Cenário: Deve cadastrar um cumpom
    Quando eu acesso o endpoint "/wc/v3/coupons"
    E com o método POST
    E eu uso pelo menos no body da request os parâmetros "code", "amount", "discount_type" e "description"
    Então este cupom é retornado na response da requisição
    E o status da requisição retorna 201

  Cenário: Falha ao cadastrar um cupom
    Quando eu acesso o endpoint "/wc/v3/coupons"
    E com o método POST
    E eu uso pelo menos no body da request os parâmetros "code", "amount", "discount_type" e "description"
    E eu uso o mesmo code já utilizado
    Então uma mensagem de erro é retornado na response da requisição
    E o status da requisição retorna 400