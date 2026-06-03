            #language: pt

            Funcionalidade: Login na plataforma

            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que estou na página de login da plataforma

            Esquema do Cenário: Autenticação válida
            Quando eu preencher o campo <usuario> e <senha>
            E clicar no botão "Login"
            Então o sistema deve <resultado>

            Exemplos:
            | usuario          | senha    | resultado                                                |
            | cliente@ebac.com | Senha123 | direcionar para a tela de checkout                       |
            | maria@ebac.com   | Maria123 | direcionar para a tela de checkout                       |
            | joao@ebac.com    | Joao123  | exibir a mensagem de alerta "Usuário ou senha inválidos" |