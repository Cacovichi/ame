Dado('que estou no aplicativo') do
   @cadastro = Cadastro.new
   @cadastro.validar_home
end
  
Quando('clico no menu cadastro') do
    @cadastro.clique_menu
    @cadastro.clicar_cadastro
end

Quando('preencho o formulario') do
    @cadastro.preencher_cadastro
    @cadastro.clique_salvar
    @cadastro.confirmacao_cadastro
end
  
Então('valido a mensagem {string}') do |mensagem|
   @cadastro.validar_cadastro
end

Quando('clico no cadastro do cliente') do
    @cadastro.clique_menu
    @cadastro.clicar_cadastro
    @cadastro.preencher_cadastro
    @cadastro.clique_salvar
    @cadastro.confirmacao_cadastro
    @cadastro.clicando_elemento_cadastrado
end

Quando('clico no botão excluir no cadastro') do
    @cadastro.clique_excluir
    @cadastro.confirmacao_exclusao
end
  
Então('valido que o cadastro não aparece no listagem') do
   @cadastro.validar_exclusao
end

Quando('clico no menu Sobre App') do
    @cadastro.clique_menu
end
  
Quando('clico em sobre o App') do
    @cadastro.clique_sobreApp
end
  
Então('devo validar o texto') do
    @cadastro.validar_SobreApp
end

Quando('clico no menu exportar dados') do
    @cadastro.clique_menu
    @cadastro.clique_exportar_dados
end
  
Então('valido os menus: exportar excel, Backup completo e restaurar Backup') do
    @cadastro.validar_menus_exportar_dados
end