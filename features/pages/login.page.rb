class LoginPage  < SitePrism::Page
    
    
    element :userNameLogin, :xpath, "//*[@id='login-form']/fieldset/div[1]/input"
    element :passwordLogin, :xpath, "//*[@id='login-form']/fieldset/div[2]/input"
    element :signLogin, :xpath, "//*[@id='login-form']/fieldset/div[4]/div/div/a"
    # //*[@id="login-form"]/fieldset/div[4]/div/div/a
    def conferirURLLogin
        expect(page).to have_current_path('http://localhost:3434/cars-app/#/login',url:true)
    end
    def conferirUrlRegister
        expect(page).to have_current_path('http://localhost:3434/cars-app/#/register',url:true)
    end
end
