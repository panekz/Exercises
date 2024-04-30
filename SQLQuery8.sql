--Esta consulta SQL seleciona o ID do produto (P.IDProduto), o Nome do produto(P.Nome) e o Estoque do produto(P.Estoque).
--A consulta envolve duas tabelas: Produto(P) e ProdutoVenda(PV).
--A cláusula Select seleciona o ID do produto (P.IDProduto), o Nome do produto(P.Nome) e o Estoque do produto(P.Estoque).
Select
    P.IDProduto,
    P.Nome,
    (P.Estoque - IsNull(Sum(PV.Quantidade), 0)) as SaldoEstoqueAtual
--A cláusula From especifica as tabelas utilizadas na consulta, neste caso, Produto(P).
From Produto P
--A cláusula Left Join é utilizada para unir as tabelas ProdutoVenda(PV) e Produto(P) com base na correspondência dos IDs dos produtos.
LEFT JOIN ProdutoVenda PV 
On P.IDProduto = PV.IDProduto
--A cláusula Group By agrupa pelos campos abaixo ordenados, IDProduto, Nome e SaldoEstoqueAtual.
Group By P.IDProduto, P.Nome, P.Estoque