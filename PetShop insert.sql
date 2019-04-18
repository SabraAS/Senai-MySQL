insert into funcionario values (null,"12358796413","Geraldo Silva");
insert into funcionario values (null,"54889665187","Jovi Salte");
insert into funcionario values (null,"78616958216","Silvana Leão");
insert into funcionario values (null,"98448941752","Leandro dos Santos");
insert into funcionario values (null,"74857565785","Silvio Martins");

insert into telefonefuncionario values("(21)5987-1238",1,"Casa");
insert into telefonefuncionario values("(21)8714-1567",2,"Celular");
insert into telefonefuncionario values("(21)9856-5463",3,"Celular");
insert into telefonefuncionario values("(21)5481-6548",4,"Casa");
insert into telefonefuncionario values("(21)9845-9848",5,"Celular");


insert into enderecofuncionario values(1,"RJ","Vila Isabel","Rua 28 de Setembro","Rio de Janeiro","Ap 249",21,1);
insert into enderecofuncionario values(2,"RJ","Olaria","Rua de olaria","Friburgo",null,96,2);
insert into enderecofuncionario values(3,"RJ","Maracanã","Rua São Francisco Xavier","Rio de Janeiro", null,127,3);
insert into enderecofuncionario values(4,"RJ","Tijuca","Rua Não sei","Rio de JAVA",null,87,4);
insert into enderecofuncionario values(5,"RJ","Copacabana","Rua Seixox","Rio de Janeiro",null,74,5);

insert into produto values(null,"A melhor ração de todas","2019-04-12","Ração",100.00);
insert into produto values(null,"Brinquedo de mastigar favorito do cãezinhos","2020-05-06","Brinquedo de Mastigar",50.50);
insert into produto values(null,"Perfeita vazilia para seu animal","2020-08-25","Vazilia",75.60);

insert into servico values(null,"Banho","Um banho para deixar seu animal cheroso como nunca",110.25);
insert into servico values(null,"Tosa","A tosa que vai deixar seu animal com o pelo perfeito",150.00);
insert into servico values(null,"Cortar unha","Um corte de unhas para impedir seu animal de arrar seus moveis",90.25);

insert into cliente values("12345678925","Matues Latente","matueslat@gmail.com");
insert into cliente values("16846846115","Laura Seixos","laurseixo@gmail.com");
insert into cliente values("65846514861","Lucas Ferreiro","lucferre@gmail.com");
insert into cliente values("45684525438","Andre Silva","ansil@gmail.com");
insert into cliente values("65481641684","Laís Freixo","laifrei@gmail.com");

insert into telefonecliente values("(21)5985-6548","12345678925","Casa");
insert into telefonecliente values("(21)9581-6581","16846846115","Celular");
insert into telefonecliente values("(21)9845-3641","65846514861","Celular");
insert into telefonecliente values("(21)9453-4524","45684525438","Celular");
insert into telefonecliente values("(21)9758-6887","65481641684","Celular");

insert into enderecocliente values(1,109,"RJ","Vila Isabel","Rua Visconde de Abaeté","Rio de Janeiro","Ap 984","12345678925");
insert into enderecocliente values(2,958,"RJ","Olaria","Rua de olaria","Friburgo",null,"16846846115");
insert into enderecocliente values(3,52,"RJ","Maracanã","Rua São Francisco Xavier","Rio de Janeiro", null,"65846514861");
insert into enderecocliente values(4,275,"RJ","Vila Isabel","Rua 28 de Setembro","Rio de Janeiro",null,"45684525438");
insert into enderecocliente values(5,27,"RJ","Maracanã","Rua São Francisco Xavier","Rio de Janeiro",null,"65481641684");

insert into animal values(null,"Clebson","Tartaruga","Tartaruga anciã","2015-06-29","12345678925");
insert into animal values(null,"Cleiton","Macaco","Macaco prego","2014-09-14","16846846115");
insert into animal values(null,"José","Cachoro","chetsu","2016-12-06","65846514861");
insert into animal values(null,"Bola de neve","gato","vira lata","2014-12-06","45684525438");
insert into animal values(null,"Nina","cachorro","dalmata","2017-12-06","65481641684");

insert into itemDeServico values(1,2,3);
insert into itemDeServico values(2,1,2);
insert into itemDeServico values(3,3,1);
insert into itemDeServico values(4,2,5);
insert into itemDeServico values(5,1,4);

insert into venda values(null,50.95,"2018-05-28",1);
insert into venda values(null,100.95,"2018-07-17",2);
insert into venda values(null,150.95,"2018-04-30",3);
insert into venda values(null,70.95,"2017-04-29",4);
insert into venda values(null,60.00,"2014-04-15",5);

insert into itemDeProduto values(1,2);
insert into itemDeProduto values(2,3);
insert into itemDeProduto values(3,1);
insert into itemDeProduto values(4,2);
insert into itemDeProduto values(5,3);
