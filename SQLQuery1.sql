--Esta consulta SQL seleciona o ID do produto (P.IDProduto), o nome do produto (P.Nome) e o pre�o do produto (P.Preco).
--A consulta envolve apenas uma tabela : Produto (P).
Select P.IDProduto,
	   P.Nome,
	   P.Preco
--A cl�usula From especifica a tabela envolvida na consulta, neste caso, Produto(P).
From Produto as P
--A cl�usula Where � usada para restringir o pre�o(Preco) dos produtos que custam mais de 1000.
Where Preco > 1000
--A cl�usula Order By classifica os resultados pelo pre�o de forma ascendente(Asc).
Order By P.Preco Asc