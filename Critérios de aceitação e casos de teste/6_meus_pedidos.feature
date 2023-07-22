# language: pt
Funcionalidade: Meus Pedidos
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Contexto: 
    Dado que estou na pagina de autenticação da EBAC-SHOP
    E eu fiz o login com sucesso
    E sou redirecionado ao painel do usuário
    E clico na aba "Pedidos"
    E sou redirecionado a página dos meus pedidos

  Esquema do Cenário: Pedidos
    Quando percebo que <ação> 
    Então <resposta>

    Exemplos:
        | ação                     | resposta                                                          |
        | não fiz pedido           | um alerta é emitido dizendo: "Nenhum pedido foi feito ainda."     |
        | fiz 1 pedido             | o pedido é exibido                                                |
        | fiz 5 pedidos            | os pedidos são exibidos em lista                                  |

  Cenário: Pedido realizado
    Quando percebo que fiz 1 pedido
    Então é exibido o pedido
    E os parâmetros numero do pedido, data, status, total e ações são exibidos

  Cenário: Visualização do pedido
    Quando eu clico no botão "Visualizar" no parâmetro "ações" do pedido
    Então sou redirecionado a página de Detalhes do pedido

  Cenário: URL
    Quando eu navego pela URL
    Então percebo que a url se tornou "{{url_base}}/minha-conta/orders/"