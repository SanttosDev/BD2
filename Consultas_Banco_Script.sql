USE Banco;
 
-- Consultas em banco de dados.

-- 1 Retorne a soma total para cada um dois tipos de investimento

SELECT tipoinvestimento, SUM(valorinvestido) AS total_investido
FROM  Investimento
GROUP BY tipoinvestimento;

-- 2 Retornado o nome, cpf , nome do investimento e percentual anual das pessoas que fizeram um investimento com percentual acima de 12.0 e que o tipo de investimento seja do tipo Ações

SELECT c.nome, c.cpf, i.nomeinvestimento, i.percentualanual, i.valorinvestido 
FROM cliente c 
INNER JOIN Investimento I ON c.cpf=i.cpf 
WHERE i.percentualanual > 12.0 AND i.tipoinvestimento = "Ações"

-- 3 Retorne nome do cliente, data de transferencia, e o valor transferido

SELECT c.nome, t.datatransferencia, s.valorsaque AS valor
FROM Cliente c
JOIN Conta ct ON c.Cpf = ct.Cpf
JOIN Saque s ON ct.Numeroconta = s.Numeroconta AND ct.IDagencia = s.IDagencia
JOIN Transferencia t ON s.IDsaque = t.IDsaque
JOIN Deposito d ON t.IDdeposito = d.IDdeposito;

-- 4 Retorne o nome do cliente, telefone, data de pagamento de todas pessoas que realizaram  pagamento de emprestimo cujo nome termine com Silva.

SELECT c.nome, c.telefone, p.datapagamento
FROM Cliente c
JOIN Emprestimo e ON c.Cpf = e.Cpf
JOIN Pagamento p ON e.IDemprestimo = p.IDemprestimo
WHERE c.nome LIKE '%Silva';

-- 5 Retorne o nome e numero de atendimentos por atendentes cujo foram menores do que 5

SELECT a.Numerodeidentificacao, a.Nome, COUNT(at.Protocolo) AS NumeroAtendimentos
FROM Atendente a
JOIN Atendimento at ON a.Numerodeidentificacao = at.Numerodeidentificacao
GROUP BY a.Numerodeidentificacao, a.Nome
HAVING COUNT(at.Protocolo) < 5;

-- 6 Retornar cpf, e nome dos clientes que possuem saldo total maior que a média dos saldos de todas as contas

SELECT c.Cpf, c.nome, SUM(ct.saldo) AS TotalSaldo
FROM Cliente c
JOIN Conta ct ON c.Cpf = ct.Cpf
GROUP BY c.Cpf, c.nome
HAVING SUM(ct.saldo) > (
    SELECT AVG(saldo)
    FROM Conta
);

-- 7 Retornar todas as faturas de um determinado cliente

SELECT f.IDfatura, f.valortotal, f.datapagamento, f.datavencimento 
FROM Fatura f 
JOIN Cartao ca ON ca.IDcartao = f.IDcartao 
JOIN Cliente c ON c.Cpf = ca.cpf 
WHERE c.nome = "Maria Oliveira";

-- 8 Retorna o nome, cpf e data de avaliação de todos os clientes que foram avaliados como “Aptos” dentro de um certo período de tempo e ordena alfabeticamente

SELECT c.nome, c.Cpf, av.dataavaliacao 
FROM Cliente c 
JOIN Cartao ca ON c.Cpf = ca.Cpf 
JOIN Avaliacao av ON av.IDcartao = ca.IDcartao 
WHERE tipoavaliacao = "Apto" AND dataavaliacao BETWEEN "2023-07-01" AND "2024-01-01" ORDER BY c.nome ASC


-- 9 Essa consulta mostra as agências mais populares entre as pessoas que são de Rio de Janeiro em nosso dataset.

SELECT 
    ag.nome AS agencia_nome,
    COUNT(*) AS regiao_popular
FROM Cliente cl
LEFT JOIN Conta co 
	ON cl.Cpf = co.Cpf
LEFT JOIN Agencia ag 
	ON ag.IDagencia = co.IDagencia
WHERE cl.uf = 'RJ'
GROUP BY ag.nome
ORDER BY regiao_popular DESC;

-- 10 Retorne uma consulta onde se tenha a diferença entre a soma dos valores de depositos, e a soma dos valores de saques, em que não tenham relaçam com transferencia

SELECT COALESCE(SUM(d.valordeposito), 0) - COALESCE(SUM(s.valorsaque), 0) AS Diferença
FROM deposito d
LEFT JOIN transferencia td ON td.iddeposito = d.iddeposito
LEFT JOIN saque s ON s.numeroconta = d.numeroconta AND s.idagencia = d.idagencia
LEFT JOIN transferencia ts ON ts.idsaque = s.idsaque
WHERE td.idtransferencia IS NULL AND ts.idtransferencia IS NULL;

-- 11 Retorne nome do atendente, telefone, data de duvida, de todo atendimento cujo, referente a limite 

SELECT a.Nome AS NomeAtendente, a.Telefone, at.DataDuvida, at.texto
FROM Atendimento at
JOIN Atendente a ON at.Numerodeidentificacao = a.Numerodeidentificacao
WHERE at.texto LIKE '%limite%';
