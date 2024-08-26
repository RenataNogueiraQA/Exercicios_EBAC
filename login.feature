            #language: pt

            Funcionalidade: Tela de Login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação na plataforma da EBAC

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "senha@123"
            Então será aberta a tela de checkout

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos”
            Quando eu digitar o usuário "joao@ebac.com.br"
            E a senha "f1f2f3f4"
            Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario             | senha       | mensagem     |
            | "joao@ebac.com.br"  | "teste@123" | "Olá João!"  |
            | "maria@ebac.com.br" | "teste@123" | "Olá Maria!" |
            | "jose@ebac.com.br"  | "teste@123" | "Olá José!"  |
