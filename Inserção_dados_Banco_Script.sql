USE Banco;

-- INSERÇOES NO BANCO DE DADOS

INSERT INTO Cliente (Cpf, nome, endereco, telefone, email, uf)
VALUES
    ('12345678901', 'João da Silva', 'Rua das Flores, 123', '(11) 98765-4321', 'joao.silva@email.com', 'SP'),
    ('12345678902', 'Maria Oliveira', 'Av. Principal, 456', '(21) 12345-6789', 'maria.oliveira@email.com', 'RJ'),
    ('12345678903', 'José Santos', 'Rua Central, 789', '(21) 98765-4321', 'jose.santos@email.com', 'RJ'),
    ('12345678904', 'Ana Souza', 'Av. dos Estados, 234', '(11) 12345-6789', 'ana.souza@email.com', 'RJ'),
    ('12345678905', 'Pedro Pereira', 'Rua do Comércio, 567', '(11) 98765-4321', 'pedro.pereira@email.com', 'SP'),
    ('12345678906', 'Carla Lima', 'Av. das Palmeiras, 890', '(31) 12345-6789', 'carla.lima@email.com', 'MG'),
    ('12345678907', 'Marcos Costa', 'Rua das Pedras, 123', '(81) 98765-4321', 'marcos.costa@email.com', 'PE'),
    ('12345678908', 'Fernanda Oliveira', 'Av. Central, 456', '(92) 12345-6789', 'fernanda.oliveira@email.com', 'AM'),
    ('12345678909', 'Lucas Martins', 'Rua das Oliveiras, 789', '(61) 98765-4321', 'lucas.martins@email.com', 'DF'),
    ('12345678910', 'Mariana Silva', 'Av. das Flores, 234', '(27) 12345-6789', 'mariana.silva@email.com', 'ES'),
    ('12345678911', 'Gabriel Almeida', 'Rua dos Ipês, 567', '(81) 98765-4321', 'gabriel.almeida@email.com', 'PE'),
    ('12345678912', 'Aline Costa', 'Av. dos Coqueiros, 890', '(31) 12345-6789', 'aline.costa@email.com', 'MG'),
    ('12345678913', 'Rafael Oliveira', 'Rua Principal, 123', '(87) 98765-4321', 'rafael.oliveira@email.com', 'BA'),
    ('12345678914', 'Juliana Santos', 'Av. dos Girassóis, 456', '(21) 12345-6789', 'juliana.santos@email.com', 'RJ'),
    ('12345678915', 'Bruno Silva', 'Rua das Águas, 789', '(94) 98765-4321', 'bruno.silva@email.com', 'PA'),
    ('12345678916', 'Patrícia Alves', 'Av. das Dunas, 234', '(47) 12345-6789', 'patricia.alves@email.com', 'SC'),
    ('12345678917', 'Rodrigo Mendes', 'Rua dos Pinheiros, 567', '(81) 98765-4321', 'rodrigo.mendes@email.com', 'PE'),
    ('12345678918', 'Camila Costa', 'Av. dos Lírios, 890', '(11) 12345-6789', 'camila.costa@email.com', 'SP'),
    ('12345678919', 'Guilherme Lima', 'Rua das Rosas, 123', '(31) 98765-4321', 'guilherme.lima@email.com', 'MG'),
    ('12345678920', 'Vanessa Santos', 'Av. das Palmas, 456', '(21) 12345-6789', 'vanessa.santos@email.com', 'RJ');


INSERT INTO Agencia (IDagencia, nome, endereco, telefone)
VALUES
    (1, 'Agência Central', 'Av. Principal, 123', '(11) 1234-5678'),
    (2, 'Agência Norte', 'Rua Norte, 456', '(22) 2345-6789'),
    (3, 'Agência Sul', 'Av. Sul, 789', '(33) 3456-7890'),
    (4, 'Agência Leste', 'Rua Leste, 987', '(44) 4567-8901'),
    (5, 'Agência Oeste', 'Av. Oeste, 654', '(55) 5678-9012');
    
