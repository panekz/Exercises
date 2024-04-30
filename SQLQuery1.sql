--Esta consulta SQL seleciona o ID do produto (P.IDProduto), o nome do produto (P.Nome) e o preço do produto (P.Preco).
--A consulta envolve apenas uma tabela : Produto (P).
Select P.IDProduto,
	   P.Nome,
	   P.Preco
--A cláusula From especifica a tabela envolvida na consulta, neste caso, Produto(P).
From Produto as P
--A cláusula Where é usada para restringir o preço(Preco) dos produtos que custam mais de 1000.
Where Preco > 1000
--A cláusula Order By classifica os resultados pelo preço de forma ascendente(Asc).
Order By P.Preco Asc