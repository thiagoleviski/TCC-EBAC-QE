Feature: Catálogo de produtos
Como cliente da EBAC-SHOP
Quero acessar o catálogo de produtos
Para visualizar os produtos da loja

  Background: 
    Given que estou na pagina da EBAC-SHOP

  Scenario Outline: Visualização da lista de produtos
    When eu estou na lista de produtos
    When clico no ícone <tipo>
    Then a visualização se torna em <resultado>

    Examples:
        | tipo   | resultado     |
        | Grid   | quadros       |
        | List   | lista         |

  Scenario Outline: Ordenação da lista de produtos
    When eu estou na lista de produtos
    When clico no item <tipo> da lista de ordenação
    Then a ordem dos produtos se torna <resultado>

    Examples:
        | tipo                       | resultado                       |
        | popularidade               | mais populares                  |
        | média de classificação     | melhores classificados primeiro |
        | mais recente               | mais novos primeiro             |
        | preço: maior para menor    | maior preço primeiro            |
        | preço: menor para maior    | menor preço primeiro            |