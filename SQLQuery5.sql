--Esta consulta SQL seleciona o Nome do produto(P.Nome) e a data em que foi vendido(V.Venda).
--A consulta envolve três tabelas: Produto(P), Venda(V) e ProdutoVenda(PV).
--A cláusula Select seleciona o Nome do produto(P.Nome) e a data em que foi vendido(V.Venda).
Select Distinct P.Nome,
				V.DataHora
--A cláusula From especifica as tabelas utilizadas na consulta, neste caso, Produto(P).
From Produto P
--A cláusula Join Insere a tabela ProdutoVenda com a tabela Produto com base na correspondência dos IDs dos produtos.
Join ProdutoVenda as PV
On PV.IDProduto = P.IDProduto
--A cláusula Join Insere a tabela Venda com a tabela ProdutoVenda com base na correspondência dos IDsVenda dos produtos.
Join Venda as V
On V.IDVenda = PV.IDVenda
--A cláusula Where restringe que a data das vendas tenha sido feita na primeira quinzena do mês de Abril de 2023.
WHERE V.DataHora >= '2023-04-01T00:00:01' and V.DataHora <= '2023-04-14T23:59:29';