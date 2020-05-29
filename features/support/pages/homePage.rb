class HomePage < SitePrism::Page

	set_url ''

	element :pesquisar, '#h_search-input'
	element :btnPesquisar, '#h_search-btn'
	elements :produtos, 'a[href^="/produto"]'

	def pesquisarProduto
		pesquisar.click
		pesquisar.set 'bis'
		btnPesquisar.click	
	end
	
	def pesquisaInvalida
		pesquisar.click
		pesquisar.set '--'
		btnPesquisar.click	
	end

	def produtoIndisponivel
		pesquisar.click
		pesquisar.set 'celular 2220'
		btnPesquisar.click	
	end
end	

