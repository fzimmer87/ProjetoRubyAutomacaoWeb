Dado('realizo login') do
  
  register.realizarCadastroEmprestimo
  sleep 5
  register.realizarLoginEmprestimo
  end
  
  Dado('clico em LoanApplication') do
    sleep 5
    emprestimo.clicarBotaoLoanApplication
  end
  
  Quando('digito meus dados nos campos de cadastro de emprestimo') do
    sleep 5
    excelTabela3.realizaEmprestimo
  end
  Quando('clico LoanStatus') do
    sleep 5
    emprestimo.clicarBotaoLoanStatus
  end
  
  Entao('consigo consultar dados do meu emprestimo') do
    emprestimo.consultarEmprestimo
  end