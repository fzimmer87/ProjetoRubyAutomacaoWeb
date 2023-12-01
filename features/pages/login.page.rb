class LoginPage  < SitePrism::Page

    set_url "#/login"
    element :userNameLogin, :xpath, "//*[@id='login-form']/fieldset/div[1]/input"
    element :passwordLogin, :xpath, "//*[@id='login-form']/fieldset/div[2]/input"
    element :signLogin, :xpath, "//*[@id='login-form']/fieldset/div[4]/div/div/a"
    element :buttonGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/a/span[1]"
    element :buttonLogin, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[1]/a"
    element :buttonLogInGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[1]/a"
    element :userNameLogin, :xpath, "//*[@id='login-form']/fieldset/div[1]/input"
    element :passwordLogin, :xpath, "//*[@id='login-form']/fieldset/div[2]/input"
    element :buttonSignLogin, :xpath, "//*[@id='login-form']/fieldset/div[3]/button"
   
    def conferirURLLogin
        expect(page).to have_current_path('http://localhost:3434/cars-app/#/login',url:true)
    end
    def conferirUrlRegister
        
        expect(page).to have_current_path('http://localhost:3434/cars-app/#/register',url:true)
       
    end
    def conferirUrlHome
        expect(page).to have_current_path('http://localhost:3434/cars-app/#/home',url:true)
    end
    def clicarLoginNaPaginaHome
        buttonGuest.click
        buttonLogInGuest.click
    
    end
    def realizarLogin (username, password)
        buttonGuest.click
        buttonLogin.click
        userNameLogin.set (username)
        passwordLogin.set (password)
        buttonSignLogin.click
    end
    def realizarCadastroParaLogin 
        sleep 2
        buttonGuestSuperior.click
        sleep 2
        buttonRegisterGuest.click
        sleep 2
        firstName.send_keys(firstname)
        lastName.send_keys(lastname)
        userName.send_keys(username)
        passWord.send_keys(password)
        sleep 2
        buttonRegisterRegistro.click
    end
    def realizarLoginEmprestimos (username, password)
        buttonGuest.click
        buttonLogin.click
        userNameLogin.set (username)
        passwordLogin.set (password)
        buttonSignLogin.click
    end
end
