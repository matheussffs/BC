create table pessoa(
	cod_pessoa integer primary key,
	nome varchar(50) not null,
	telefone varchar(15),
	altura decimal(10,2),
	idade integer,
	profissao varchar(50)
);

select * from pessoa;

insert into pessoa (cod_pessoa, nome, telefone, altura, idade, profissao)
values (1, 'Ana Silva', '(11) 99999-1111', 1.70, 25, 'Engenheiro de Software'),
       (2, 'Marcos Santos', '(21) 88888-2222', 1.75, 30, 'Médico Veterinário'),
       (3, 'Fernanda Oliveira', '(31) 77777-3333', 1.80, 27, 'Designer Gráfico'),
       (4, 'Thiago Rodrigues', '(41) 66666-4444', 1.68, 22, 'Professor de Matemática'),
       (5, 'Juliana Pereira', '(51) 55555-5555', 1.68, 35, 'Advogado'),
       (6, 'Ricardo Almeida', '(61) 44444-6666', 1.65, 24, 'Psicólogo'),
       (7, 'Luiza Costa', '(71) 33333-7777', 1.78, 26, 'Arquiteto'),
       (8, 'Eduardo Souza', '(81) 22222-8888', 1.98, 36, 'Jornalista'),
       (9, 'Carolina Ferreira', '(91) 11111-9999', 1.59, 36, 'Chef de Cozinha'),
       (10,	'Gabriel Mendes', '(12) 22222-1111', 1.74, 28, 'Consultor Financeiro'),
       (11, 'Beatriz Lima', '(22) 33333-2222', 1.88, 39, 'Piloto de Avião'),
       (12, 'Gustavo Rocha', '(32) 44444-3333', 1.62, 68, 'Empresário'),
       (13, 'Camila Carvalho', '(42) 55555-4444', 1.77, 18, 'Fotógrafo'),
       (14, 'João Pereira', '(52) 66666-5555', 1.82, 19, 'Ator'),
       (15, 'Isabela Santos', '(62) 77777-6666', 1.79, 23, 'Contador'),
       (16, 'Felipe Oliveira', '(72) 88888-7777', 1.55, 31, 'Escritor'),
       (17, 'Mariana Castro', '(82) 99999-8888', 1.90, 44, 'Músico'),
       (18, 'Pedro Fernandes', '(92) 11111-7777', 2.00, 65, 'Agricultor'),
       (19, 'Bruna Alencar', '(13) 22222-5555', 1.66, 23, 'Técnico em Informática'),
       (20, 'Lucas Martins', '(23) 33333-6666', 1.95, 26, 'Eletricista');
	   
create table carro(
	cod_carro integer primary key,
	marca varchar(50),
	modelo varchar(50),
	ano integer,
	chassi varchar(17),
	potencia integer
);

select * from carro;

insert into carro (cod_carro, marca, modelo, ano, chassi, potencia)
values (1, 'Audi', 'A4', 2021, 'WBA8D9C50JZ968746', 201),
       (2, 'BMW', 'X5', 2022, 'WBAYC6C05MDZ12547', 355),
       (3, 'Chevrolet', 'Camaro', 2020, '1G1FB1RS2L0116757', 275),
       (4, 'Dodge', 'Charger', 2021, '2C3CDXBG5MH529734', 292),
       (5, 'Ford', 'Mustang', 2022, '1FA6P8CF9N5139692', 310),
       (6, 'Honda', 'Civic', 2020, '2HGFC1F98LH550310', 158),
       (7, 'Jeep', 'Wrangler', 2021, '1C4HJXFG7MW503417', 285),
       (8, 'Kia', 'Soul', 2022, 'KNDJ23AU6N7019296', 147),
       (9, 'Lamborghini', 'Aventador', 2021, 'ZHWUF4ZD6MLA08660', 740),
       (10,	'Mercedes-Bens', 'S-Class', 2022, 'WDDUG8DB5NA111015', 496),
       (11, 'Nissan', 'Altima', 2020, '1N4BL4CW9LC154935', 188),
       (12, 'Porche', '911', 2021, 'WP0AA2A92MS215276', 379),
       (13, 'Ferrari', 'Enzo', 2004, 'SALGS2SE3MA789620', 355),
       (14, 'Subaru', 'Outback', 2020, '4S4BTANC2L3117328', 182),
       (15, 'Tesla', 'Model S', 2021, '5YJSA1E47MF415077', 670),
       (16, 'Toyota', 'Camry', 2022, 'WVWZZZAUZKP069208', 203),
       (17, 'Volkswagen', 'Golf', 2020, '4T1E11AK7NU016428', 147),
       (18, 'Volvo', 'XC90 ', 2021, 'YV4A22PM6M1660076', 316),
       (19, 'Ford', 'F-150', 2022, '1FTEW1EP9NKF14092', 325),
       (20, 'Chevrolet', 'Silverado', 2021, '3GCNWAEF9MG365929', 285);
	   
