--Esta consulta SQL seleciona o Nome do produto(P.Nome), os primeiros 20 caracteres do campo descrição do produto(Left(Descricao,20)) e o nome da categoria dos produtos onde o nome do produto tenha mais de 15 caracteres.
--A consulta envolve duas tabelas: Produto(P) e ProdutoCategoria(PC).

--A cláusula Select seleciona o ID da categoria(IDCategoria), o Nome dos produtos(P.Nome) e a Descrição dos produtos.
Select PC.IDCategoria,
	   P.Nome,
	   Left(Descricao,20) as Descricao
--A cláusula From especifica as tabelas usadas na consulta, neste caso, ProdutoCategoria(PC).
From ProdutoCategoria as PC
--A cláusula INNER JOIN é usada para combinar a tabela ProdutoCategoria (PC) com a tabela Produto (P).
Inner Join Produto as P
On P.IDProduto = PC.IDProduto
--A cláusula Where restringe que o nome do produto deve ter mais de 15 caracteres.
Where Len(P.Nome) >15
