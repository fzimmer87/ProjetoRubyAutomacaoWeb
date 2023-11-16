Dado('clico no botao search na pagina inicial') do
    inventory.clicarBotaoSearchPaginaHome
  end
  
  Quando('digito o modelo Acura no campo de pesquisa') do
    sleep 3
  inventory.digitarSearchInventory
  end
  
  Entao('sistema me retorna modelos digitadas') do
    inventory.encontrarNomeAcuraNaTela
  end