create table times(
	cod_times integer primary key,
	nome varchar(50),
	cidade varchar(50),
	ano_fundacao varchar(4),
	qtde_titulos integer,
	divisao integer
);

select * from times;

insert into times (cod_times, nome, cidade, ano_fundacao, qtde_titulos, divisao)
values (1, 'Barcelona', 'Barcelona', 1899, 96, 1),
		(2, 'Real Madrid', 'Madrid', 1902, 93, 1),
		(3, 'Manchester United', 'Manchester', 1878, 66, 1),
		(4, 'Bayern Munich', 'Munich', 1900, 61, 1),
		(5, 'AC Milan', 'Milan', 1899, 48, 1),
		(6, 'Liverpool', 'Liverpool', 1892, 48, 1),
		(7, 'Juventus', 'Turim', 1897, 47, 1),
		(8, 'Boca Juniors', 'Buenos Aires', 1905, 46, 1),
		(9, 'Ajax', 'Amsterdam', 1900, 34, 1),
		(10, 'Porto', 'Porto', 1893, 31, 1),
		(11, 'Benfica', 'Lisbon', 1904, 29, 1),
		(12, 'Inter Milan', 'Milan', 1908, 28, 1),
		(13, 'Olympique de Marseille', 'Marseille', 1899, 27, 1),
		(14, 'Paris Saint-Germain', 'Paris', 1970, 26, 1),
		(15, 'Manchester City', 'Manchester', 1880, 25, 1),
		(16, 'Celtic', 'Glasgow', 1887, 51, 1),
		(17, 'Rangers', 'Glasgow', 1872, 55, 1),
		(18, 'Sao Paulo', 'São Paulo', 1930, 31, 1),
		(19, 'Flamengo', 'Rio de Janeiro', 1895, 27, 1),
		(20, 'Corinthians', 'São Paulo', 1910, 31, 1);
		
create table cantores(
	cod_cantor integer primary key,
	nome varchar(50),
	idade integer,
	genero_musical varchar(50),
	qtde_musicas integer,
	valor_show integer
);

select * from cantores;

insert into cantores (cod_cantor, nome, idade, genero_musical, qtde_musicas, valor_show)
values(1, 'Beyoncé', 40, 'R&B', 186, 10000000),
		(2, 'Ed Sheeran', 31, 'Pop', 67,8000000),
		(3, 'Taylor Swift', 32, 'Pop', 139,9000000),
		(4, 'Drake', 35, 'Hip Hop', 150, 12000000),
		(5, 'Adele', 33, 'Pop', 30, 15000000),
		(6, 'Bruno Mars', 36, 'Pop', 77, 10000000),
		(7, 'Rihanna', 34, 'R&B', 152, 11000000),
		(8, 'Justin Bieber', 28, 'Pop', 143, 7000000),
		(9, 'Ariana Grande', 28, 'Pop', 85, 9000000),
		(10, 'Eminem', 49, 'Hip Hop', 251, 13000000),
		(11, 'Mariah Carey', 52, 'Pop', 197, 14000000),
		(12, 'Jay-Z', 52, 'Hip Hop', 187, 15000000),
		(13, 'Lady Gaga', 36, 'Pop', 112, 8000000),
		(14, 'Kanye West', 45, 'Hip Hop', 173, 11000000),
		(15, 'Katy Perry', 37, 'Pop', 107, 7000000), 
		(16, 'Billie Eilish', 20, 'Pop', 30, 5000000),
		(17, 'Post Malone', 26, 'Hip Hop', 82, 9000000),
		(18, 'Dua Lipa', 26, 'Pop', 47, 6000000),
		(19, 'SZA', 32, 'R&B', 47, 3000000),
		(20, 'The Weeknd', 32, 'R&B', 94, 10000000);
		