INSERT INTO Conta (Numeroconta, IDagencia, saldo, tipoconta, Cpf)
VALUES
    (1001, 1, 5000.00, 'Corrente', '12345678901'),
    (1002, 2, 7000.00, 'Poupança', '12345678902'),
    (1003, 3, 3000.00, 'Corrente', '12345678903'),
    (1004, 4, 9000.00, 'Poupança', '12345678904'),
    (1005, 5, 6000.00, 'Corrente', '12345678905'),
    (1006, 3, 8000.00, 'Poupança', '12345678906'),
    (1007, 1, 4000.00, 'Corrente', '12345678907'),
    (1008, 3, 10000.00, 'Poupança', '12345678908'),
    (1009, 4, 2000.00, 'Corrente', '12345678909'),
    (1010, 5, 12000.00, 'Poupança', '12345678910'),
    (1011, 1, 4000.00, 'Corrente', '12345678911'),
    (1012, 2, 6000.00, 'Poupança','12345678912'),
    (1013, 3, 5000.00, 'Corrente', '12345678913'),
    (1014, 3, 7000.00, 'Poupança', '12345678914'),
    (1015, 5, 3000.00, 'Corrente', '12345678915'),
    (1016, 2, 8000.00, 'Poupança', '12345678916'),
    (1017, 5, 6000.00, 'Corrente', '12345678917'),
    (1018, 1, 4000.00, 'Poupança', '12345678918'),
    (1019, 4, 9000.00, 'Corrente', '12345678919'),
    (1020, 3, 10000.00, 'Poupança', '12345678920');

INSERT INTO Extrato (IDextrato, datainicio, datafim, saldoinicio, saldofinal, Numeroconta, IDagencia)
VALUES
    (1, '2023-01-01', '2023-01-31', 5000.00, 4800.00, 1001, 1),
    (2, '2023-02-01', '2023-02-28', 7000.00, 7200.00, 1002, 2),
    (3, '2023-03-01', '2023-03-31', 3000.00, 3200.00, 1003, 3),
    (4, '2023-04-01', '2023-04-30', 9000.00, 9200.00, 1004, 4),
    (5, '2023-05-01', '2023-05-31', 6000.00, 6200.00, 1005, 5),
    (6, '2023-06-01', '2023-06-30', 8000.00, 7800.00, 1006, 3),
    (7, '2023-07-01', '2023-07-31', 4000.00, 4200.00, 1007, 1),
    (8, '2023-08-01', '2023-08-31', 10000.00, 9800.00, 1008, 3),
    (9, '2023-09-01', '2023-09-30', 2000.00, 1800.00, 1009, 4),
    (10, '2023-10-01', '2023-10-31', 12000.00, 11800.00, 1010, 5),
    (11, '2023-11-01', '2023-11-30', 4000.00, 3900.00, 1011, 1),
    (12, '2023-12-01', '2023-12-31', 6000.00, 6100.00, 1012, 2),
    (13, '2024-01-01', '2024-01-31', 5000.00, 4900.00, 1013, 3),
    (14, '2024-02-01', '2024-02-29', 7000.00, 7100.00, 1014, 3),
    (15, '2024-03-01', '2024-03-31', 3000.00, 3100.00, 1015, 5),
    (16, '2024-04-01', '2024-04-30', 8000.00, 7900.00, 1016, 2),
    (17, '2024-05-01', '2024-05-31', 6000.00, 5900.00, 1017, 5),
    (18, '2024-06-01', '2024-06-30', 4000.00, 4100.00, 1018, 1),
    (19, '2024-07-01', '2024-07-31', 9000.00, 8800.00, 1019, 4),
    (20, '2024-08-01', '2024-08-31', 10000.00, 9900.00, 1020, 3);
    
 
-- Insercao de Transferencia onde uma transferencia é uma saque de uma conta e um deposito em outra 


INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(1, 500.00, '2024-06-29', '1001', '1');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(2, 500.00, '2024-06-29', '1002', '2');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(1, '2024-06-29', 1, 2);

INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(2, 750.00, '2024-06-21', '1003', '3');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(3, 750.00, '2024-06-21', '1004', '4');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(2, '2024-06-21', 2, 3);

INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(3, 600.00, '2024-07-10', '1005', '5');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(4, 600.00, '2024-07-10', '1006', '3');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(3, '2024-07-10', 3, 4);

INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(4, 800.00, '2024-07-15', '1007', '1');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(5, 800.00, '2024-07-15', '1008', '3');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(4, '2024-07-15', 4, 5);

INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(5, 950.00, '2024-08-09', '1002', '2');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(6, 950.00, '2024-08-09', '1004', '4');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(5, '2024-06-29', 5, 6);

INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(6, 300.00, '2024-06-27', '1006', '3');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(7, 300.00, '2024-06-27', '1001', '1');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(6, '2024-06-27', 6, 7);

INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(7, 1200.00, '2024-08-24', '1008', '3');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(8, 1200.00, '2024-08-24', '1003', '3');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(7, '2024-08-24', 7, 8);

INSERT INTO Saque (IDsaque, Valorsaque, datasaque, numeroconta, IDagencia) VALUES
(8, 1100.00, '2024-07-12', '1007', '1');
INSERT INTO Deposito (IDdeposito, Valordeposito, datadeposito, numeroconta, IDagencia) VALUES
(1, 1100.00, '2024-07-12', '1005', '5');
INSERT INTO Transferencia (IDtransferencia, Datatransferencia, IDsaque, IDdeposito) VALUES
(8, '2024-07-12', 8, 1);

-- Inserindo os Saques

    INSERT INTO Saque (IDsaque, valorsaque, datasaque, Numeroconta, IDagencia)
VALUES
    (9, 70.00, '2024-09-15', 1009, 4),
    (10, 250.00, '2024-08-20', 1010, 5),
    (11, 180.00, '2024-06-25', 1011, 1),
    (12, 300.00, '2024-07-30', 1012, 2),
    (13, 75.00, '2024-01-05', 1013, 3),
    (14, 400.00, '2024-02-10', 1014, 3),
    (15, 200.00, '2024-03-15', 1015, 5),
    (16, 150.00, '2024-04-20', 1016, 2),
    (17, 100.00, '2024-05-25', 1017, 5),
    (18, 50.00, '2024-06-30', 1018, 1),
    (19, 300.00, '2024-07-05', 1019, 4),
    (20, 180.00, '2024-08-10', 1020, 3);

/*Inserindo os depositos*/

INSERT INTO Deposito (IDdeposito, valordeposito, datadeposito, Numeroconta, IDagencia)
VALUES
    (9, 100.00, '2024-07-20', 1009, 4),
    (10, 1000.00, '2024-08-25', 1010, 5),
    (11, 400.00, '2024-06-30', 1011, 1),
    (12, 600.00, '2024-12-05', 1012, 2),
    (13, 250.00, '2024-01-10', 1013, 3),
    (14, 800.00, '2024-02-15', 1014, 3),
    (15, 500.00, '2024-03-20', 1015, 5),
    (16, 600.00, '2024-04-25', 1016, 2),
    (17, 300.00, '2024-05-30', 1017, 5),
    (18, 200.00, '2024-06-05', 1018, 1),
    (19, 700.00, '2024-07-10', 1019, 4),
    (20, 800.00, '2024-08-15', 1020, 3);


INSERT INTO Atendente (Numerodeidentificacao, Turnodetrabalho, Nome, Telefone)
VALUES
    (1, 'Manhã', 'Joana Oliveira', '(11) 1111-1111'),
    (2, 'Tarde', 'Antônio Almeida', '(22) 2222-2222'),
    (3, 'Noite', 'Mariana Costa', '(33) 3333-3333'),
    (4, 'Manhã', 'Rafaela Santos', '(44) 4444-4444'),
    (5, 'Tarde', 'Lucas Pereira', '(55) 5555-5555');


