            #language: pt

            Funcionalidade: Configurar produto

            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que estou na página de configuração de produto

            Esquema do Cenário: Configurar produto com dados válidos
            Quando eu selecionar a cor <cor>
            E selecionar o tamanho <tamanho>
            E informar a quantidade <quantidade>
            Então a configuração do produto deve ser aceita

            Exemplos:
            | cor      | tamanho | quantidade |
            | Azul     | P       | 1          |
            | Vermelho | M       | 5          |
            | Roxo     | G       | 10         |

            Cenário: Não permitir configuração sem preencher campos obrigatórios
            Quando eu deixar de selecionar a cor
            Ou deixar de selecionar o tamanho
            Ou deixar de informar a quantidade
            Então deve ser exibida uma mensagem de alerta informando que os campos são obrigatórios

            Cenário: Não permitir mais de 10 produtos por venda
            Quando eu informar a quantidade 11
            Então deve ser exibida uma mensagem de erro informando que o limite máximo é de 10 produtos por venda

            Cenário: Limpar configurações do produto
            Dado que selecionei uma cor
            E selecionei um tamanho
            E informei uma quantidade
            Quando eu clicar no botão "Limpar"
            Então todas as seleções devem retornar ao estado original