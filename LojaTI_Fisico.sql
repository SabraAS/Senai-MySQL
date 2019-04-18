create database lojaTi;

use lojaTi;

create table Produto (
codigo int(6) primary key auto_increment,
nome varchar(50) not null,
valor decimal(8,2) not null,
descricao varchar(20) not null
);

create table Funcionário (
matricula int(6) primary key auto_increment,
nome varchar(50) not null,
sexo varchar(20) not null,
cpf char(14) not null unique
);

create table TelefoneFuncionario (
telefone char(13),
matriculaFuncionario int(6),
tipo varchar(50),
primary key(telefone,matriculaFuncionario),
constraint fktF foreign key(matriculaFuncionario) references Funcionário (matricula) on update restrict on delete restrict
);

create table enderecoFuncionario (
id_endereco int(6) primary key auto_increment,
cep char(9) not null,
bairro varchar(50) not null,
numero varchar(10) not null,
estado varchar(50) not null,
logradouro varchar(50) not null,
complemento varchar(20),
matriculaFuncionario int(6),
constraint fkeF foreign key(matriculaFuncionario) references Funcionário (matricula) on update restrict on delete restrict
);


create table Serviço (
codigo int(6) primary key auto_increment,
descricao varchar(20) not null,
nome varchar(50) not null,
valor decimal(8,2) not null
);

create table Cliente (
cpf char(14) primary key,
nome varchar(50) not null,
email varchar(70) 
);

create table enderecoCliente (
id_endereco int(6) primary key,
cep char(9),
bairro varchar(50),
numero varchar(10),
estado varchar(50),
logradouro varchar(50),
complemento varchar(20),
cpfCliente char(14),
constraint fkeCC foreign key(cpfCliente) references Cliente (cpf) on update restrict on delete restrict
);

create table TelefoneCliente (
telefone char(13),
cpfCliente char(14),
tipo varchar(50),
primary key(telefone,cpfCliente),
constraint fktC foreign key(cpfCliente) references Cliente (cpf) on update restrict on delete restrict
);

create table Venda (
notaFiscal int(6) primary key,
valorTotal decimal(8,2) not null,
data date not null,
cpfCliente char(14),
matriculaFuncionario int(6),
constraint fkvC foreign key(cpfCliente) references Cliente (cpf) on update restrict on delete restrict,
constraint fkvF foreign key(matriculaFuncionario) references Funcionário (matricula) on update restrict on delete restrict
);

create table ItemVenda (
codigoProduto int(6),
notaFiscal int(6),
constraint fkivNf foreign key(notaFiscal) references Venda (notaFiscal) on update restrict on delete restrict,
constraint fkivCp foreign key(codigoProduto) references Produto (codigo) on update restrict on delete restrict
);

create table ItemServiço (
codigoServico int(6),
matriculaFuncionario int(6),
cpfCliente char(14), 
constraint fkisCs foreign key(codigoServico) references Serviço (codigo) on update restrict on delete restrict,
constraint fkisMf foreign key(matriculaFuncionario) references Funcionário (matricula) on update restrict on delete restrict,
constraint fkisCc foreign key(cpfCliente) references Cliente (cpf) on update restrict on delete restrict
);


