require 'roo'
class ExcelPage < SitePrism::Page
# inicializa a planilha através do caminho
set_url "#/home"
spreadsheet = Roo::Spreadsheet.open('C:\Fernanda\ProjetosEstágioRuby\AutomacaoForwardCarRuby\excel\ForwardCar.xlsx')
# dados da primeira tabela
sheet = spreadsheet.sheet(0)
# indica que o cabeçalho está na primeira linha
headers = sheet.row(1)
# Arrays para armazenar cada dado individual
$dados_usuarios = []
$firstnames = []
$lastnames = []
$usernames = []
$passwords = []
# faz um for.each a partir da linha 2 até a última da fila
(2..sheet.last_row).each do |row_num|
  row_data = sheet.row(row_num)
  #inserindo dados das linhas em cada variavel
  firstname, lastname, usarname, password = row_data
  # Salvando cada item no seu array
  $firstnames << firstname
  $lastnames << lastname
  $usernames << usarname
  $passwords << password
  
  end

def cadastro_de_usuario
  i = 0        
while i < $firstnames.size do 
  teste = RegisterPage.new
    teste.realizarCadastro($firstnames[i], $lastnames[i], $usernames[i], $passwords[i])
    i += 1
  end
end
  def login_de_usuario
    i = 0        
  while i < $usernames.size do 
    teste = LoginPage.new
      teste.realizarLogin($usernames[i], $passwords[i])
      i += 1
    end
  
end

end



