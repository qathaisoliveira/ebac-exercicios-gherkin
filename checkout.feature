            #language: pt

            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que estou na página de checkout da plataforma


            Esquema do Cenário: Validar campos obrigatórios preenchidos
            Quando eu preencher o campo <nome>, <sobrenome> e <email>
            E clicar no botão "Cadastrar"
            Então o sistema deve exibir uma <mensagem>

            Exemplos:
            | nome  | sobrenome | email          | mensagem                              |
            | Thais | Oliveira  | thais@ebac.com | Cadastro realizado com sucesso        |
            |       | Santos    | joao@ebac.com  | Verificar campo obrigatório em branco |
            | Maria |           | maria@ebac.com | Verificar campo obrigatório em branco |
            | Thais | Oliveira  | thaisemail.com | Verificar formato de email            |


            Esquema do Cenário: Validar campos obrigatórios vazios
            Quando eu deixar qualquer campo obrigatório vazio
            E clicar no botão "Cadastrar"
            Então deve ser exibida a mensagem de alerta "Campo obrigatório"