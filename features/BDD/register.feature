#language: pt
Funcionalidade: Testar página register da plataforma ForwardCar

Contexto: 
Dado que estou na pagina de cadastro da ForwardCar

@CT001
Cenario: Realizar cadastro com sucesso
Quando digito dados solicitados corretamente
Entao sitema me retorna para pagina de login 

@CT002
Cenario: Não realizar cadastro com username existente
Quando digito dados solicitados com username ja cadastrado
Entao sistema nao realiza cadastro novo cadastro

@CT003
Cenario: Realizar Login com dados cadastrados
Quando que realizo cadastro na pagina da ForwardCar
E preencho campos de login com dados cadastrados
Entao sistema retorna para pagina principal com meu nome no lugar de Guest

@CT004
Cenario: Realizar pesquisa por cor de carro
E clico no botao search na pagina inicial
Quando digito o modelo Acura no campo de pesquisa
Entao sistema me retorna modelos digitadas

@CT005
Cenario: Realizar empréstimo
E realizo login
E clico em LoanApplication
Quando digito meus dados nos campos de cadastro de emprestimo
E clico LoanStatus
Entao consigo consultar dados do meu emprestimo
