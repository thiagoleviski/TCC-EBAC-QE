Feature: Meus Pedidos
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Background: 
    Given que estou na pagina de autenticação da EBAC-SHOP
    And eu fiz o login com sucesso
    And sou redirecionado ao painel do usuário
    And clico na aba "Pedidos"
    And sou redirecionado a página dos meus pedidos

  Scenario Outline: Pedidos
    When percebo que <ação> 
    Then <resposta>

    Examples:
        | ação                     | resposta                                                          |
        | não fiz pedido           | um alerta é emitido dizendo: "Nenhum pedido foi feito ainda."     |
        | fiz 1 pedido             | o pedido é exibido                                                |
        | fiz 5 pedidos            | os pedidos são exibidos em lista                                  |

  Scenario: Visualização do pedido
    When eu clico no botão "Visualizar" no parâmetro "ações" do pedido
    Then sou redirecionado a página de Detalhes do pedido

  Scenario: URL
    When eu navego pela URL
    Then percebo que a url se tornou "{{url_base}}/minha-conta/orders/"