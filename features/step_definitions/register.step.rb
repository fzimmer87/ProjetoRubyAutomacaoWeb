Dado('que estou na pagina de cadastro da ForwardCar') do
  register.load
  end
  
  Quando('digito dados solicitados corretamente') do
    register.realizarCadastro

  end
  
  Entao('sitema me retorna para pagina de login') do
   login.conferirURLLogin
   
   
  end
  Quando('digito dados solicitados com username ja cadastrado') do
    register.realizarCadastro
    register.realizarCadastroNovamente
  end
  
  Entao('sistema nao realiza cadastro novo cadastro') do
    login.conferirUrlRegister
  end
  
  Quando('que realizo cadastro na pagina da ForwardCar') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('preencho campos de login com dados cadastrados') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('sistema retorna para pagina principal com meu nome no lugar de Guest') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Dado('clico no botao search') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('digito as cores no campo de pesquisa') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('sistema me retorna modelos com cores digitadas') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Quando('digito os modelos no campo de pesquisa') do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Entao('sistema me retorna modelos com marca digitada') do
    pending # Write code here that turns the phrase above into concrete actions
  end