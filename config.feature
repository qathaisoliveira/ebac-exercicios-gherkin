            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de configuração de produto

            Esquema do Cenário: Configurar produto com dados válidos
            Quando eu selecionar <tamanho>, <cor> e <quantidade>
            Então o sistema deve exibir a mensagem "Produto adicionado ao carrinho com sucesso"

            Exemplos:
            | cor      | tamanho | quantidade |
            | Azul     | P       | 1          |
            | Vermelho | M       | 5          |
            | Roxo     | G       | 10         |

            Esquema do Cenário: Não permitir configuração sem preencher campos obrigatórios
            Quando eu deixar de selecionar <tamanho>, <cor> e <quantidade>
            Então deve ser exibida a mensagem de alerta "Campo obrigatório"

            Exemplos:
            | cor      | tamanho | quantidade | mensagem            |
            | Azul     | P       | 9          | "Campo obrigatório" |
            | Vermelho |         | 10         | "Campo obrigatório" |
            |          | G       | 11         | "Campo obrigatório" |

            Esquema do Cenário: Validar adição de produtos ao carrinho e limite por venda
            Quando eu informar a <quantidade>
            Então deve ser exibida uma <mensagem>

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                         |
            | Azul     | P       | 9          | "Produto adicionado com sucesso" |
            | Vermelho | M       | 10         | "Produto adicionado com sucesso" |
            | Roxo     | G       | 11         | "Limite máximo de 10 produtos"   |

            Esquema do Cenário: Limpar configurações do produto
            Dado que selecionei a <cor>, <tamanho> e <quantidade>
            Quando eu clicar no botão "Limpar"
            Então todas as seleções devem retornar ao estado original