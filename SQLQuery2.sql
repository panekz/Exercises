--Esta consulta SQL seleciona o Nome do produto(P.Nome), a Marca do produto(P.IDMarca) e o Estoque do produto(P.Estoque).
--A consulta envolve apenas uma tabela: Produto(P).
Select P.Nome,
	   P.IDMarca,
	   P.Estoque
--A cláusula From especifica as tabelas envolvidas na consulta, neste caso, Produto(P).
From Produto as P
--A cláusula Where restringe que o valor do Estoque deve ser menor que 50.
Where Estoque < 50
-- A cláusula Order By classifica os resultados com base na coluna calculada 'Estoque' em ordem decrescente (DESC) para que o maior resultado apareça primeiro.
Order By Estoque Desc