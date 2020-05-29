#language: pt

@carrinho
Funcionalidade: Carrinho de compras
Para que eu possa pesquisar e inserir produtos no carrinho

#-------------------------------------------------------------------- Pesquisa válida
@pesquisaValida
Cenário: Pesquisar produto 
Dado que eu estou na home
Quando pesquiso um produto
Então devo ver uma lista com opções do produto pesquisado

#-------------------------------------------------------------------- Inserir produto na cesta
@InclusaoProdutoCesta
Cenário: Inserir produto no carrinho
Dado insiro um produto na cesta
Quando acesso a tela minha cesta
Então devo visualzar os detalhes do pedido na cesta 

#--------------------------------------------------------------------- Pesquisa inválida

@pesquisaInvalida
Cenário: Realizar uma pesquisa inválida 
Dado que estou na home 
Quando informo um caracter especial
Então devo ver a mensagem informando que nenhum produto foi encontrado

#--------------------------------------------------------------------- Pesquisar produto indisponível
@produtoindisponível
Cenário: Pesquisar por um produto indisponível
Dado acesso a home
Quando informo um produto indisponível 
Então devo ver uma mensagem informando que o produto está indisponível



