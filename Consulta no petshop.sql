1) Nome dos animais cadastrados 
select nome from animal;

2) Nome dos clientes que possuem animais cadastrados
select nome from cliente c, animal a where a.cpfCliente = c.cpf;

3) Endereço do funcionário de matricula 1
select estado, cidade, bairro, logradouro, numero, composto from enderecoFUncionario where matriculaFuncionario = 1;

4) Telefone do cliente de cpf 111.111.111-11
select telefone from telefonecliente where cpfCliente = "11111111111";

5) Produtos com data de validade inferior a 30/06/2018 ordenado por nome
select nome from produto where dataValidade < "2018-06-30" order by nome;

6) Nome dos funcionários que realizaram vendas no dia 20/06/2018
select nome from funcionario f, venda v where f.matricula = v.matriculaFuncionario and v.data = "2018-06-20"; 

7) Produtos vendidos na venda nf 1
select nome from produto p, itemdeproduto i where p.codigo = i.codigoProdutos and i.notaFiscal = 1;

8) Nome dos clientes que já contrataram serviços para seus animais
select nome from cliente c, animal a, itemdeservico i where i.idAnimal = a.id and a.cpfCliente = c.cpf;

9) Telefone dos funcionários que já realizaram o serviço de tosa
select telefone from telefoneFuncionario t, itemdeservico i, servico s where t.matriculaFuncionario = i.matriculaFuncionario and i.codigoServicos = s.codigo and s.nome = "tosa";

10) Somatório dos valores das vendas do dia 20/06/2018
select sum(valorTotal) as "Valor total da venda do dia" from venda where data = "2018-06-20";

insert into venda values (null, 100.00,"2018-07-17",4);