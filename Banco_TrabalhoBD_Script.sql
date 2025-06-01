CREATE DATABASE Banco;

USE Banco;

CREATE TABLE Cliente (
    Cpf CHAR(11) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    telefone VARCHAR(15),
    email VARCHAR(100),
    uf CHAR(2),
    PRIMARY KEY (Cpf)
);

CREATE TABLE Agencia (
    IDagencia INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    endereco VARCHAR(150),
    telefone VARCHAR(15),
    PRIMARY KEY (IDagencia)
);

CREATE TABLE Conta (
    Numeroconta INT NOT NULL,
    IDagencia INT NOT NULL,
    saldo DECIMAL(10, 2),
    tipoconta VARCHAR(20),
    Cpf CHAR(11) NOT NULL,
    PRIMARY KEY (Numeroconta, IDagencia),
    FOREIGN KEY (IDagencia) REFERENCES Agencia(IDagencia),
    FOREIGN KEY (Cpf) REFERENCES Cliente(Cpf)
);

CREATE TABLE Extrato (
    IDextrato INT NOT NULL,
    datainicio DATE,
    datafim DATE,
    saldoinicio DECIMAL(10, 2),
    saldofinal DECIMAL(10, 2),
    Numeroconta INT NOT NULL,
    IDagencia INT NOT NULL,
    PRIMARY KEY (IDextrato),
    FOREIGN KEY (Numeroconta, IDagencia) REFERENCES Conta(Numeroconta, IDagencia)
);

CREATE TABLE Saque (
    IDsaque INT NOT NULL,
    valorsaque DECIMAL(10, 2),
    datasaque DATE,
    Numeroconta INT NOT NULL,
    IDagencia INT NOT NULL,
    PRIMARY KEY (IDsaque),
    FOREIGN KEY (Numeroconta, IDagencia) REFERENCES Conta(Numeroconta, IDagencia)
);

CREATE TABLE Deposito (
    IDdeposito INT NOT NULL,
    valordeposito DECIMAL(10, 2),
    datadeposito DATE,
    Numeroconta INT NOT NULL,
    IDagencia INT NOT NULL,
    PRIMARY KEY (IDdeposito),
    FOREIGN KEY (Numeroconta, IDagencia) REFERENCES Conta(Numeroconta, IDagencia)
);

CREATE TABLE Transferencia (
    IDtransferencia INT NOT NULL,
    datatransferencia DATE,
    IDsaque INT NOT NULL,
    IDdeposito INT NOT NULL,
    PRIMARY KEY (IDtransferencia),
    FOREIGN KEY (IDsaque) REFERENCES Saque(IDsaque),
    FOREIGN KEY (IDdeposito) REFERENCES Deposito(IDdeposito)
);

CREATE TABLE Atendente (
    Numerodeidentificacao INT NOT NULL,
    Turnodetrabalho VARCHAR(20),
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(15),
    PRIMARY KEY (Numerodeidentificacao)
);

CREATE TABLE Cartao (
    IDcartao INT NOT NULL,
    tipocartao VARCHAR(20),
    validade DATE,
    numerocartao CHAR(16),
    Cpf CHAR(11) NOT NULL,
    PRIMARY KEY (IDcartao),
    FOREIGN KEY (Cpf) REFERENCES Cliente(Cpf)
);

CREATE TABLE Fatura (
    IDfatura INT NOT NULL,
    valortotal DECIMAL(10, 2),
    datapagamento DATE,
    datavencimento DATE,
    IDcartao INT NOT NULL,
    PRIMARY KEY (IDfatura),
    FOREIGN KEY (IDcartao) REFERENCES Cartao(IDcartao)
);

CREATE TABLE Avaliacao (
    IDavaliacao INT NOT NULL,
    tipoavaliacao VARCHAR(20),
    dataavaliacao DATE,
    IDcartao INT NOT NULL,
    PRIMARY KEY (IDavaliacao),
    FOREIGN KEY (IDcartao) REFERENCES Cartao(IDcartao)
);

CREATE TABLE Seguro (
    IDseguro INT NOT NULL,
    tiposeguro VARCHAR(50),
    datacontratacao DATE,
    datavencimento DATE,
    Cpf CHAR(11) NOT NULL,
    PRIMARY KEY (IDseguro),
    FOREIGN KEY (Cpf) REFERENCES Cliente(Cpf)
);

CREATE TABLE Investimento (
    IDinvestimento INT NOT NULL,
    nomeinvestimento VARCHAR(50),
    datainvestimento DATE,
    valorinvestido DECIMAL(10, 2),
    tipoinvestimento VARCHAR(50),
    percentualanual DECIMAL(5, 2),
    Cpf CHAR(11) NOT NULL,
    PRIMARY KEY (IDinvestimento),
    FOREIGN KEY (Cpf) REFERENCES Cliente(Cpf)
);

CREATE TABLE Emprestimo (
    IDemprestimo INT NOT NULL,
    valor DECIMAL(10, 2),
    taxajuros DECIMAL(5, 2),
    dataemprestimo DATE,
    datavencimento DATE,
    Cpf CHAR(11) NOT NULL,
    PRIMARY KEY (IDemprestimo),
    FOREIGN KEY (Cpf) REFERENCES Cliente(Cpf)
);

CREATE TABLE Pagamento (
    Idpagamento INT NOT NULL,
    tipopagamento VARCHAR(50),
    valorpagamento DECIMAL(10, 2),
    datapagamento DATE,
    IDemprestimo INT NOT NULL,
    PRIMARY KEY (Idpagamento),
    FOREIGN KEY (IDemprestimo) REFERENCES Emprestimo(IDemprestimo)
);

CREATE TABLE Atendimento (
    Protocolo INT NOT NULL,
    DataDuvida DATE,
    texto TEXT,
    Numeroconta INT NOT NULL,
    IDagencia INT NOT NULL,
    Numerodeidentificacao INT NOT NULL,
    IDcartao INT NOT NULL,
    IDinvestimento INT NOT NULL,
    PRIMARY KEY (Protocolo),
    FOREIGN KEY (Numerodeidentificacao) REFERENCES Atendente(Numerodeidentificacao),
    FOREIGN KEY (Numeroconta, IDagencia) REFERENCES Conta(Numeroconta, IDagencia),
    FOREIGN KEY (IDcartao) REFERENCES Cartao(IDcartao),
    FOREIGN KEY (IDinvestimento) REFERENCES Investimento(IDinvestimento)
);
