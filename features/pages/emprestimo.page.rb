class EmprestimoPage < SitePrism::Page
    set_url "/"
    element :botaoLoanApplication, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[4]/a"
    element :campoEndereco, :id, "address-line1"
    element :campoCity, :id, "city"
    element :campoDataNascimento, :id, "dob"
    element :campoYearly, :id, "yIncome"
    element :campoLoanAmount, :id, "lAmount"
    element :botaoApply, :css, ".btn-toolbar > .btn:nth-child(1)"
    element :botaoOk, :css, ".modal-footer > .btn"
    element :botaoLoanStatus, :css, ".col-md-3:nth-child(4) p"
    element :consulta, :id, "1700108379510-uiGrid-0006-header-text"
    element :campoNomeEmprestimo, :xpath, "/html/body/div[1]/div[2]/div/div/form/div[1]/div[1]/div[1]/input"
    element :campoSobrenomeEmprestimo, :xpath, "/html/body/div[1]/div[2]/div/div/form/div[1]/div[1]/div[2]/input"
    element :buttonHome, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[1]/a"
 
  
    def preencherDadosEmprestimo(nome,sobrenome,endereco,cidade,nascimento,valorEmprestimo)
        campoNomeEmprestimo.set (nome)
        campoSobrenomeEmprestimo.set (sobrenome)
        campoEndereco.set (endereco)
        campoCity.set (cidade)
        campoDataNascimento.set (nascimento)
        campoYearly.set (valorEmprestimo)
        botaoApply.click
        botaoOk.click
        botaoLoanApplication.click
    end
    def clicarBotaoLoanStatus
        botaoLoanStatus.click
    end
    def consultarEmprestimo
        expect(page).to have_current_path('http://localhost:3434/cars-app/#/loanStatus',url:true)
    end
    def clicarBotaoLoanApplication
        sleep 3
        buttonHome.click
        botaoLoanApplication.click
    end
end