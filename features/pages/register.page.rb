class RegisterPage < SitePrism::Page

    set_url "/cars-app/#/register"
    element :firstName, :xpath, "//*[@id='registration-form']/fieldset/div[1]/input"
    element :lastName, :xpath, "//*[@id='registration-form']/fieldset/div[2]/input"
    element :userName, :xpath, "//*[@id='registration-form']/fieldset/div[3]/input"
    element :password, :xpath, "//*[@id='registration-form']/fieldset/div[4]/input"
    element :buttonRegister, :xpath, "//*[@id='registration-form']/fieldset/div[5]/button"

    def realizarCadastro
        firstName.set "Fernanda"
        lastName.set "Zimmer"
        userName.set "zimmer"
        password.set "1234"
        buttonRegister.click
    end
end
