Dado('realizo login') do
  # register.realizarCadastroParaLogin
  login.realizarLogin
  end
  
  Dado('clico em LoanApplication') do
    emprestimo.clicarBotaoLoanApplication
  end
  
  Quando('digito meus dados nos campos de cadastro de emprestimo') do
    emprestimo.preencherDados
  end
  
  Quando('clico LoanStatus') do
    sleep 5
    emprestimo.clicarBotaoLoanStatus
  end
  
  Entao('consigo consultar dados do meu emprestimo') do
    emprestimo.consultarEmprestimo
  end