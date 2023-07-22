# language: pt
Funcionalidade: Login
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma
Para visualizar meus pedidos

  Contexto: 
    Dado que estou na pagina de autenticação da EBAC-SHOP

  Cenário: Somente usuários ativos podem fazer login 
    Quando eu insiro um usuário e senha válidos
    Então sou redirecionado à tela de checkout

  Cenário: Deve exibir uma mensagem de erro caso o usuário erre o login e senha
    Quando eu insiro um usuario ou senha inválidos
    Então uma mensagem de alerta é exibida: "Usuário ou senha inválidos"

  Esquema do Cenário: Errando a senha repetidas vezes
    Quando eu insiro um usuário e senha
    E erro por <qtd> vezes
    Então <resultado>

    Exemplos:
        | qtd   | resultado                                    |
        | 0     | eu acesso a plataforma                       |
        | 1     | uma mensagem de alerta é exibida             |
        | 2     | uma mensagem de alerta é exibida             |
        | 3     | fico impossibilitado de logar por 15 minutos |   
    

  Cenário: Relembrar meus dados ao retornar à página
    Quando eu insiro um usuário e senha válidos
    E marco a opção de relembrar a senha
    Então ao efetuar outro login em outro momento, minha senha será automaticamente inserida no campo "Password"