Dado('que estou no aplicartivo cadastro do produto') do
    @produto = Cadastro.new
    @produto.validar_home
end
  
Quando('clico em novo') do
    @produto.clique_novo
end
  
Quando('preencho o formulario com as informações') do
   @produto.preencho_cadastro
   @produto.clique_salvar
end
  
Então('Valido no grid o produto cadastrado') do
   @produto.validar_cadastro
end

Quando('clico em editar no produto') do
    @produto.clique_novo
    @produto.preencho_cadastro
    @produto.clique_salvar
    @produto.clique_editar
end
  
Quando('altero o codigo') do
    @produto.preencher_codigo
    @produto.clique_salvar
end
  
Então('Valido a alteração no grid do produto editado') do
    @produto.validar_cadastro
end

Quando('clico em deletar') do
    @produto.clique_novo
    @produto.preencho_cadastro
    @produto.clique_salvar
    @produto.clique_deletar
end
  
Quando('confirmo a mensagem de exclusão') do
    @produto.confirmacao_delete
end
  
Então('valido no grid o produto excluido') do
    @produto.validar_lista_vazia
end

Quando('clico em saida') do
    @produto.clique_novo
    @produto.preencho_cadastro
    @produto.clique_salvar
    @produto.clique_saida
end
  
Quando('preencho as informações do estoque') do
    @produto.preencher_estoque
    @produto.salvar_saida
end

Então('Valido no grid a quantidada do produto menor') do
    @produto.validar_saida
end

Quando('clico no menu') do
    @produto.clique_novo
    @produto.preencho_cadastro
    @produto.clique_salvar
    @produto.clique_saida
    @produto.preencher_estoque
    @produto.salvar_saida
    @produto.clique_menu
end
  
Quando('clico em Relatorio') do
    @produto.clique_relatorio
    @produto.clique_inventario
end
  
Quando('clico em gerar Relatorio em PDF') do
    @produto.gerar_relatorio
    @produto.visualizar_relatorio
end
  
Então('Vsisualizo o arquivo PDF com as informações de saida do estoque') do
    @produto.validar_relatorio_pdf
end