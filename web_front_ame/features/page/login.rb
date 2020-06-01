class Login < SitePrism::Page

    def preenchendo_login
        login = ElementLogin.new
        login.user.click 
        login.user.set(CONFIG['CREDENCIAL']['Usuario'])
        login.password.click 
        login.password.set(CONFIG['CREDENCIAL']['senha'])
    end

    def clicar_assinar
        login = ElementLogin.new 
        login.assine.click 
    end

    def clique_confirmar
        login = ElementLogin.new 
        login.confirme.click
    end

    def validar_login
        assert_text("Welcome to your account. Here you can manage all of your personal information and orders.")
    end

    def login_invalido 
        login = ElementLogin.new
        login.user.click 
        login.user.set(CONFIG['Login_invalido']['Usuario'])
        login.password.click 
        login.password.set(CONFIG['Login_invalido']['senha'])
    end

    def validar_login_invalido
        assert_text("Invalid password.")
    end

    def login_em_branco
        login = ElementLogin.new
        login.user.click 
        login.password.click 
    end

    def validar_login_em_branco
        assert_text("An email address required.")
    end
end