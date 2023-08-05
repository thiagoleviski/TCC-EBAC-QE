Feature: Detalhes da conta
Como cliente da EBAC-SHOP
Quero acessar meu painel de usuário
Para ter acesso aos dados do meu usuário

  Background: 
    Given que estou na pagina de autenticação da EBAC-SHOP
    And eu fiz o login com sucesso
    And sou redirecionado ao painel do usuário
    And clico na aba "Detalhes da conta"
    And sou redirecionado a página contendo os detalhes da minha conta

  Scenario Outline: Parâmetros obrigatórios
    When não insiro ou deleto dados dos parâmetros que são obrigatórios como <obrigatorio>
    Then um alerta é emitido dizendo que <resposta>
    
    Examples:
      | obrigatorio        | resposta                                   |
      | First name         | Nome é um campo obrigatório.               |
      | Last name          | Sobrenome é um campo obrigatório.          |
      | Display name       | Nome de exibição é um campo obrigatório.   |
      | Email address      | Endereço de e-mail é um campo obrigatório. |

    Scenario: URL
    When eu navego pela URL
    Then percebo que a url se tornou "{{url_base}}/minha-conta/edit-account/"