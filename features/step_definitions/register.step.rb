Dado('que estou na pagina de cadastro da ForwardCar') do
  excel.load
  end
  
  Quando('digito dados solicitados corretamente') do
    # register.firstName.send_keys('teste')
    excel.cadastro_de_usuario
    
  end
  
  Entao('sitema me retorna para pagina de login') do
   login.conferirURLLogin
   
   #teste2
   
  end
  Quando('digito dados solicitados com username ja cadastrado') do
    excelTabela2.cadastro_de_usuario_mesmo_username
    
  end
  
  Entao('sistema nao realiza cadastro novo cadastro') do
    login.conferirUrlRegister
  end
  
 

  