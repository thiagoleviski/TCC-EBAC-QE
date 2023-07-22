# language: pt
Funcionalidade: Painel da minha conta
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Contexto: 
    Dado que estou na pagina de autenticação da EBAC-SHOP
    E eu fiz o login com sucesso
    E sou redirecionado ao painel do usuário

  Esquema do Cenário: Acessando as abas
    Quando eu clico na aba <seção> do site
    Então sou redirecionado <resposta>

    Exemplos:
        | seção             | resposta                                          |
        | Pedidos           | à lista de pedidos já realizados pelo usuário     |
        | Downloads         | à lista de downloads disponíveis para o usuário   |
        | Endereços         | à lista de endereços                              |
        | Detalhes da conta | um formulário com meus dados de usuário           |

  Cenário: Acessando a aba "Endereços"
    Quando eu clico na aba "Endereços" do site
    Então sou redirecionado à lista de endereços
    E é possível encontrar o endereço de pagamento
    E é possível encontrar o endereço de entrega

  Cenário: Acessando a aba "Detalhes da conta"
    Quando eu clico na aba "Detalhes da conta" do site
    Então sou redirecionado a um formulário com meus dados de usuário
    E tenho a possibilidade de alterar os dados caso necessário

  Cenário: Saindo da página
    Quando eu clico na no link da palavra "Sair"
    Então sou deslogado do meu usuário

  Cenário: URL
    Quando eu navego pela URL
    Então percebo que a url se tornou "{{url_base}}/minha-conta/"