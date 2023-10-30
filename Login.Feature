            #language: pt

            Funcionalidade: Autenticação na EBAC-SHOP

            Contexto: 
            Dado que sou um cliente da EBAC-SHOP
            Cenário: Login bem-sucedido
            Quando eu insiro dados de login válidos
            Então devo ser direcionado para a tela de checkout

            Exemplos:
            | Nome de Usuário          | Senha       |
            | "wolfmaciel@hotmail.com" | "123asenha" |

            Cenário: Login com campos inválidos
            Quando eu insiro dados de login inválidos
            Então uma mensagem de alerta "Usuário ou senha inválidos" deve ser exibida

            Exemplos:
            | Nome de Usuário               | Senha           |
            | "usuarioinválido@hotmail.com" | "senhainválida" |
            | "usuarioinv@hotmail.com"      | "senhaerrada"   |