create table cliente(
	id_cliente serial primary key,
	nome varchar(50),
	endereco varchar(100),
	telefone varchar(11)
);

create table produto(
	cod_produto serial primary key,
	nome varchar(100),
	fabricante varchar(50),
	preco numeric
);

create table compra(
	id_compra serial primary key,
	data date,
	pagamento varchar(30),
	id_cliente int not null,
	cod_produto int not null,
	constraint FK_id_cliente foreign key(id_cliente) references cliente(id_cliente),
	constraint FK_cod_produto foreign key(cod_produto) references produto(cod_produto)	
);

select * from cliente
select * from produto
select * from compra

insert into cliente(nome, endereco, telefone)
values
('João Silva', 'Rua A', '54996561512'),
('Maria Souza', 'Rua B', '54999687412'),
('Pedro Santos', 'Rua C', '54981692365'),
('Ana Oliveira', 'Rua D', '11999215785'),
('Lucas Costa', 'Rua E','55996362514'),
('Mariana Alves', 'Rua F', '55981452363'),
('Rodrigo Pereira', 'Rua G', '17996326548'),
('Carla Santos', 'Rua H', '11981652354'),
('Fernando Silva', 'Rua I', '11996584234'),
('Renata Oliveira', 'Rua J', '11981342671')

insert into produto(nome, fabricante, preco)
values
('Mouse sem fio', 'Logitech', 99.99),
('Teclado mecânico', 'Razer', 199.99),
('Monitor 4K', 'LG', 799.99),
('Smartphone', 'Apple', 1299.99),
('Tablet', 'Samsung', 499.99),
('Notebook', 'Dell', 1299.99),
('Smart TV', 'Sony', 999.99),
('Câmera digital', 'Canon', 399.99),
('Fone de ouvido', 'Bose', 299.99),
('Impressora', 'HP', 149.99),
('Projetor', 'Epson', 899.99),
('Roteador Wi-Fi', 'Netgear', 99.99),
('Caixa de som Bluetooth', 'JBL', 149.99),
('Máquina de lavar roupa', 'Brastemp', 1299.99),
('Aspirador de pó', 'Electrolux', 199.99),
('Liquidificador', 'Philips', 49.99),
('Panela elétrica', 'Mondial', 99.99),
('Forno elétrico', 'Consul', 299.99),
('Aparelho de ar condicionado', 'LG', 899.99),
('Ventilador de teto', 'Hunter', 249.99),
('Lavadora de louças', 'Electrolux', 599.99),
('Cadeira gamer', 'DXRacer', 499.99),
('Mesa para computador', 'IKEA', 149.99),
('Tapete de yoga', 'Lululemon', 79.99),
('Bicicleta ergométrica', 'NordicTrack', 999.99)

insert into compra(data, pagamento, id_cliente, cod_produto)
values
('2022-01-10', 'Boleto', 1, 7),
('2022-01-10', 'Cartão de Crédito', 2, 10),
('2022-01-10', 'Cartão de Crédito', 3, 15),
('2022-02-10', 'Pix', 4, 17),
('2022-02-10', 'Boleto', 5, 13),
('2022-02-10', 'Cartão de Crédito', 6, 6),
('2022-02-10', 'Boleto', 7, 8),
('2022-03-10', 'Pix', 7, 11),
('2022-03-10', 'Pix', 8, 2),
('2022-03-10', 'Cartão de Crédito', 9, 1),
('2022-04-10', 'Cartão de Crédito', 10, 16),
('2022-04-10', 'Cartão de Crédito', 1, 3),
('2022-05-10', 'Boleto', 2, 5),
('2022-06-10', 'Cartão de Crédito', 3, 19),
('2022-06-10', 'Pix', 1, 7),
('2022-07-10', 'Cartão de Crédito', 4, 25)


select cliente.nome,cliente.endereco from cliente

select produto.nome,produto.preco from produto

select cliente.nome,produto.nome 
	from cliente join compra on cliente.id_cliente = compra.id_cliente
	join produto on produto.cod_produto = compra.cod_produto
	
select cliente.nome,compra.data,produto.nome,produto.preco
	from cliente join compra on cliente.id_cliente = compra.id_cliente
	join produto on produto.cod_produto = compra.cod_produto
	
select cliente.nome,compra.data,compra.pagamento
	from cliente join compra on cliente.id_cliente = compra.id_cliente
	join produto on produto.cod_produto = compra.cod_produto
 