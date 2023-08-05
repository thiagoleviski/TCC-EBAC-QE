Feature: Meus Endereços
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Background: 
    Given que estou na pagina de autenticação da EBAC-SHOP
    And eu fiz o login com sucesso
    And sou redirecionado ao painel do usuário
    And clico na aba "Endereços"
    And sou redirecionado a página dos meus endereços

  Scenario Outline: Endereços cadastrados
    When percebo que <ação>
    Then <resposta>

    Examples:
      | ação                              | resposta                                                                     |
      | não cadastrei endereços           |  um alerta é emitido dizendo: "You have not set up this type of address yet."|
      | cadastrei o endereço de pagamento | na aba endereço de pagamento é exibido o endereço cadastrado                 |
      | cadastrei o endereço de entrega   | na aba endereço de entrega é exibido o endereço cadastrado                   |
      | cadastrei os endereços de pagamento e entrega | ambos os endereços serão exibidos na tela                        |

  Scenario: endereços padrões
    When e vejo o texto abaixo do título "My Addresses"
    Then uma mensagem é exibida dizendo "The following addresses will be used on the checkout page by default."
 
  Scenario: URL
    When eu navego pela URL
    Then percebo que a url se tornou "{{url_base}}/minha-conta/edit-address/"