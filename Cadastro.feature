            Funcionalidade: Conclusão de Cadastro na EBAC-SHOP

            Contexto:
            Dado que sou um cliente da EBAC-SHOP

            Esquema de Cenário: Cadastro com sucesso
            Quando eu preencho todos os campos obrigatórios de <nome>, <sobrenome> e <E-mail>, marcados com asteriscos
            E insiro um e-mail válido
            E confirmo o cadastro
            Então devo ser direcionado para a finalização da compra

            Exemplos:
            | Nome*    | Sobrenome* | E-mail*              |
            | João     | Silva      | joao@example.com     |
            | Maria    | Santos     | maria@example.com    |
            | Fernando | Oliveira   | fernando@example.com |

            Esquema de Cenário: E-mail com formato inválido
            Quando eu insiro um <nome>, <sobrenome> e ou <e-mail> com formato inválido
            E confirmo o cadastro
            Então uma mensagem de erro deve ser exibida informando sobre o formato inválido do e-mail

            Exemplos:

            | Nome*  | Sobrenome* | E-mail              |
            | Ana*   | S4ntos*    | emailinvalido@com   |
            | Pedr0* | Oliveira*  | pedro@example.com   |
            | Maria* | Silva*     | emailincompleto.com |

            Cenário: Campos obrigatórios vazios
            Quando eu tento cadastrar com campos obrigatórios vazios
            E confirmo o cadastro
            Então uma mensagem de alerta deve ser exibida informando sobre os campos em branco
