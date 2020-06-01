#language: pt
#utf-8

Funcionalidade: Login
    Eu como usuario do site
    Quero efetuar o login 
    Para realizar compras no site 

Contexto: Login 
    Dado que estou no site
    Quando clico em "assinar em"
    
Cenario: Login com sucesso 
    Quando realizo o login 
    Então valido o login com sucesso "Welcome to your account. Here you can manage all of your personal information and orders."

Cenario: Login invalido
    Quando preencho o usuario e a senha invalida
    Então valido a mensagem de login invalido

Cenario: Login em branco 
    Quando não preencho os campo usuario e senha 
    Então valido a mensagem de erro
