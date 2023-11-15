Quando('que realizo cadastro na pagina da ForwardCar') do
    register.realizarCadastroParaLogin
  end
  
  Quando('preencho campos de login com dados cadastrados') do
    login.realizarLogin
  end
  
  Entao('sistema retorna para pagina principal com meu nome no lugar de Guest') do
    register.conferirUrlHome
  end