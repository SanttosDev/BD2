Princípios de banco de dados - A1

Alunos: Josué lourenço dos Santos

Objetivo

Criação de um banco de dados passando desde do modelo ER, projeto lógico, e criação do
script no SQL, afins de modelos reais e consultas.

Tema: Banco

1° Passo

Primeiramente a criação de um modelo ER, ao qual se tem como tema banco. Foram
criadas diversas entidades ao qual algumas delas se relacionam com objetivo de casos
reais, e interações possíveis.

Link do modelo ER: https://app.brmodeloweb.com/#!/publicview/667ca6b63b65db65523c1a60

2° Passo

Seguindo nosso modelo ER, é criado o projeto lógico, ao qual corresponde as tabelas e
seus relacionamentos de forma normalizada.

Projeto Lógico ( Banco )

Conta ( Numeroconta, IDagencia, saldo, tipoconta, Cpf )
    IDagencia ref Agencia
    Cpf ref Cliente

Agencia ( IDagencia, nome, endereço, telefone )

Extrato ( IDextrato, datainicio, datafim, saldoinicio, saldofinal, Numeroconta, IDagencia )
    Numeroconta, IDagencia ref Conta

Saque ( IDsaque, valorsaque, datasaque, Numeroconta, IDagencia )
    Numeroconta, IDagencia ref Conta

Deposito ( IDdeposito, valordeposito, datadeposito, Numeroconta, IDagencia )
    Numeroconta, IDagencia ref Conta

Transferencia ( IDtransferencia, datatransferencia, IDsaque, IDdeposito )
    IDsaque ref Saque
    IDdeposito ref Deposito

Cliente ( Cpf, nome, endereço, telefone, email, uf )

Atendente ( Numerodeidentificacao, Turnodetrabalho, Nome, Telefone )

Atendimento ( Protocolo, DataDuvida, texto, Numeroconta, IDagencia,
   Numerodeidentificacao, IDcartao. IDinvestimento )
   Numerodeidentificacao ref Atendente
   Numeroconta, IDagencia ref Conta
   IDcartao ref Cartao
   IDinvestimento ref Investimento

Cartao ( IDcartao, tipocartao, validade, numerocartao, Cpf )
  Cpf ref Cliente
  Fatura ( IDfatura, valortotal, datapagamento, datavencimento, IDcartao )
  IDcartao ref Cartao

Avaliacao ( IDavaliacao, tipoavaliacao, dataavaliacao, IDcartao )
  IDcartao ref Cartao

Seguro ( IDseguro, tiposeguro, datacontratacao, datavencimento, Cpf )
  Cpf ref Cliente

Investimento ( IDinvestimento, nomeinvestimento, datainvestimento, valorinvestido,
tipoinvestimento, percentualanual, Cpf )
  Cpf ref Cliente

Emprestimo ( IDemprestimo, valor, taxajuros, dataemprestimo, datavencimento, Cpf )
  Cpf ref Cliente

Pagamento ( IDpagamento, tipopagamento, valorpagamento, datapagamento,
IDemprestimo )
  IDemprestimo ref Emprestimo

3° Passo

Partindo para o SQL temos os scripts aos quais representa a criação das tabelas, as
inserções de dados e as consultas.

Observações: 1

Transferência é um uma associação onde se temos um saque de uma conta e um depósito
em outra, logo é importante ressaltar que para a inserção de nova transferência é
imprescindível que tenha uma inserção de um saque, e uma depósito ( em outra conta )
para aí associa estes ID em transferência, assim como na exclusão é importante excluir
tanto este saque quanto depósito. E para que não se tenha dados incoerentes, os valores
tanto de saque quanto de depósito devem ser iguais.

Observações: 2

Avaliação é um relacionamento com cartão, ao qual refere se a pessoa pode ter um cartão
de crédito, assim os Aptos apresentam estes cartão e os Inaptos não, logo nada impede do
Cliente ter recebido Inapto e ter cartão de débito
