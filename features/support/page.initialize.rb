Dir[File.join(File.dirname(__FILE__),'~\..\AutomacaoForwardCarRuby\features\pages*.page.rb')].each{|file|requirefile}

    module Page
    def login
      @login||=LoginPage.new
    end
    def register
        @register||=RegisterPage.new
    end
    def inventory
      @inventory||=InventoryPage.new
    end
    def emprestimo
      @emprestimo||=EmprestimoPage.new
    end
    def excel
      @excel||=ExcelPage.new
    end
    def excelTabela2
      @excel2||=ExcelPageTabela2.new
    end
    def excelTabela3
      @excel3||=ExcelPageTabela3.new
    end
  end