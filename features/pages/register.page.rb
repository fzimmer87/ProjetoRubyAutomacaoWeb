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
        firstName.set "Fernanda"
        lastName.set "Zimmer"
        userName.set "zimmer3"
        password.set "1234"
        buttonRegister.click
    end
    def realizarCadastroNovamente
        buttonGuest.click
        buttoRegisterGuest.click
        firstName.set "Fernanda"
        lastName.set "Zimmer"
        userName.set "zimmer4"
        password.set "1234"
        buttonRegister.click
    end
end
