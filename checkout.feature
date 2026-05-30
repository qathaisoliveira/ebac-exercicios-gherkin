            #language: pt

            Funcionalidade: Tela de cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            Contexto:
            Dado que estou na página de checkout da plataforma


            Esquema do Cenário: Campos com todos os dados obrigatórios preenchidos
            Quando eu preencher o campo <nome>
            E preencher o campo <sobrenome>
            E preencher o campo <email>
            E preencher os demais campos obrigatórios
            E clicar no botão "Cadastrar"
            Então o cadastro deve ser realizado com sucesso

            Exemplos:
            | nome  | sobrenome | email          |
            | Thais | Oliveira  | thais@ebac.com |
            | Maria | Silva     | maria@ebac.com |
            | João  | Santos    | joao@ebac.com  |

            Esquema do Cenário: Validar formato de e-mail inválido
            Quando eu preencher o campo <nome>
            E preencher o campo <sobrenome>
            E preencher o campo <email>
            E preencher os demais campos obrigatórios
            E clicar no botão "Cadastrar"
            Então deve ser exibida a mensagem de erro "E-mail inválido"

            Exemplos:
            | nome  | sobrenome | email          |
            | Thais | Oliveira  | thaisemail.com |
            | Maria | Silva     | maria@         |
            | João  | Santos    | joao.com       |

            Esquema do Cenário: Validar campos obrigatórios vazios
            Quando eu deixar qualquer campo obrigatório vazio
            E clicar no botão "Cadastrar"
            Então deve ser exibida a mensagem de alerta "Campo obrigatório"

            Exemplos:
            | campo     |
            | Nome      |
            | Sobrenome |
            | E-mail    |
            | Endereço  |
            | CEP       |
