Dado("que estou no site") do 
    visit $URL_AME
end 

Quando("clico em {string}") do |assinar|
   $login = Login.new
   $login.clicar_assinar
end

Quando("realizo o login") do
    $login.preenchendo_login
    $login.clique_confirmar
end

Então("valido o login com sucesso {string}") do |mensagem_sucesso|
    $login.validar_login
end

Quando("preencho o usuario e a senha invalida") do
    $login.login_invalido
    $login.clique_confirmar
end
  
Então("valido a mensagem de login invalido") do
    $login.validar_login_invalido
end

Quando("não preencho os campo usuario e senha") do
    $login.login_em_branco
    $login.clique_confirmar
end
  
Então("valido a mensagem de erro") do
    $login.validar_login_em_branco
end