USE Banco;

-- Índice para acelerar agrupamento por tipo de investimento (Consulta 1)
CREATE INDEX idx_investimento_tipo ON Investimento(tipoinvestimento);

-- Índice para filtro por tipo e percentual (Consulta 2)
CREATE INDEX idx_investimento_tipo_percentual ON Investimento(tipoinvestimento, percentualanual);

-- Índice para JOIN por CPF (Consultas 2, 3, 4, 6, 7, 8, 9)
CREATE INDEX idx_cliente_cpf ON Cliente(Cpf);
CREATE INDEX idx_conta_cpf ON Conta(Cpf);
CREATE INDEX idx_cartao_cpf ON Cartao(Cpf);

-- Índice para relacionar saque com conta (Consulta 3)
CREATE INDEX idx_saque_conta ON Saque(Numeroconta, IDagencia);
CREATE INDEX idx_transferencia_saque ON Transferencia(IDsaque);
CREATE INDEX idx_transferencia_deposito ON Transferencia(IDdeposito);

-- Índice para filtro por nome com LIKE (Consulta 4)
CREATE INDEX idx_cliente_nome ON Cliente(nome);

-- Índice para agrupamento e contagem de atendimentos (Consulta 5)
CREATE INDEX idx_atendimento_atendente ON Atendimento(Numerodeidentificacao);

-- Índice para cálculo de saldo por CPF (Consulta 6)
CREATE INDEX idx_conta_saldo_cpf ON Conta(Cpf, saldo);

-- Índice para faturas de um cliente específico (Consulta 7)
CREATE INDEX idx_fatura_cartao ON Fatura(IDcartao);

-- Índice para filtro por tipo de avaliação e data (Consulta 8)
CREATE INDEX idx_avaliacao_tipo_data ON Avaliacao(tipoavaliacao, dataavaliacao);

-- Índice para relacionar contas de clientes por agência (Consulta 9)
CREATE INDEX idx_conta_agencia ON Conta(IDagencia);

-- Índice para filtragem de textos nos atendimentos (Consulta 11)
CREATE FULLTEXT INDEX idx_atendimento_texto ON Atendimento(texto);
