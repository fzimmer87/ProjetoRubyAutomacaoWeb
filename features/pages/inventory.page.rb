class InventoryPage < SitePrism::Page

set_url "#/inventory"
element :botaoSearchPaginaHome, :xpath, "/html/body/div[1]/div[1]/div/div/div[2]/ul/li[2]/a"
element :botaoSearchPaginaInventory, :xpath, "/html/body/div[1]/div[2]/div/div/div/div/div[2]/div[2]/a[2]/label/input"
element :cadeadoInventory, :id, 'admin'
element :botaoEdit, :css, '.col-sm-4:nth-child(1) .center-block:nth-child(2)'
element :botaoPrice, :id, 'price'
element :botaoSave, :xpath, '/html/body/div[4]/div/div/div/div[2]/div/form/div[17]/div/button[3]'
element :mensagemCarupdated, :css, ".alert .ng-binding"

def clicarBotaoSearchPaginaHome
    botaoSearchPaginaHome.click
end


def clicarCadeado
    cadeadoInventory.click
end
def editarVeiculo
  botaoEdit.click
  end

  def digitarCampoPrice
    botaoPrice.set "50000"
    botaoSave.click
  end
def validacaoMensagem
    expect(mensagemCarupdated.text).to eql "car updated"
end
end