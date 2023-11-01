            #language: pt

            Funcionalidade: Configuração de Produto na EBAC-SHOP

            Contexto:
            Dado que sou um cliente da EBAC-SHOP

            Esquema de Cenário: Configurar e Adicionar Produto ao Carrinho
            Quando eu quero configurar meu produto de acordo com <cor>, <tamanho> e <quantidade>
            Então devo conseguir inserir o produto no carrinho

             Exemplos:
            | Cor        | Tamanho   | Quantidade |
            | "Vermelho" | "Pequeno" | 1          |
            | "Azul"     | "Médio"   | 5          |
            | "Verde"    | "Grande"  | 10         |

            Cenário: Validação de Configuração de Produto
            Quando tento adicionar um produto ao carrinho
            Então as seleções de <cor>, <tamanho> e <quantidade> devem ser obrigatórias

            Cenário: Limite de Produtos no Carrinho
            Quando tento adicionar 11 produtos ao carrinho
            Então devo receber uma mensagem informando que apenas 10 produtos são permitidos

            Cenário: Limpar Configurações
            Dado que configurei meu produto
            Quando eu clico no botão "limpar"
            Então as configurações devem ser restauradas ao estado original

           
