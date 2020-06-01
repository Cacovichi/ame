Quando("digito o endereço de e-mail") do
    $cadastro = Cadastro.new
    $login = Login.new
    $login.clicar_assinar
    $cadastro.digite_endereco_email
    $cadastro.clique_cria_conta
end
  
Quando("preencho as informações de cadastro") do
    $cadastro.informacoes_pessoais
    $cadastro.informacoes_endereco
    $cadastro.clique_registro
end
  
