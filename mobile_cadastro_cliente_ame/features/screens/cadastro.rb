class Cadastro < Appium::Driver

    def initialize
        @menu = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageButton"
        @home = "Cadastro de Clientes"
        @novo_cadastro = "floating_novo"
        @tela_cadastro = "Básico"
        @nome = "editNome"
        @cpf = "editCpf"
        @rg = "editRg"
        @endereco = "editEndereco"
        @btnsalvar = "btnSalvar"
        @btnexcluir = "btnExcluir"
        @sobreApp = "floating_sobre"
        @contato = "Entre em contato"
        @txtsobreApp = "action_bar" 
        @mensagem_sucesso = "Cadastro efetuado com sucesso"
        @nome_lista = "nomeLista"
        @btn_ok = "OK"
        @btn_completo = "rdCompleto"
        @btn_sim = "SIM"
        @exportar_dados = "floating_exportar"
        @mensagem_exclusao = "linearLayoutClientes"
        @exportar_excel = "btnExportar"
        @backup_completo = "btnBackup"
        @restaurar_backup = "btnRestaurar"
        @descnome =   CONFIG['cadastro']['nome']
        @digite_cpf = CONFIG['cadastro']['cpf']
        @digite_rg =  CONFIG['cadastro']['rg']
        @digite_endereco = CONFIG['cadastro']['endereco']
    end
    
    def validar_home
        xpath("//*[@text='#{@home}']").displayed?
    end

    def clique_menu
        xpath(@menu).click
        sleep 2
    end
    
    def clicar_cadastro
        id(@novo_cadastro).click
        xpath("//*[@text='#{@tela_cadastro}']").displayed?
    end

    def preencher_cadastro
        id(@nome).click 
        id(@nome).send_keys(@descnome)
        id(@cpf).send_keys(@digite_cpf)
        id(@rg).send_keys(@digite_rg)
    end 

    def clique_salvar 
        id(@btnsalvar).click
    end

    def confirmacao_cadastro
        sleep 3
        xpath("//*[@text='#{@mensagem_sucesso}']").displayed?
        xpath("//*[@text='#{@btn_ok}']").click
        @driver.back
    end

    def validar_cadastro
        id(@nome_lista).displayed?
    end

    def clique_excluir
        id(@btnexcluir).click 
    end
   
    def clique_sobreApp
        sleep 2
        id(@sobreApp).click 
    end 

    def validar_SobreApp
        id(@txtsobreApp).displayed?
    end

    def clicando_elemento_cadastrado
        id(@nome_lista).click
    end

    def confirmacao_exclusao
        xpath("//*[@text='#{@btn_sim}']").click
    end

    def validar_exclusao
        id(@mensagem_exclusao).displayed?
    end

    def clique_exportar_dados
        id(@exportar_dados).click
    end

    def validar_menus_exportar_dados
        id(@exportar_excel).displayed?
        id(@backup_completo).displayed?
        id(@restaurar_backup).displayed?
    end
end