# language: pt
Funcionalidade: Meus Endereços
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Contexto: 
    Dado que estou na pagina de autenticação da EBAC-SHOP
    E eu fiz o login com sucesso
    E sou redirecionado ao painel do usuário
    E clico na aba "Endereços"
    E sou redirecionado a página dos meus endereços

  Esquema do Cenário: Endereços cadastrados
    Quando percebo que <ação>
    Então <resposta>

    Exemplos:
      | ação                              | resposta                                                                     |
      | não cadastrei endereços           |  um alerta é emitido dizendo: "You have not set up this type of address yet."|
      | cadastrei o endereço de pagamento | na aba endereço de pagamento é exibido o endereço cadastrado                 |
      | cadastrei o endereço de entrega   | na aba endereço de entrega é exibido o endereço cadastrado                   |
      | cadastrei os endereços de pagamento e entrega | ambos os endereços serão exibidos na tela                        |

  Cenário: endereços padrões
    Quando e vejo o texto abaixo do título "My Addresses"
    Então uma mensagem é exibida dizendo "The following addresses will be used on the checkout page by default."

  Cenário: Editando endereços
    Quando eu clico no botão "Edit"
    Então sou redirecionado a uma página de edição de endereços
  
  Cenário: URL
    Quando eu navego pela URL
    Então percebo que a url se tornou "{{url_base}}/minha-conta/edit-address/"