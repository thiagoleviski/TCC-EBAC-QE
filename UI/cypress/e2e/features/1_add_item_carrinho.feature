Feature: Adicionar item ao carrinho
Como cliente da EBAC-SHOP
Quero adicionar produtos no carrinho
Para realizar a compra dos itens

  Background: 
    Given que escolhi o produto que quero comprar na página da EBAC-SHOP

  Scenario Outline: Não é permitido inserir mais de 10 itens de um mesmo produto ao carrinho 
    When eu escolho <quantidade> produtos
    Then <resultado> adicionar minha compra ao carrinho

    Examples:
        | quantidade | resultado     |
        | 9          | consigo       |
        | 10         | consigo       |