            #language: pt

            Funcionalidade: Tela de Configuração do Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página de cliente do portal EBAC

            Cenário: Seleções de cor, tamanho e quantidade devem ser obrigatórios
            Quando deixar de preencher algum campo obrigatório
            Então deve exibir uma mensagem de alerta "Campo obrigatório deve ser preenchido!"

            Cenário: Deve permitir apenas 10 produtos por venda
            Quando existirem 10 produtos no carrinho de compra
            E tentar inserir mais um produto
            Então deve exibir uma mensagem de alerta "Quantidade máxima atingida!"

            Cenário: Ao clicar no botão “limpar” deve voltar ao estado original
            Quando clicar no botão “limpar”
            E existirem campos preenchidos
            Então os dados devem ser apagados

            Esquema do Cenário: Seleções de cor, tamanho e quantidade
            Quando eu digitar a <cor>
            E o <tamanho>
            E a <quantidade>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | cor      | tamanho | quantidade | mensagem                                    |
            | "branca" | "P"     | "1"        | "Produto adicionado ao carrinho de compra!" |
            | "preta"  | "M"     | "2"        | "Produto adicionado ao carrinho de compra!" |
            | "azul"   | "G"     | "4"        | "Produto adicionado ao carrinho de compra!" |
            | "rosa"   | "P"     | "9"        | "Produto adicionado ao carrinho de compra!" |
            | "verde"  | "M"     | "10"       | "Produto adicionado ao carrinho de compra!" |
