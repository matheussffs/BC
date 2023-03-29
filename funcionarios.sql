create table funcionario(
	id_funcionario serial primary key,
	nome varchar(50),
	CPF varchar(11),
	nascimento varchar(10),
	admissao varchar(10),
	salario numeric
);

select * from funcionario;

drop table funcionario;
drop table funcao;

insert into funcionario(nome, CPF, nascimento, admissao, salario)
values
('João Silva', '12345678900', '01-01-1990', '03-01-2021', 5000.0),
('Maria Souza', '98765432100', '05-12-1985', '02-15-2020', 6000.00),
('Pedro Santos', '45678912300', '12-20-1992', '01-05-2019', 4500.00),
('Ana Oliveira', '78912345600', '07-10-1995', '03-15-2022', 5500.00),
('Lucas Costa', '32165498700', '03-28-1988', '11-30-2018', 7000.00),
('Mariana Alves', '45612378900', '09-25-1991', '09-01-2017', 4800.00),
('Rodrigo Pereira', '78945612300', '06-05-1987', '02-28-2022', 6500.00),
('Carla Santos', '65432198700', '11-15-1993', '08-20-2016', 5200.00),
('Fernando Silva', '12378945600', '02-28-1984', '07-01-2015', 7500.00),
('Renata Oliveira', '98732165400', '04-18-1996', '01-15-2023', 5800.00);

create table funcao(
	id_funcao serial primary key,
	nome varchar(50),
	descricao varchar(100),
	dificuldade varchar(7),
	id_funcionario integer,
	constraint FK_id_funcionario foreign key(id_funcionario) references funcionario(id_funcionario)
);

select * from funcao;

select funcionario.nome,funcao.nome from funcionario,funcao where funcionario.id_funcionario = funcao.id_funcionario;
select funcionario.nome from funcionario where salario > 6900;
select funcionario.nome,funcao.descricao from funcionario,funcao where funcionario.id_funcionario = funcao.id_funcionario;
select funcionario.nome,funcionario.salario,funcao.descricao from funcionario join funcao on funcionario.id_funcionario = funcao.id_funcionario;
select funcionario.nome,funcionario.admissao,funcionario.salario,funcao.nome,funcao.dificuldade from funcionario join funcao on funcionario.id_funcionario = funcao.id_funcionario;
select funcao.nome,funcionario.salario,funcao.dificuldade from funcionario join funcao on funcionario.id_funcionario = funcao.id_funcionario;

insert into funcao(nome, descricao, dificuldade, id_funcionario)
values
('Desenvolvedor Full-stack', 'Desenvolvimento de software completo', 'difícil', 1),
('Coordenador de Vendas', 'Coordenação de equipe de vendas', 'médio', 2),
('Analista de Suporte', 'Suporte técnico para usuários', 'fácil', 3),
('Desenvolvedor Front-end', 'Desenvolvimento de interfaces web', 'médio', 4),
('Gerente de Projetos', 'Coordenação de projetos de diversas áreas', 'difícil', 5),
('Assistente Administrativo', 'Auxiliar em atividades administrativas', 'fácil', 6),
('Engenheiro de Software', 'Desenvolvimento de software de alta complexidade', 'difícil', 7),
('Analista de Recursos Humanos', 'Recrutamento e seleção de funcionários', 'médio', 8),
('Analista de Marketing Digital', 'Planejamento e execução de campanhas de marketing digital', 'médio', 9),
('Analista Financeiro', 'Análise e controle financeiro', 'difícil', 10);