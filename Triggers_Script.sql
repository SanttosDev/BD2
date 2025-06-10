USE Banco;

-- Trigger 1: Validar se valores de saque e depósito são iguais
CREATE OR REPLACE FUNCTION trg_validar_valor_transferencia_fn()
RETURNS TRIGGER AS $$
DECLARE
    valor_saque DECIMAL(10,2);
    valor_deposito DECIMAL(10,2);
BEGIN
    SELECT valorsaque INTO valor_saque FROM Saque WHERE IDsaque = NEW.IDsaque;
    SELECT valordeposito INTO valor_deposito FROM Deposito WHERE IDdeposito = NEW.IDdeposito;

    IF valor_saque != valor_deposito THEN
        RAISE EXCEPTION 'Erro: os valores de saque e depósito devem ser iguais.';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validar_valor_transferencia
BEFORE INSERT ON Transferencia
FOR EACH ROW
EXECUTE FUNCTION trg_validar_valor_transferencia_fn();

-- Trigger 2: Atualizar saldo após saque
CREATE OR REPLACE FUNCTION trg_atualizar_saldo_saque_fn()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Conta
    SET saldo = saldo - NEW.valorsaque
    WHERE Numeroconta = NEW.Numeroconta AND IDagencia = NEW.IDagencia;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_atualizar_saldo_saque
AFTER INSERT ON Saque
FOR EACH ROW
EXECUTE FUNCTION trg_atualizar_saldo_saque_fn();

-- Trigger 3: Atualizar saldo após depósito
CREATE OR REPLACE FUNCTION trg_atualizar_saldo_deposito_fn()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE Conta
    SET saldo = saldo + NEW.valordeposito
    WHERE Numeroconta = NEW.Numeroconta AND IDagencia = NEW.IDagencia;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_atualizar_saldo_deposito
AFTER INSERT ON Deposito
FOR EACH ROW
EXECUTE FUNCTION trg_atualizar_saldo_deposito_fn();
