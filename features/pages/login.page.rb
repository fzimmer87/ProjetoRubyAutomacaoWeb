class LoginPage  < SitePrism::Page
    
    element :userNameLogin, :xpath, "//*[@id='login-form']/fieldset/div[1]/input"
    element :passwordLogin, :xpath, "//*[@id='login-form']/fieldset/div[2]/input"
    element :signLogin, :xpath, "//*[@id='login-form']/fieldset/div[4]/div/div/a"
    # //*[@id="login-form"]/fieldset/div[4]/div/div/a
    def acharMensagemLoginNaTela
        expect(mensagemLogin.text).to eql "Sign In"
    end
end