create table encomendas(
	cod_encomenda integer primary key,
	destinatario varchar(70),
	remetente varchar(70),
	peso integer,
	tamanho varchar(7)
);

select * from encomendas;
insert into encomendas (cod_encomenda, destinatario, remetente, peso, tamanho)
values (1, 'Ana Silva', 'João Pereira', 1, 'pequeno'),
		(2, 'João Pereira', 'Maria Souza', 2, 'médio'),
		(3, 'Maria Souza', 'Ana Clara', 3, 'grande'),
		(4, 'Daniela Costa', 'Rafael Santos', 4, 'pequeno'),
		(5, 'Ana Paula', 'José Silva', 1, 'pequeno'),
		(6, 'Juliana Santos', 'Gustavo Oliveira', 1, 'pequeno'),
		(7, 'Maria Ferreira', 'Ricardo Almeida', 11, 'grande'),
		(8, 'Carla Santos', 'André Souza', 2, 'médio'),
		(9, 'Fernanda Lima', 'Thiago Oliveira', 12, 'grande'),
		(10, 'Thiago Oliveira', ' Lucas Ferreira', 4, 'pequeno'),
		(11, 'Mariana Oliveira', 'Felipe Santos', 6, 'médio'),
		(12, 'Ana Paula Ferreira', 'Pedro Souza', 2, 'pequeno'),
		(13, 'Cleiton Rasta', 'Cabeça de Gelo', 1, 'pequeno'),
		(14, 'Neymar', 'Jorginho', 5, 'médio'),
		(15, 'Khvicha Kvaratskhelia', 'Haaland', 15, 'grande'), 
		(16, 'Victor Osimhen', 'Lukaku', 9, 'médio'),
		(17, 'kim-Min-Jae', 'Lozano', 55, 'grande'),
		(18, 'Politano', 'Rafael', 46, 'médio'),
		(19, 'Messi', 'Cristiano Ronaldo', 7, 'pequeno'),
		(20, 'José Luis', 'Luis José', 100,'grande');
		
create table refeicao(
	cod_refeicao integer primary key,
	nome varchar(50),
	preco integer,
	calorias integer,
);

select * from refeicao;

insert into refeicao(cod_refeicao, nome, preco, calorias)
values(1,Arroz, Feijão, Frango Grelhado,R$ 15,00,500 kcal
		(2,Arroz, Feijão, Bife à Milanesa,R$ 17,00,600 kcal
		(3,Arroz Integral, Lentilha, Carne de Soja,R$ 14,00,400 kcal
		(4,Macarrão com Molho de Tomate, Frango Desfiado,R$ 16,00,450 kcal
		(5,Salada Verde, Batata Doce Assada, Peito de Peru,R$ 18,00,300 kcal
		(6,Feijoada, Couve, Arroz Branco,R$ 22,00,700 kcal
		(7,Strogonoff de Carne, Arroz, Batata Palha,R$ 20,00,550 kcal
		(8,Salmão Grelhado, Purê de Mandioquinha, Legumes no Vapor,R$ 28,00,450 kcal
		(9,Arroz com Brócolis, Frango ao Molho Branco,R$ 19,00,500 kcal
		(10,Sopa de Legumes, Pão Integral,R$ 12,00,250 kcal
		(11,Lasanha de Legumes, Salada Mista,R$ 21,00,400 kcal
		(12,Frango Xadrez, Arroz, Legumes Refogados,R$ 18,00,550 kcal
		(13,Estrogonofe de Frango, Batata Palha, Arroz,R$ 19,00,500 kcal
		(14,Feijão Branco, Carne de Panela, Arroz Integral,R$ 16,00,450 kcal
		(15,Quibe Assado, Tabule, Coalhada Seca,R$ 17,00,350 kcal
		(16,Peixe Assado, Arroz, Salada de Rúcula com Tomate Seco,R$ 24,00,400 kcal
		(17,Arroz com Lentilha, Bife Grelhado, Salada Verde,R$ 18,00,500 kcal
		(18,Torta de Frango, Salada Mista,R$ 16,00,400 kcal
		(19,Ensopado de Carne, Arroz Branco, Farofa,R$ 22,00,600 kcal
		(20,Arroz Integral, Feijão, Omelete de Legumes,R$ 15,00,350 kcal)





		
		