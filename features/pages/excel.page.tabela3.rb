require 'roo'
class ExcelPageTabela3 < SitePrism::Page
# inicializa a planilha através do caminho
set_url "#/home"
spreadsheet = Roo::Spreadsheet.open('C:\Fernanda\ProjetosEstágioRuby\AutomacaoForwardCarRuby\excel\ForwardCar.xlsx')
# dados da primeira tabela
sheet = spreadsheet.sheet(2)
# indica que o cabeçalho está na primeira linha
headers = sheet.row(1)
# Arrays para armazenar cada dado individual
$firstnames = []
$lastnames = []
$usernames = []
$passwords = []
$enderecos = []
$cidades = []
$nascimentos = []
$valoremprestimos = []
# faz um for.each a partir da linha 2 até a última da fila
(2..sheet.last_row).each do |row_num|
  row_data = sheet.row(row_num)
  #inserindo dados das linhas em cada variavel
  firstname, lastname, usarname, password, endereco, cidade, nascimento, valoremprestimo   = row_data
  # Salvando cada item no seu array
  $firstnames << firstname
  $lastnames << lastname
  $usernames << usarname
  $passwords << password
  $enderecos << endereco
  $cidades << cidade
  $nascimentos << nascimento
  $valoremprestimos << valoremprestimo
  end


def cadastro_de_usuario_emprestimo
  i = 0        
while i < $firstnames.size do 
  teste = RegisterPage.new
    teste.criarCadastroeLoginParaEmprestimo($firstnames[i], $lastnames[i], $usernames[i], $passwords[i])
    i += 1
  end
end
def login_de_usuario_emprestimo
    i = 0        
  while i < $usernames.size do 
    teste = LoginPage.new
      teste.realizarLoginEmprestimos($usernames[i], $passwords[i])
      i += 1
    end
end
def realizaEmprestimo
    i = 0        
    while i < $usernames.size do 
      teste = EmprestimoPage.new
        teste.preencherDadosEmprestimo($firstnames[i], $lastnames[i], $enderecos[i],$cidades[i],$nascimentos[i],$valoremprestimos[i])
        i += 1
      end
    end
end