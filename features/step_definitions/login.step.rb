Quando('que realizo cadastro na pagina da ForwardCar') do
    excel.load
  end
  
  Quando('preencho campos de login com dados cadastrados') do
    excel.login_de_usuario
  end
  
  Entao('sistema retorna para pagina principal com meu nome no lugar de Guest') do
    login.conferirUrlHome
  end