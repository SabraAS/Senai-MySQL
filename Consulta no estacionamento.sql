select <campos> from <tabelas> <cláusulas>
- where --> =, >, <,
- order by
- group by
- distinct

1) Todos os clientes cadastrados
select * from cliente;

2) Nome e e-mail dos clientes
select nome, email from cliente;

3) Todas as marcações no ponto do dia 18/06/2018
select * from ponto where dataDia = "2018-06-18";

4) Todas as marcações no ponto de entrada do dia 18/06/2018 após as 10:00
select * from ponto where dataDia = "2018-06-18" and horarioEntrada > "10:00";

5) Placa do veículo de cor branco ou prata
select placa from veiculo where cor = "branco" or cor = "prata";

6) Bairro que possuam cliente cadastrados
select bairro from endereco;

7) Modelo dos veículos cadastrados
select modelo from veiculo;

8) Manobristas que manobram veículos no dia 18/06/2018
select manobrista from aluguel where dataEntrada = "2018-06-18" or dataSaida = "2018-06-18";

9) Logradouro, número e complemento do endereço ordenado pela cidade
select logradouro, numero, complemento from endereco order by cidade;

10) Endereço completo do cliente Francisco Santos
select * from endereco where codigoCliente = (select codigo from cliente where nome = "Francisco Santos");

11) Valor dos aluguéis do cliente Joana Miranda
select valor from aluguel where placa = (select placa from veiculo where codCliente = (select codigo from cliente where nome = "Joana Miranda"));

12) Hora de saída do funcionário que registrou a saída do veiculo ABC1234 no dia 18/06/2018
select horarioSaida from ponto where idFuncionario = (select codFuncionario from aluguel where placa = "ABC1234" and dataSaida = "2018-06-18");