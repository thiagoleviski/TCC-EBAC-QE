# language: pt
Funcionalidade: Catálogo de produtos
Como cliente da EBAC-SHOP
Quero acessar o catálogo de produtos
Para visualizar os produtos da loja

  Contexto: 
    Dado que estou na pagina da EBAC-SHOP

  Cenário: Acessando a lista de produtos 
    Quando eu clico na aba "Comprar" do site
    Então sou redirecionado à lista de produtos

  Esquema do Cenário: Visualização da lista de produtos
    Quando eu estou na lista de produtos
    E clico no ícone <tipo>
    Então a visualização se torna em <resultado>

    Exemplos:
        | tipo   | resultado     |
        | Grid   | quadros       |
        | List   | lista         |

  Esquema do Cenário: Ordenação da lista de produtos
    Quando eu estou na lista de produtos
    E clico no item <tipo> da lista de ordenação
    Então a ordem dos produtos se torna <resultado>

    Exemplos:
        | tipo                       | resultado                       |
        | padrão                     | default                         |
        | popularidade               | mais populares                  |
        | média de classificação     | melhores classificados primeiro |
        | mais recente               | mais novos primeiro             |
        | preço: maior para menor    | maior preço primeiro            |
        | preço: menor para maior    | menor preço primeiro            |

  Cenário: Páginas de acesso da lista de produtos
    Quando eu estou na lista de produtos
    E existem mais produtos do que a quantidade máxima da página
    Então no rodapé da lista existe uma seleção de paginas para serem acessadas