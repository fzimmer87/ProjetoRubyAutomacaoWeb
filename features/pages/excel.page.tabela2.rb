require 'roo'
class ExcelPageTabela2 < SitePrism::Page
# inicializa a planilha através do caminho
set_url "#/home"
spreadsheet = Roo::Spreadsheet.open('C:\Fernanda\ProjetosEstágioRuby\AutomacaoForwardCarRuby\excel\ForwardCar.xlsx')
# dados da primeira tabela
sheet = spreadsheet.sheet(1)
# indica que o cabeçalho está na primeira linha
headers = sheet.row(1)
# Arrays para armazenar cada dado individual

$firstnames2 = []
$lastnames2 = []
$usernames2 = []
$passwords2 = []
# faz um for.each a partir da linha 2 até a última da fila
(2..sheet.last_row).each do |row_num|
  row_data = sheet.row(row_num)
  #inserindo dados das linhas em cada variavel
  firstname, lastname, usarname, password = row_data
  # Salvando cada item no seu array
  $firstnames2 << firstname
  $lastnames2 << lastname
  $usernames2 << usarname
  $passwords2 << password
  
  end

def cadastro_de_usuario_mesmo_username
  i = 0        
while i < $firstnames.size do 
  teste = RegisterPage.new
    teste.realizarCadastro($firstnames2[i], $lastnames2[i], $usernames2[i], $passwords2[i])
    i += 1
  end
end
end