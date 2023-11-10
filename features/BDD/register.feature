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
Quando digito dados solicitados com username existente
Entao sistema nao realiza cadastro e continua na mesma pagina

@CT003
Cenario: Realizar Login com dados cadastrados
Quando que realizo cadastro na pagina da ForwardCar
E preencho campos de login com dados cadastrados
Entao sistema retorna para pagina principal com meu nome no lugar de Guest

@CT004
Cenario: Realizar pesquisa por cor de carro
E clico no botao search
Quando digito as cores no campo de pesquisa
Entao sistema me retorna modelos com cores digitadas

@CT005
Cenario: Realizar pesquisa por nome de modelo de carro
E clico no botao search
Quando digito os modelos no campo de pesquisa
Entao sistema me retorna modelos com marca digitada
