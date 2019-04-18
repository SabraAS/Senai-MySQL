create database petshop;

use petshop;

CREATE TABLE EnderecoCliente (
codEndereco int PRIMARY KEY,
numero int not null,
estado varchar(100) not null,
bairro varchar(100) not null,
logradouro varchar(100) not null,
cidade varchar(100) not null,
composto varchar(100),
cpfCliente char(11)
);

CREATE TABLE TelefoneCliente (
telefone char(13) ,
cpfCliente char(11), primary key (telefone, cpfCliente),
tipo varchar(50)
);

CREATE TABLE Cliente (
cpf char(11) PRIMARY KEY,
nome varchar(100),
email varchar(100)
);

CREATE TABLE Animal (
id int PRIMARY KEY auto_increment,
nome varchar(100) not null,
especie varchar(50) not null,
raca varchar(50) not null,
dataNascimento date not null,
cpfCliente char(11),
constraint fkCpCl FOREIGN KEY(cpfCliente) REFERENCES Cliente (cpf)on update restrict on delete restrict
);

CREATE TABLE itemDeProduto (
notaFiscal int,
codigoProdutos int
);

CREATE TABLE Produto (
codigo int PRIMARY KEY auto_increment,
descricao varchar(100) not null,
dataValidade date not null,
nome varchar(100) not null,
valor decimal not null
);

CREATE TABLE Servico (
codigo int PRIMARY KEY auto_increment,
nome varchar(100) not null,
descricao varchar(100) not null,
valor decimal not null
);

CREATE TABLE Funcionario (
matricula int PRIMARY KEY auto_increment,
cpf char(11) unique not null,
nome varchar(100) not null
);

CREATE TABLE EnderecoFuncionario (
codEndereco int PRIMARY KEY ,
estado varchar(100) not null,
bairro varchar(100) not null,
logradouro varchar(100) not null,
cidade varchar(100) not null,
composto varchar(100),
numero int not null,
matriculaFuncionario int,
constraint fkMfM FOREIGN KEY(matriculaFuncionario) REFERENCES Funcionario (matricula)on update restrict on delete restrict
);

CREATE TABLE Venda (
notaFiscal int PRIMARY KEY auto_increment,
valorTotal decimal not null,
data date not null,
matriculaFuncionario int,
constraint fkMVM FOREIGN KEY(matriculaFuncionario) REFERENCES Funcionario (matricula)on update restrict on delete restrict
);

CREATE TABLE itemDeServico (
idAnimal int,
codigoServicos int,
matriculaFuncionario int,
constraint fkIdA FOREIGN KEY(idAnimal) REFERENCES Animal (id)on update restrict on delete restrict,
constraint fkCSC FOREIGN KEY(codigoServicos) REFERENCES Servico (codigo)on update restrict on delete restrict,
constraint fkMIM FOREIGN KEY(matriculaFuncionario) REFERENCES Funcionario (matricula) on update restrict on delete restrict
);

CREATE TABLE telefoneFuncionario (
telefone char(13),
matriculaFuncionario int, primary key (telefone, matriculaFuncionario),
tipo varchar(50) not null,
constraint fkMtM FOREIGN KEY(matriculaFuncionario) REFERENCES Funcionario (matricula) on update restrict on delete restrict
);

ALTER TABLE EnderecoCliente ADD constraint fkCpC FOREIGN KEY(cpfCliente) REFERENCES Cliente (cpf) on update restrict on delete restrict;
ALTER TABLE TelefoneCliente ADD constraint fkCTC FOREIGN KEY(cpfCliente) REFERENCES Cliente (cpf) on update restrict on delete restrict;
ALTER TABLE itemDeProduto ADD constraint fkCIP FOREIGN KEY(notaFiscal) REFERENCES Venda (notaFiscal) on update restrict on delete restrict;
ALTER TABLE itemDeProduto ADD constraint fkCiC FOREIGN KEY(codigoProdutos) REFERENCES Produto (codigo) on update restrict on delete restrict;
