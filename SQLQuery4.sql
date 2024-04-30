--Esta consulta SQL seleciona o n�mero da venda(NumeroVenda), o ID da venda(IDVenda) e a data da venda(DataHora0.
--A consulta envolve apenas uma tabela : Venda.
Select NumeroVenda,
	   IDVenda,
	   DataHora
--A cl�usula From especifica as tabelas envolvidas na consula, neste caso, Venda.
From Venda
--A cl�usula Where restringe que a data da venda tenha sido feita na segunda quinzena de abril de 2023.
Where DataHora >= '16-04-2023 00:00:01' and DataHora <= '30-04-2023 23:59:59'