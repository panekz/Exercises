--Esta consulta SQL seleciona seleciona todos os dados dos fornecedores, onde seus nomes come�am com a letra "C".
--A consulta envolve apenas uma tabela(Fornecedor).
Select * From Fornecedor
--A cl�usula Where restringe para que o SQL encontre apenas nomes que comecem com a letra "C", e a cl�usula Like � utilizada para encontrar a correspond�ncia exata.
Where Nome Like 'C%'