Dado('clico no botao search na pagina inicial') do
    inventory.clicarBotaoSearchPaginaHome
  end
  
  Quando('digito o modelo Acura no campo de pesquisa') do
    sleep 5
  inventory.digitarSearchInventory
  end
  
  Entao('sistema me retorna modelos digitadas') do
    sleep 5
    inventory.encontrarNomeAcuraNaTela
  end