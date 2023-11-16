require 'roo'
class InventoryPage < SitePrism::Page
@xlsx = Roo::Spreadsheet.open('C:\Fernanda\ProjetosEstágioRuby\AutomacaoForwardCarRuby\excel\ForwardCar.xlsx')
$carro1 =@xlsx.cell(5,1)
set_url "#/inventory"
element :botaoSearchPaginaHome, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[2]/a"
element :botaoSearchPaginaInventory, :xpath, "/html/body/div[1]/div[2]/div/div/div/div/div[2]/div[2]/a[2]/label/input"
element :acurarb, :css, ".col-sm-4:nth-child(1) .panel-heading .ng-binding"
def clicarBotaoSearchPaginaHome
    botaoSearchPaginaHome.click
end

def digitarSearchInventory
    botaoSearchPaginaInventory.set $carro1
end
def encontrarNomeAcuraNaTela
    expect(acurarb.text).to eql "Acura RLX-AWD"
end

    
end