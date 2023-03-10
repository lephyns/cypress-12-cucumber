Feature: cadastro de usuário

    Este caso de uso permite que novos usuários possam se cadastrar no sistema para realizar operações de forma autenticada.

    Background: acessar tela de cadastro
        Given que acesso a página de cadastro do site Publicazo

    Scenario: submeter formulário de cadastro com sucesso
        When submeto o formulário de cadastro com dados válidos
        Then devo ver a mensagem "Bem-vindo! Você se registrou com sucesso."

    Scenario: submeter formulário com campos vazios
        When não preencho nenhum campo
        Then devo ver as mensagens "Fullname não pode ficar em branco", "Password não pode ficar em branco" e "Email não pode ficar em branco"

    Scenario: submeter formulário com senhas diferentes
        When submeto o formulário com senhas divergentes
        Then devo ver a mensagem "Password confirmation não é igual a Password"

    # Scenario: submeter formulário com e-mail inválido
    #     When submeto o formulário com um e-mail inválido
    #     Then devo ver a mensagem ""