create table pessoa(
	id int primary key not null,
	nome varchar(40) not null,
	endere varchar(50),
	tel numeric,
	email varchar(70),
	slalario numeric,
	check(salario >= 0)
);

create table cliente_fisico(
	nome varchar(40) not null,
	cpf numeric primary key not null,
	dataNasc date
	sexo varchar(2)
	rg numeric
);

create table usuario(
	cpf numeric primary key not null,
	nome varchar(40) not null,
	dataNasc date,
	login varchar(50),
	senha varchar(40),
	rg numeric
);

create table loja(
	cnpj numeric primary key not null,
	nome_fantasia varchar(40) not null
);

create table fornecedor(
	cnpj numeric primary key not null,
	nome_fantasia varchar(40)
);
	
create table estoque(
	id_peca int primary key not null	
);

create table peca(
	id int primary key not null,
	nome varchar(30) not null,
	data date,
	preco double
);

create table item_endido(
	id int primary key not null,
	preco_venda double
);

