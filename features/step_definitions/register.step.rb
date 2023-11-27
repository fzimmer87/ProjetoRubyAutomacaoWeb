Dado('que estou na pagina de cadastro da ForwardCar') do
  register.load
  end
  
  Quando('digito dados solicitados corretamente') do
    register.realizarCadastro 

  end
  
  Entao('sitema me retorna para pagina de login') do
   login.conferirURLLogin
   
   #teste2
   
  end
  Quando('digito dados solicitados com username ja cadastrado') do
    register.realizarCadastro
    register.realizarCadastroNovamente
  end
  
  Entao('sistema nao realiza cadastro novo cadastro') do
    login.conferirUrlRegister
  end
  
 

  