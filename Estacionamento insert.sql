insert into funcionario values(null, "José da Silva",1);
insert into funcionario (nome, papel) values ("Maria de Souza",2);

insert into ponto values (null, "2018-06-18", "13:00", "22:00", 1);
insert into ponto values (null, "2018-06-18", "8:00", "17:00", 2);

insert into cliente values (null, "franciscos@gmail.com","Francisco Santos");
insert into cliente values (null, "joana1990@hotmail.com","Joana Miranda");

insert into telefone values ("(21)98888-7777",1);
insert into telefone values ("(21)96543-3333",2);

insert into endereco values (null, "Maracanã","Av. Maracanã","RJ", 830,"Rio de Janereiro","APT 201",1);
insert into endereco values (null,"Patos","Rod. Presidente Dutra","RJ",6400,"Nova Iguaçú",null,2);

insert into veiculo values ("ABC1234","Prata","Honda Civic",1);
insert into veiculo values ("MNO9876","Branco","FIAT Strada",2);

insert into vagas values (null,1);
insert into vagas values (null,0);
insert into vagas values (null,1);

insert into aluguel values (null, "2018-06-18","10:00","14:15","2018-06-18",20.00,"Antônio",1,"ABC1234",2,1);
insert into aluguel values (null, "2018-06-18","09:27","08:10","2018-07-15",150.00,"Marcos",2,"MNO9876",2,2);