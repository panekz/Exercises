--Esta consulta SQL seleciona o Nome do produto(P.Nome) e a data em que foi vendido(V.Venda).
--A consulta envolve tr�s tabelas: Produto(P), Venda(V) e ProdutoVenda(PV).
--A cl�usula Select seleciona o Nome do produto(P.Nome) e a data em que foi vendido(V.Venda).
Select Distinct P.Nome,
				V.DataHora
--A cl�usula From especifica as tabelas utilizadas na consulta, neste caso, Produto(P).
From Produto P
--A cl�usula Join Insere a tabela ProdutoVenda com a tabela Produto com base na correspond�ncia dos IDs dos produtos.
Join ProdutoVenda as PV
On PV.IDProduto = P.IDProduto
--A cl�usula Join Insere a tabela Venda com a tabela ProdutoVenda com base na correspond�ncia dos IDsVenda dos produtos.
Join Venda as V
On V.IDVenda = PV.IDVenda
--A cl�usula Where restringe que a data das vendas tenha sido feita na primeira quinzena do m�s de Abril de 2023.
WHERE V.DataHora >= '2023-04-01T00:00:01' and V.DataHora <= '2023-04-14T23:59:29';