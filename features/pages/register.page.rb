require 'roo'
class RegisterPage < SitePrism::Page
    
   
    set_url "#/register"
    element :firstName, :xpath, "//*[@id='registration-form']/fieldset/div[1]/input"
    element :lastName, :xpath, "//*[@id='registration-form']/fieldset/div[2]/input"
    element :userName, :xpath, "//*[@id='registration-form']/fieldset/div[3]/input"
    element :password, :xpath, "//*[@id='registration-form']/fieldset/div[4]/input"
    element :buttonRegister, :xpath, "//*[@id='registration-form']/fieldset/div[5]/button"
    element :buttonGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/a/span[1]"
    element :buttoRegisterGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[2]/a"
  
    def realizarCadastro 
        buttonGuest.click
        buttoRegisterGuest.click
        firstName.set $nome1
        lastName.set $sobrenome1
        userName.set $username1
        password.set $senha1
        buttonRegister.click
    end
       
    def realizarCadastroNovamente
        buttonGuest.click
        buttoRegisterGuest.click
        firstName.set $nome2
        lastName.set $sobrenome2
        userName.set $username2
        password.set $senha2
        buttonRegister.click
    end
    def realizarCadastroParaLogin
        firstName.set $nome3
        lastName.set $sobrenome3
        userName.set $username3
        password.set $senha3
        buttonRegister.click
    end
end
