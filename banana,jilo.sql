create table clientes(
	id_cliente integer primary key not null,
	id_Endereco integer not null,
	nome varchar(50) not null,
	CPF varchar(11),
	idade integer,
	fruta_Preferida varchar(30)
);
select * from clientes
select nome from clientes where fruta_Preferida = 'jiló';
select clientes.nome from clientes,endereco where clientes.id_cliente = endereco.id_Endereco and fruta_Preferida = 'jiló' and UF = 'RS';
select clientes.nome,clientes.fruta_Preferida,endereco.UF from clientes,endereco where clientes.id_cliente = endereco.id_Endereco;
select clientes.nome from clientes,endereco where clientes.id_cliente = endereco.id_Endereco and bairro_Perigoso = 'true';
select clientes.nome,clientes.CPF from clientes,endereco where clientes.id_cliente = endereco.id_Endereco and bairro_Perigoso = 'true';
select clientes.CPF from clientes,endereco where clientes.id_cliente = endereco.id_Endereco and fruta_Preferida = 'banana' and UF = 'RR';
select clientes.nome,clientes.CPF from clientes,endereco where clientes.id_cliente = endereco.id_Endereco and fruta_Preferida = 'banana' and bairro_Perigoso = 'false';
select clientes.nome from clientes,endereco where clientes.id_cliente = endereco.id_Endereco and fruta_Preferida = 'banana' and idade > 30;
select clientes.nome,endereco.nome_rua, endereco.numero from clientes,endereco where clientes.id_cliente = endereco.id_Endereco and fruta_Preferida = 'jiló';

insert into clientes (id_cliente, id_Endereco, nome, CPF, idade, fruta_Preferida)
values (1, 1,'Ana Silva', '12345678900', 25, 'banana'),
		(2, 2,'Pedro Santos', '98765432100', 32, 'jiló'),
		(3, 3,'Marina Oliveira', '45678912300', 19, 'banana'),
		(4, 4,'Lucas Souza', '78912345600', 42, 'jiló'),
		(5, 5,'Juliana Costa', '32165498700', 28, 'banana'),
		(6, 6,'Rodrigo Almeida', '45612378900', 37, 'jiló'),
		(7, 7,'Mariana Santos', '78945612300', 23, 'banana'),
		(8, 8,'Fernanda Lima', '65432198700', 31, 'jiló'),
		(9, 9,'João Carvalho', '12378945600', 29, 'banana'),
		(10, 10,'Vitoria Ferreira', '98732165400', 24, 'jiló'),
		(11, 11,'Roberto Santos', '45612378900', 36, 'banana'),
		(12, 12,'Leticia Oliveira', '78945612300', 22, 'jiló'),
		(13, 13,'Carlos Silva', '65432198700', 27, 'banana'),
		(14, 14,'Maria Oliveira', '12378945600', 33, 'jiló'),
		(15, 15,'Ricardo Costa', '98732165400', 26, 'banana');

create table endereco(
	id_Endereco integer primary key not null,
	nome_Rua varchar(100),
	numero integer,
	bairro_Perigoso boolean,
	UF varchar(2),
	constraint FK_id_Endereco foreign key(id_Endereco) references clientes(id_cliente)
);

select * from endereco;

INSERT INTO endereco (id_Endereco, nome_rua, numero, bairro_Perigoso, UF) 
VALUES (1, 'Rua das Flores', 123, true, 'SP'),
 		(2, 'Avenida dos Sonhos', 456, true, 'RJ'),
 		(3, 'Rua da Praia', 789, false, 'SC'),
 		(4, 'Rua do Sol', 321, true, 'RS'),
 		(5, 'Avenida das Palmeiras', 678, false, 'MG'),
 		(6, 'Rua do Parque', 910, true, 'RS'),
 		(7, 'Rua do Campo', 111, false, 'RR'),
 		(8, 'Avenida do Céu', 222, true, 'GO'),
 		(9, 'Rua da Montanha', 333, true, 'ES'),
 		(10, 'Avenida da Praça', 444, false, 'PA'),
 		(11, 'Rua das Árvores', 555, true, 'MT'),
 		(12, 'Rua do Mar', 666, false, 'PE'),
 		(13, 'Avenida da Paz', 777, true, 'CE'),
 		(14, 'Rua do Amor', 888, true, 'AL'),
 		(15, 'Avenida da Liberdade', 999, false, 'RR');