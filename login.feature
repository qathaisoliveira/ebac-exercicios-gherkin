            #language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página de login da plataforma

            Esquema do Cenário: Autenticação com credenciais válidas
            Quando eu digitar o <usuário>
            Ou digitar o <email>
            E a <senha>
            Então devo ser direcionado para a tela de checkout

            Exemplos:
            | usuario          | senha    |
            | cliente@ebac.com | Senha123 |
            | maria@ebac.com   | Maria123 |
            | joao@ebac.com    | Joao123  |


            Esquema do Cenário: Exibir mensagem de erro para credenciais inválidas
            Quando eu digitar o <usuário> ou <email>
            E a <senha>
            E clicar no botão "Entrar"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Exemplos:
            | usuario          | senha       |
            | cliente@ebac.com | senhaErrada |
            | usuarioInvalido  | Senha123    |
            | cliente@ebac.com | Senha123    |