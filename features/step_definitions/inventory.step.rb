Dado('clico no botao search na pagina inicial') do
  inventory.clicarBotaoSearchPaginaHome
end

Dado('clico no cadeado') do
inventory.clicarCadeado
end

Dado('clico em edit de algum modelo') do
inventory.editarVeiculo
end

Quando('modifico as informacoes do campo price') do
inventory.digitarCampoPrice
end

Entao('sistema me mostra uma mensagem car updated') do
inventory.validacaoMensagem
end