--Esta consulta SQL seleciona seleciona todos os dados dos fornecedores, onde seus nomes começam com a letra "C".
--A consulta envolve apenas uma tabela(Fornecedor).
Select * From Fornecedor
--A cláusula Where restringe para que o SQL encontre apenas nomes que comecem com a letra "C", e a cláusula Like é utilizada para encontrar a correspondência exata.
Where Nome Like 'C%'