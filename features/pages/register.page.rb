
class RegisterPage < SitePrism::Page

   
    set_url "#/register"
    element :firstName, :xpath, "//*[@id='registration-form']/fieldset/div[1]/input"
    element :lastName, :xpath, "//*[@id='registration-form']/fieldset/div[2]/input"
    element :userName, :xpath, "//*[@id='registration-form']/fieldset/div[3]/input"
    element :passWord, :xpath, "//*[@id='registration-form']/fieldset/div[4]/input"
    element :buttonGuestSuperior, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/a/span[2]"
    element :buttonRegisterGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[2]/a"
    element :buttonRegisterRegistro, :xpath, "//*[@id='registration-form']/fieldset/div[5]/button"
    element :home, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[1]/a"
    element :userNameLogin, :xpath, "//*[@id='login-form']/fieldset/div[1]/input"
    element :passWordLogin, :xpath, "//*[@id='login-form']/fieldset/div[2]/input"
    element :buttonSignLogin, :xpath, "//*[@id='login-form']/fieldset/div[3]/button"
    element :buttonLoginSuperior, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[1]/a"
    
    def realizarCadastro(firstname, lastname, username, password)
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
       
    def realizarCadastroEmprestimo
        buttonGuestSuperior.click
        sleep 2
        buttonRegisterGuest.click
        firstName.set $nome2
        lastName.set $sobrenome2
        userName.set $username2
        passWord.set $senha2
        buttonRegisterRegistro.click
    end
    def realizarLoginEmprestimo
        buttonGuestSuperior.click
        buttonLoginSuperior.click
        userNameLogin.set $username2
        passWordLogin.set $senha2
        buttonSignLogin.click
    end
    def criarCadastroeLoginParaEmprestimo (firstname, lastname, username, password)
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


end
