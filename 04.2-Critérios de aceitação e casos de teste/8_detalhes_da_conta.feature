# language: pt
Funcionalidade: Detalhes da conta
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Contexto: 
    Dado que estou na pagina de autenticação da EBAC-SHOP
    E eu fiz o login com sucesso
    E sou redirecionado ao painel do usuário
    E clico na aba "Detalhes da conta"
    E sou redirecionado a página contendo os detalhes da minha conta

  Esquema do Cenário: Parâmetros obrigatórios
    Quando não insiro ou deleto dados dos parâmetros que são obrigatórios como <obrigatorio>
    Então um alerta é emitido dizendo que <resposta>
    
    Exemplos:
      | obrigatorio        | resposta                                   |
      | First name         | Nome é um campo obrigatório.               |
      | Last name          | Sobrenome é um campo obrigatório.          |
      | Display name       | Nome de exibição é um campo obrigatório.   |
      | Email address      | Endereço de e-mail é um campo obrigatório. |

  Cenário: Trocar meus dados
    Quando troco os dados pertinentes
    E insiro os dados obrigatórios
    E clico no botão "save changes"
    Então meus dados são atualizados

  Cenário: Trocar senha
    Quando digito a senha atual no campo "Current Password"
    E digito a nova senha no campo "New Password"
    E digito novamente a nova senha no campo "Confirm New Password"
    E insiro os dados de usuário obrigatórios
    E clico no botão "save changes"
    Então minha senha é atualizada

  Cenário: Insiro a mesma senha
    Quando digito a senha atual no campo "Current Password"
    E digito a mesma senha no campo "New Password"
    E digito novamente a mesma senha no campo "Confirm New Password"
    E insiro os dados de usuário obrigatórios
    Então o botão "save changes" fica desabilitado

    Cenário: URL
    Quando eu navego pela URL
    Então percebo que a url se tornou "{{url_base}}/minha-conta/edit-account/"