INSERT INTO Cartao (IDcartao, tipocartao, validade, numerocartao, Cpf)
VALUES
    (1, 'Débito', '2024-12-31', '1111222233334444', '12345678901'),
    (2, 'Crédito', '2025-06-30', '2222333344445555', '12345678902'),
    (3, 'Débito', '2024-08-31', '3333444455556666', '12345678903'),
    (4, 'Crédito', '2025-10-31', '4444555566667777', '12345678904'),
    (5, 'Débito', '2024-09-30', '5555666677778888', '12345678905'),
    (6, 'Crédito', '2025-11-30', '6666777788889999', '12345678906'),
    (7, 'Débito', '2024-10-31', '7777888899990000', '12345678907'),
    (8, 'Crédito', '2025-12-31', '8888999900001111', '12345678908'),
    (9, 'Débito', '2024-11-30', '9999000011112222', '12345678909'),
    (10, 'Crédito', '2026-01-31', '0000111122223333', '12345678910'),
    (11, 'Débito', '2024-12-31', '1111222233334444', '12345678911'),
    (12, 'Crédito', '2025-06-30', '2222333344445555', '12345678912'),
    (13, 'Débito', '2024-08-31', '3333444455556666', '12345678913'),
    (14, 'Crédito', '2025-10-31', '4444555566667777', '12345678914'),
    (15, 'Débito', '2024-09-30', '5555666677778888', '12345678915'),
    (16, 'Crédito', '2025-11-30', '6666777788889999', '12345678916'),
    (17, 'Débito', '2024-10-31', '7777888899990000', '12345678917'),
    (18, 'Crédito', '2025-12-31', '8888999900001111', '12345678918'),
    (19, 'Débito', '2024-11-30', '9999000011112222', '12345678919'),
    (20, 'Crédito', '2026-01-31', '0000111122223333', '12345678920');

INSERT INTO Fatura (IDfatura, valortotal, datapagamento, datavencimento, IDcartao)
VALUES
    (1, 500.00, '2023-01-10', '2023-01-05', 2),
    (2, 700.00, '2023-02-10', '2023-02-05', 4),
    (3, 300.00, '2023-03-10', '2023-03-05', 6),
    (4, 900.00, '2023-04-10', '2023-04-05', 8),
    (5, 600.00, '2023-05-10', '2023-05-05', 10),
    (6, 800.00, '2023-06-10', '2023-06-05', 12),
    (7, 400.00, '2023-07-10', '2023-07-05', 14),
    (8, 1000.00, '2023-08-10', '2023-08-05', 16),
    (9, 200.00, '2023-09-10', '2023-09-05', 18),
    (10, 1200.00, '2023-10-10', '2023-10-05', 20),
    (11, 400.00, '2023-11-10', '2023-11-05',  2),
    (12, 600.00, '2023-12-10', '2023-12-05', 4),
    (13, 250.00, '2024-01-10', '2024-01-05', 6),
    (14, 800.00, '2024-02-10', '2024-02-05', 8),
    (15, 500.00, '2024-03-10', '2024-03-05', 10),
    (16, 600.00, '2024-04-10', '2024-04-05', 12),
    (17, 300.00, '2024-05-10', '2024-05-05', 14),
    (18, 200.00, '2024-06-10', '2024-06-05', 16),
    (19, 700.00, '2024-07-10', '2024-07-05', 18),
    (20, 800.00, '2024-08-10', '2024-07-09', 20);
  

INSERT INTO Avaliacao (IDavaliacao, tipoavaliacao, dataavaliacao, IDcartao)
VALUES
    (1, 'Inapto', '2023-01-15', 1),
    (2, 'Apto', '2023-02-20', 2),
    (3, 'Inapto', '2023-03-25', 3),
    (4, 'Apto', '2023-04-30', 4),
    (5, 'Inapto', '2023-05-05', 5),
    (6, 'Apto', '2023-06-10', 6),
    (7, 'Inapto', '2023-07-15', 7),
    (8, 'Apto', '2023-08-20', 8),
    (9, 'Inapto', '2023-09-25', 9),
    (10, 'Apto', '2023-10-30', 10),
    (11, 'Inapto', '2023-11-05', 11),
    (12, 'Apto', '2023-12-10', 12),
    (13, 'Inapto', '2024-01-15', 13),
    (14, 'Apto', '2024-02-20', 14),
    (15, 'Inapto', '2024-03-25', 15),
    (16, 'Apto', '2024-04-30', 16),
    (17, 'Inapto', '2024-05-05', 17),
    (18, 'Apto', '2024-06-10', 18),
    (19, 'Inapto', '2024-07-15', 19),
    (20, 'Apto', '2024-08-20', 20);


