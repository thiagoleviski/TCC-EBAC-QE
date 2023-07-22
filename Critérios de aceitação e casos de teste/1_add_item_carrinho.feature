# language: pt
Funcionalidade: Adicionar item ao carrinho
Como cliente da EBAC-SHOP
Quero adicionar produtos no carrinho
Para realizar a compra dos itens

  Contexto: 
    Dado que escolhi o produto que quero comprar na página da EBAC-SHOP

  Esquema do Cenário: Não é permitido inserir mais de 10 itens de um mesmo produto ao carrinho 
    Quando eu escolho <quantidade> produtos
    Então <resultado> adicionar minha compra ao carrinho

    Exemplos:
        | quantidade | resultado     |
        | 9          | consigo       |
        | 10         | consigo       |
        | 11         | não consigo   |
        | 100        | não consigo   |

  Esquema do Cenário: Os valores não podem ultrapassar a R$ 990,00
    Quando eu escolho meus produtos
    E uma quantidade menor que 11 produtos
    E com um valor total de <valor>
    Então <resultado> adicionar minha compra ao carrinho

    Exemplos:
        | valor      | resultado     |
        | 899,00     | consigo       |
        | 990,00     | consigo       |
        | 991,00     | não consigo   |
        | 2000,00    | não consigo   |

  Esquema do Cenário: Valores entre R$ 200 e R$ 600 , ganham cupom de 10% 
    Quando eu escolho meus produtos
    E uma quantidade menor que 11 produtos
    E valor total menor do que 990,00 reais
    E com um valor total de <valor>
    Então <resultado>

    Exemplos:
        | valor      | resultado                    |
        | 199,00     | não recebo 10% de desconto   |
        | 200,00     | recebo 10% de desconto       |
        | 600,00     | recebo 10% de desconto       |
        | 601,00     | não recebo 10% de desconto   |

  Cenário: Valores acima de R$ 600 ganham cupom de 15%
    Quando eu escolho meus produtos
    E uma quantidade menor que 11 produtos
    E valor total menor do que 990,00 reais
    E valor total maior do que 600,00 reais
    Então recebo 15% de desconto