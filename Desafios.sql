USE Loja;

-- Listar todos pedidos com informações do cliente

SELECT 
	cliente.Nome As NomeCliente,
	produto.Nome As NomeProduto,
    categoria.Nome As NomeCategoria,
    produto.produtoID,
    produto.Preco,
    pedido.Quantidade,
    pedido.DataPedido
FROM Pedidos AS pedido
INNER JOIN Clientes AS cliente
ON cliente.ClienteID = pedido.ClienteID
INNER JOIN Produtos AS produto
on pedido.ProdutoID = produto.ProdutoID
INNER JOIN Categorias AS categoria
on pedido.categoriaID = categoria.CategoriaID;


SELECT 
	cliente.Nome AS NomeCliente,
	categoria.Nome AS NomeCategoria,
    produto.Nome AS NomeProduto
FROM Produtos As produto
INNER JOIN Clientes AS cliente
ON produto.ProdutoID = categoria.CategoriaID;


SELECT 
	cliente.Nome AS NomeCliente,
    categoria.Nome AS NomeCategoria
FROM Pedidos As pedido
INNER JOIN Clientes AS cliente 
ON pedido.PedidoID = cliente.ClienteID
INNER JOIN Categorias AS categoria
ON cliente.ClienteID = categoria.CategoriaID WHERE categoria.Nome = "Roupas";