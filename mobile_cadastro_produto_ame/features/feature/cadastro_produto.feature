#language: pt

Funcionalidade: Cadastro de produtos 
    Eu como usario 
    Quero cadastrar meus produtos 
    Para gerenciar o estoque 

Contexto: Cadastro do produto 
    Dado que estou no aplicartivo cadastro do produto 

Cenario: Cadastro 
    Quando clico em novo 
    E preencho o formulario com as informações 
    Então Valido no grid o produto cadastrado 

Cenario: Edição 
    Quando clico em editar no produto 
    E altero o codigo
    Então Valido a alteração no grid do produto editado 

Cenario: Exclusão 
    Quando clico em deletar 
    E confirmo a mensagem de exclusão 
    Então valido no grid o produto excluido 

Cenario: Saida de produto do estoque 
    Quando clico em saida 
    E preencho as informações do estoque 
    Então Valido no grid a quantidada do produto menor 

Cenario: Relatorio de inventario
    Quando clico no menu 
    E clico em Relatorio
    E clico em gerar Relatorio em PDF
    Então Vsisualizo o arquivo PDF com as informações de saida do estoque