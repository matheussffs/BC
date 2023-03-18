create table clientes(
	id_cliente integer not null,
	nome varchar(50) not null,
	CPF varchar(11),
	idade integer,
	fruta_Preferida varchar(30),
	cod_Endereco integer
	constraint PK_id_cliente primary key
);

alter table clientes add constraint FK_id_endereco foreign key(cod_Endereco);
select * from clientes;
select nome from clientes where fruta_Preferida = 'jiló';

insert into clientes (id_cliente, nome, CPF, idade, fruta_Preferida, cod_Endereco)
values (1, 'Ana Silva', '12345678900', 25, 'banana', 1),
		(2, 'Pedro Santos', '98765432100', 32, 'jiló', 2),
		(3, 'Marina Oliveira', '45678912300', 19, 'banana', 3),
		(4, 'Lucas Souza', '78912345600', 42, 'jiló', 4),
		(5, 'Juliana Costa', '32165498700', 28, 'banana', 5),
		(6, 'Rodrigo Almeida', '45612378900', 37, 'jiló', 6),
		(7, 'Mariana Santos', '78945612300', 23, 'banana', 7),
		(8, 'Fernanda Lima', '65432198700', 31, 'jiló', 8),
		(9, 'João Carvalho', '12378945600', 29, 'banana', 9),
		(10, 'Vitoria Ferreira', '98732165400', 24, 'jiló', 10),
		(11, 'Roberto Santos', '45612378900', 36, 'banana', 11),
		(12, 'Leticia Oliveira', '78945612300', 22, 'jiló', 12),
		(13, 'Carlos Silva', '65432198700', 27, 'banana', 13),
		(14, 'Maria Oliveira', '12378945600', 33, 'jiló', 14),
		(15, 'Ricardo Costa', '98732165400', 26, 'banana', 15)
		
create table endereco(
	cod_Endereco integer not null,
	nome_Rua varchar(100),
	numero integer,
	bairro_Perigoso boolean,
	UF varchar(2)
	constraint PK_cod_Endereco primary key
);

select * from endereco;

INSERT INTO endereco (cod_Endereco, nome_rua, numero, bairro_Perigoso, UF) 
VALUES (1, 'Rua das Flores', 123, true, 'SP');
 		(2, 'Avenida dos Sonhos', 456, true, 'RJ');
 		(3, 'Rua da Praia', 789, false, 'SC');
 		(4, 'Rua do Sol', 321, true, 'RS');
 		(5, 'Avenida das Palmeiras', 678, false, 'MG');
 		(6, 'Rua do Parque', 910, true, 'RS');
 		(7, 'Rua do Campo', 111, false, 'RR');
 		(8, 'Avenida do Céu', 222, true, 'GO');
 		(9, 'Rua da Montanha', 333, true, 'ES');
 		(10, 'Avenida da Praça', 444, false, 'PA');
 		(11, 'Rua das Árvores', 555, true, 'MT');
 		(12, 'Rua do Mar', 666, false, 'PE');
 		(13, 'Avenida da Paz', 777, true, 'CE');
 		(14, 'Rua do Amor', 888, true, 'AL');
 		(15, 'Avenida da Liberdade', 999, false, 'RR');


alter table clientes add constraint FK_