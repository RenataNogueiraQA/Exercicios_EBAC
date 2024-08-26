            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu acesse a página de checkout do portal EBAC

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando deixar de preencher algum campo obrigatório marcado com asteriscos
            Então deve exibir uma mensagem de alerta "Campo obrigatório deve ser preenchido!"

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando eu informar o e-mail "111.com.br"
            Então deve exibir uma mensagem de erro "E-mail inválido!"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Quando eu não informar o campo "nome"
            Então deve exibir uma mensagem de alerta "O campo nome é de preenchimento obrigatório!"

            Esquema do Cenário: Cadastrar campos vazios
            Quando eu não digitar o <campo>
            Então deve exibir a <mensagem> de alerta

            Exemplos:
            | campo       | mensagem                                            |
            | "nome"      | "O campo nome é de preenchimento obrigatório!"      |
            | "sobrenome" | "O campo sobrenome é de preenchimento obrigatório!" |
            | "país"      | "O campo país é de preenchimento obrigatório!"      |
            | "endereço"  | "O campo endereço é de preenchimento obrigatório!"  |
            | "cidade"    | "O campo cidade é de preenchimento obrigatório!"    |
            | "CEP"       | "O campo CEP é de preenchimento obrigatório!"       |
            | "telefone"  | "O campo telefone é de preenchimento obrigatório!"  |
            | "e-mail"    | "O campo e-mail é de preenchimento obrigatório!"    |