# require 'roo'
# class ExcelPage 

# # inicializa a planilha através do caminho
# spreadsheet = Roo::Spreadsheet.open('C:\Fernanda\ProjetosEstágioRuby\AutomacaoForwardCarRuby\excel\ForwardCar.xlsx')
# # dados da primeira tabela
# sheet = spreadsheet.sheet(0)
# # indica que o cabeçalho está na primeira linha
# headers = sheet.row(1)
# # Arrays para armazenar cada dado individual
# @firstnames = []
# @lastnames = []
# @usarnames = []
# @passwords = []
# # faz um for.each a partir da linha 2 até a última da fila
# (2..sheet.last_row).each do |row_num|
#   row_data = sheet.row(row_num)
#   #inserindo dados das linhas em cada variavel
#   firstname, lastname, usarname, password = row_data
#   # Salvando cada item no seu array
#   @firstnames << firstname
#   @lastnames << lastname
#   @usarnames << usarname
#   @passwords << password
# end
# def preencherRegister
   
# end
# # Print the collected data (optional)
# puts "Firstnames: #{@firstnames}"
# puts "Lastnames: #{@lastnames}"
# puts "Usarnames: #{@usarnames}"
# puts "Passwords: #{@passwords}"
# end