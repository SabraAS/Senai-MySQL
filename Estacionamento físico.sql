create database estacionamento;

use estacionamento;

create table funcionario(id int primary key auto_increment, nome varchar(30) not null, papel int not null);

create table ponto(codigo int primary key auto_increment, dataDia date not null, horarioEntrada time, horarioSaida time, idFuncionario int, constraint fkId foreign key (idFuncionario) references funcionario (id) on update restrict on delete restrict);

create table vagas(id int primary key auto_increment, estado int not null);

create table cliente(codigo int primary key auto_increment, email varchar(50), nome varchar(30)not null);

create table telefone(telefone char(14), codigoCliente int, primary key (telefone, codigoCliente), constraint fkCod foreign key (codigoCliente) references cliente (codigo) on update restrict on delete restrict);

create table endereco(codEndereco int primary key auto_increment, bairro varchar(30) not null, logradouro varchar(50) not null, estado varchar(30) not null, numero int not null, cidade varchar(30) not null, complemento varchar(30), codigoCliente int, constraint fkC foreign key(codigoCliente) references cliente (codigo) on update restrict on delete  restrict);

create table veiculo(placa char(8) primary key , cor varchar(50) not null, modelo varchar(30) not null, codCliente int, constraint fkCC foreign key (codCliente) references cliente (codigo) on update restrict on delete restrict); 

create table aluguel(codAluguel int primary key auto_increment, dataEntrada date not null, horaEntrada time not null, horaSaida time not null, dataSaida date not null, valor decimal not null, manobrista varchar(30) not null, tipo int, placa char(8), codigoVagas int, codFuncionario int, constraint fkAP foreign key (placa) references veiculo (placa) on update restrict on delete restrict, constraint fkCvaga foreign key (codigoVagas) references vagas (id) on update restrict on delete restrict,constraint fkCfuncion foreign key (codFuncionario) references funcionario (id) on update restrict on delete restrict);