INSERT INTO Seguro (IDseguro, tiposeguro, datacontratacao, datavencimento, Cpf)
VALUES
    (1, 'Vida', '2023-01-20', '2024-01-19', '12345678901'),
    (2, 'Automóvel', '2023-02-25', '2024-02-24','12345678902'),
    (3, 'Residencial', '2023-03-30', '2024-03-29','12345678903'),
    (4, 'Saúde', '2023-04-05', '2024-04-04','12345678904'),
    (5, 'Viagem', '2023-05-10', '2024-05-09', '12345678905'),
    (6, 'Vida', '2023-06-15', '2024-06-14', '12345678906'),
    (7, 'Automóvel', '2023-07-20', '2024-07-19','12345678907'),
    (8, 'Residencial', '2023-08-25', '2024-08-24', '12345678908'),
    (9, 'Saúde', '2023-09-30', '2024-09-29', '12345678909'),
    (10, 'Viagem', '2023-10-05', '2024-10-04','12345678910'),
    (11, 'Vida', '2023-11-10', '2024-11-09', '12345678911'),
    (12, 'Automóvel', '2023-12-15', '2025-12-14','12345678912'),
    (13, 'Residencial', '2024-01-20', '2025-01-19','12345678913'),
    (14, 'Saúde', '2024-02-25', '2025-02-24','12345678914'),
    (15, 'Viagem', '2024-03-30', '2025-03-29','12345678915'),
    (16, 'Vida', '2024-04-05', '2025-04-04','12345678916'),
    (17, 'Automóvel', '2024-05-10', '2025-05-09','12345678917'),
    (18, 'Residencial', '2024-06-15', '2025-06-14','12345678918'),
    (19, 'Saúde', '2024-07-20', '2025-07-19','12345678919'),
    (20, 'Viagem', '2024-08-25', '2025-08-24','12345678920');

INSERT INTO Investimento (IDinvestimento, nomeinvestimento, datainvestimento, valorinvestido, tipoinvestimento, percentualanual, Cpf)
VALUES
    (1, 'Poupança Casual', '2023-01-01', 5000.00, 'Poupança', 9.0, '12345678901'),
    (2, 'CDB Liquidez Diária', '2023-02-01', 7000.00, 'CDB', 10.0, '12345678902'),
    (3, 'Tesouro Selic', '2023-03-01', 3000.00, 'Tesouro Direto', 11.0, '12345678903'),
    (4, 'Ações Amazon', '2023-04-01', 9000.00, 'Ações', 12.0, '12345678904'),
    (5, 'LCI Plus', '2023-05-01', 6000.00, 'LCI', 8.0, '12345678905'),
    (6, 'CDB Premium', '2023-06-01', 8000.00, 'CDB', 8.9, '12345678906'),
    (7, 'Poupança Gold', '2023-07-01', 4000.00, 'Poupança', 9.6, '12345678907'),
    (8, 'Tesouro Direto Flex', '2023-08-01', 10000.00, 'Tesouro Direto', 10.6, '12345678908'),
    (9, 'Ações BlueChip', '2023-09-01', 2000.00, 'Ações', 12.9, '12345678909'),
    (10, 'LCI Premium', '2023-10-01', 12000.00, 'LCI', 11.9, '12345678910'),
    (11, 'Poupança Flex', '2023-11-01', 4000.00, 'Poupança', 8.0, '12345678911'),
    (12, 'CDB VIP', '2023-12-01', 6000.00, 'CDB', 10.2, '12345678912'),
    (13, 'Tesouro Direto Plus', '2024-01-01', 5000.00, 'Tesouro Direto', 12.9, '12345678913'),
    (14, 'Ações Emerging', '2024-02-01', 7000.00, 'Ações', 12.0, '12345678914'),
    (15, 'LCI Flex', '2024-03-01', 3000.00, 'LCI', 7.7, '12345678915'),
    (16, 'CDB Gold', '2024-04-01', 8000.00, 'CDB', 8.3, '12345678916'),
    (17, 'Poupança Premium', '2024-05-01', 6000.00, 'Poupança', 8.6, '12345678917'),
    (18, 'Tesouro Direto VIP', '2024-06-01', 4000.00, 'Tesouro Direto', 11.7, '12345678918'),
    (19, 'Ações Growth', '2024-07-01', 9000.00, 'Ações', 12.1, '12345678919'),
    (20, 'LCI Diamond', '2024-08-01', 10000.00, 'LCI', 13.6, '12345678920');



