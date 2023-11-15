require 'roo'
class RegisterPage < SitePrism::Page
    @xlsx = Roo::Spreadsheet.open('C:\Fernanda\ProjetosEstágioRuby\AutomacaoForwardCarRuby\excel\ForwardCar.xlsx')
    $nome1=@xlsx.cell(2,1)
    $sobrenome1=@xlsx.cell(2,2)
    $username1=@xlsx.cell(2,3)
    $senha1=@xlsx.cell(2,4)
    $nome2=@xlsx.cell(4,1)
    $sobrenome2=@xlsx.cell(4,2)
    $username2=@xlsx.cell(4,3)
    $senha2=@xlsx.cell(4,4)
    $nome3=@xlsx.cell(3,1)
    $sobrenome3=@xlsx.cell(3,2)
    $username3=@xlsx.cell(3,3)
    $senha3=@xlsx.cell(3,4)
    set_url "#/register"
    element :firstName, :xpath, "//*[@id='registration-form']/fieldset/div[1]/input"
    element :lastName, :xpath, "//*[@id='registration-form']/fieldset/div[2]/input"
    element :userName, :xpath, "//*[@id='registration-form']/fieldset/div[3]/input"
    element :password, :xpath, "//*[@id='registration-form']/fieldset/div[4]/input"
    element :buttonRegister, :xpath, "//*[@id='registration-form']/fieldset/div[5]/button"
    element :buttonGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/a/span[1]"
    element :buttoRegisterGuest, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[5]/ul/li[2]/a"
  
      
    def realizarCadastro
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
