Feature: Painel da minha conta
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Background: 
    Given que estou na pagina de autenticação da EBAC-SHOP
    And eu fiz o login com sucesso
    And sou redirecionado ao painel do usuário

  Scenario Outline: Acessando as abas
    When eu clico na aba <seção> do site
    Then sou redirecionado <resposta>

    Examples:
        | seção             | resposta                                          |
        | Pedidos           | à lista de pedidos já realizados pelo usuário     |
        | Downloads         | à lista de downloads disponíveis para o usuário   |
        | Endereços         | à lista de endereços                              |
        | Detalhes da conta | um formulário com meus dados de usuário           |

  Scenario: URL
    When eu navego pela URL
    Then percebo que a url se tornou "{{url_base}}/minha-conta/"