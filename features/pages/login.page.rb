class LoginPage  < SitePrism::Page
    
    
    element :userNameLogin, :xpath, "//*[@id='login-form']/fieldset/div[1]/input"
    element :passwordLogin, :xpath, "//*[@id='login-form']/fieldset/div[2]/input"
    element :signLogin, :xpath, "//*[@id='login-form']/fieldset/div[4]/div/div/a"
    element :buttonGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/a/span[1]"
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
    def clicarLoginNaPaginaHome
        buttonGuest.click
        buttonLogInGuest.click
    end
end