INSERT INTO Emprestimo (IDemprestimo, valor, taxajuros, dataemprestimo, datavencimento, Cpf)
VALUES
    (1, 5000.00, 8.5, '2023-01-05', '2023-07-05', '12345678901'),
    (2, 7000.00, 9.2, '2023-02-10', '2023-08-10', '12345678902'),
    (3, 3000.00, 7.5, '2023-03-15', '2023-09-15', '12345678903'),
    (4, 9000.00, 6.8, '2023-04-20', '2023-10-20', '12345678904'),
    (5, 6000.00, 8.0, '2023-05-25', '2023-11-25', '12345678905'),
    (6, 8000.00, 7.2, '2023-06-30', '2023-12-30', '12345678906'),
    (7, 4000.00, 9.8, '2023-07-05', '2024-01-05', '12345678907'),
    (8, 10000.00, 6.5, '2023-08-10', '2024-02-10', '12345678908');



INSERT INTO Pagamento (IDpagamento, tipopagamento, valorpagamento, datapagamento, IDemprestimo)
VALUES
    (1, 'Débito Automático', 100.00, '2023-01-25', 1),
    (2, 'Boleto', 200.00, '2023-02-28', 2),
    (3, 'Débito Automático', 300.00, '2023-03-31', 3),
    (4, 'Débito Automático', 400.00, '2023-04-05', 4),
    (5, 'Boleto', 500.00, '2023-05-10', 5),
    (6, 'Boleto', 600.00, '2023-06-15', 6),
    (7, 'Débito Automático', 700.00, '2023-07-20', 7),
    (8, 'Boleto', 800.00, '2023-08-25', 8);


INSERT INTO Atendimento (Protocolo, DataDuvida, texto, Numeroconta, IDagencia, Numerodeidentificacao, IDcartao, IDinvestimento)
VALUES
    (1, '2023-01-30', 'Dúvida sobre extrato', 1001, 1, 2, 1, 1),
    (2, '2023-02-05', 'Solicitação de aumento de limite', 1002, 2, 4, 2, 2),
    (3, '2023-03-10', 'Questionamento sobre limite de saque', 1003, 3, 1, 3, 3),
    (4, '2023-04-15', 'Problema com transação não reconhecida', 1004, 4, 2, 4, 4),
    (5, '2023-05-20', 'Alteração de endereço cadastrado', 1005, 5, 1, 5, 5),
    (6, '2023-06-25', 'Informações sobre investimentos disponíveis', 1006, 3, 2, 6, 6),
    (7, '2023-07-30', 'Dúvida sobre cobrança indevida', 1007, 1, 5, 7, 7),
    (8, '2023-08-05', 'Solicitação de segunda via de cartão', 1008, 3, 2, 8, 8),
    (9, '2023-09-10', 'Informações sobre seguro contratado', 1009, 4, 2, 9, 9),
    (10, '2023-10-15', 'Reclamação sobre atendimento anterior', 1010, 5, 1, 10, 10),
    (11, '2023-11-20', 'Dúvida sobre aplicativo mobile', 1011, 1, 5, 11, 11),
    (12, '2023-12-25', 'Solicitação de resgate de investimento', 1012, 2, 2, 12, 12),
    (13, '2024-01-30', 'Problema sobre compras online', 1013, 3, 3, 13, 13),
    (14, '2024-02-05', 'Dúvidas referente a senha do cartão', 1014, 3, 2, 14, 14),
    (15, '2024-03-10', 'Questionamento sobre saldo da conta', 1015, 5, 1, 15, 15),
    (16, '2024-04-15', 'Solicitação de mudança de plano de investimento', 1016, 2, 5, 16, 16),
    (17, '2024-05-20', 'Dúvida sobre prazo de vencimento de fatura', 1017, 5, 4, 17, 17),
    (18, '2024-06-25', 'Problema com pagamento de seguro', 1018, 1, 1, 18, 18),
    (19, '2024-07-30', 'Solicitação de extrato consolidado', 1019, 4, 2, 19, 19),
    (20, '2024-08-05', 'Informações sobre débito automático', 1020, 3, 1, 20, 20);

