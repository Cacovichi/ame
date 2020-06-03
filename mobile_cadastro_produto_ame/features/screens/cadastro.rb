class Cadastro < Appium::Driver

    def initialize
        @home = "Product Registration"
        @btn_novo = "Button1"
        @menu = "Button3"
        @codigo = "txt_codigo"
        @desc = "txt_descricao"
        @unidade = "txt_unidade"
        @quant = "txt_quantidade"
        @valor_unitario = "txt_valunit"
        @btnSalvar = "btn_gravar_assunto" #"SAVE"
        @btnDeletar = "deletar"
        @btnEditar = "editar"
        @btnSaida = "saida"
        @prodCadastrado = "linha_parte1"
        @mensagem_deleta = "message"
        @confirmaca_deleta = "YES"
        @lista_vazia = "scrollView1"
        @qnt_saida = "txt_qtdsaida"
        @motivo_saida = "txt_motivo"
        @btn_salvar_saida = "btn_salvar"
        @qtn_real = "txt_quantidade"
        @btn_relatorio = "btn_relatorios"
        @inventario = "inventario"
        @btn_ok = "	OK"
        @gerar_relatorio = "btn_gerar"
        @visualizar_relatorio = "btn_abrir"
        @validar_relatorio = "datafile"
        @digite_codigo = CONFIG['Cadastro']['codigo']
        @digite_desc = CONFIG['Cadastro']['descricao']
        @digite_unt = CONFIG['Cadastro']['unidade']
        @digite_quat = CONFIG['Cadastro']['quantidade']
        @digite_valor = CONFIG['Cadastro']['valor_unitario']
        @digite_saida = CONFIG['Cadastro']['saida']
        @motivo = CONFIG['Cadastro']['motivo_venda']
    end

    def validar_home 
        xpath("//*[@text='#{@home}']").displayed?
    end 

    def clique_novo
        id(@btn_novo).click 
    end

    def preencho_cadastro
        id(@desc).click
        id(@desc).send_keys(@digite_desc)
        id(@unidade).click
        id(@unidade).send_keys(@digite_unt)
        id(@quant).click
        id(@quant).send_keys(@digite_quat)
        id(@valor_unitario).click
        id(@valor_unitario).send_keys(@digite_valor)
    end

    def clique_salvar
        id(@btnSalvar).click
    end

    def validar_cadastro
        id(@prodCadastrado).displayed?
    end

    def clique_editar
        id(@btnEditar).click
    end

    def preencher_codigo
        id(@codigo).click
        id(@codigo).send_keys(@digite_codigo)
    end
    
    def clique_deletar
        id(@btnDeletar).click
    end

    def confirmacao_delete
        xpath("//*[@text='#{@confirmaca_deleta}']").click
    end

    def validar_lista_vazia
        id(@lista_vazia).displayed?
    end

    def clique_saida
        id(@btnSaida).click
    end

    def preencher_estoque
        id(@qnt_saida).click
        id(@qnt_saida).send_keys(@digite_saida)
        id(@motivo_saida).click 
        id(@motivo_saida).send_keys(@motivo)
    end

    def salvar_saida
        id(@btn_salvar_saida).click
    end

    def validar_saida
        id(@qtn_real).displayed?
    end

    def clique_menu
        id(@menu).click
    end

    def clique_relatorio
        id(@btn_relatorio).click
    end

    def clique_inventario
        id(@inventario).click 
    end

    def clique_botao_ok
        id(@btn_ok).click
    end

    def gerar_relatorio
        id(@gerar_relatorio).click 
    end

    def visualizar_relatorio
        id(@visualizar_relatorio).click 
    end

    def validar_relatorio_pdf
        sleep 3 
        @driver.back
        id(@validar_relatorio).displayed?
    end
end