#language: pt

Funcionalidade: Cadastro de clientes 
    Eu como usuario
    Quero efetuar cadastro
    Para manter minha base de dados de cliente atualizada

Contexto: Cadastro
    Dado que estou no aplicativo

Cenario: Novo cadastro
    Quando clico no menu cadastro
    E preencho o formulario
    Então valido a mensagem "Cadastro efetuado com sucesso"

Cenario: Exclusão do cadastro
    Quando clico no cadastro do cliente
    E clico no botão excluir no cadastro
    Então valido que o cadastro não aparece no listagem

Cenario: Sobre o app
    Quando clico no menu Sobre App 
    E clico em sobre o App
    Então devo validar o texto 

Cenario: Exportar dados 
    Quando clico no menu exportar dados
    Então valido os menus: exportar excel, Backup completo e restaurar Backup