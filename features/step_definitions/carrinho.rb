  #-------------------------------------------------------------------- Pesquisar produto   
  Dado("que eu estou na home") do
    @home.load   
    expect(page).to have_content 'olá, faça seu login'
  end
  
  Quando("pesquiso um produto") do
    @home.pesquisarProduto
  end
  
  Então("devo ver uma lista com opções do produto pesquisado") do
    @home.produtos
  end
  
  #-------------------------------------------------------------------- Inserir produto na cesta
  Dado("insiro um produto na cesta") do
    @home.load
    @home.pesquisarProduto
    page.execute_script "window.scrollBy(0,200)" 
    @home.produtos[0].click
  end
  
  Quando("acesso a tela minha cesta") do
    @produto.btnComprar.click
  end
  
  Então("devo visualzar os detalhes do pedido na cesta") do
    expect(page).to have_content 'Bis'
  end
  #-------------------------------------------------------------------- Pesquisa inválida
  Dado("que estou na home") do
    @home.load   
    expect(page).to have_content 'olá, faça seu login'
  end
  
  Quando("informo um caracter especial") do
    @home.pesquisaInvalida
  end
  
  Então("devo ver a mensagem informando que nenhum produto foi encontrado") do
    expect(page).to have_content 'Nenhum produto encontrado'
  end  
  
  #--------------------------------------------------------------------- Pesquisar produto indisponível
  Dado("acesso a home") do
    @home.load   
    expect(page).to have_content 'olá, faça seu login'
  end
  
  Quando("informo um produto indisponível") do
    @home.produtoIndisponivel
  end
  
  Então("devo ver uma mensagem informando que o produto está indisponível") do
    expect(page).to have_content 
    'Ops! nenhum resultado encontrado para "celular 2220".
     O que eu faço?
     Verifique os termos digitados ou os filtros selecionados.
     Utilize termos genéricos na busca.'
  end


