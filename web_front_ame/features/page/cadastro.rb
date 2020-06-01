class Cadastro < SitePrism::Page

    def digite_endereco_email
        cadastro = Elementcadastro.new
        cadastro.endereco_email.click 
        cadastro.endereco_email.set(CONFIG['Cadastro']['email'])
    end

    def clique_cria_conta
        cadastro = Elementcadastro.new
        cadastro.crie_conta.click 
    end

    def informacoes_pessoais 
        cadastro = Elementcadastro.new
        cadastro.genero.click 
        cadastro.nome.click 
        cadastro.nome.set(CONFIG['Cadastro']['nome'])
        cadastro.sobrenome.click 
        cadastro.sobrenome.set(CONFIG['Cadastro']['sobrenome'])
        cadastro.senha.click 
        cadastro.senha.set(CONFIG['Cadastro']['senha'])
    end

    def informacoes_endereco
        cadastro = Elementcadastro.new
        cadastro.endereco.click
        cadastro.endereco.set(CONFIG['Cadastro']['endereco'])
        cadastro.cidade.click 
        cadastro.cidade.set(CONFIG['Cadastro']['cidade'])
        cadastro.opcao_estado.click 
        cadastro.cep.click
        cadastro.cep.set(CONFIG['Cadastro']['cep'])
        cadastro.tel_cel.click 
        cadastro.tel_cel.set(CONFIG['Cadastro']['tel_cel'])
        cadastro.referencia.click 
        cadastro.referencia.set(CONFIG['Cadastro']['referencia'])
    end 

    def clique_registro
        cadastro = Elementcadastro.new
        cadastro.registro.click
    end
end