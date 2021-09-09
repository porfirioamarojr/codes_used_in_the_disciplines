-- Crie um banco de dados através do comando <create database nome_banco_de_dados> ex: <create database exercicios;>
-- Utilize do comando <use o_banco_de_dados> ex: <use exercicios;>
-- Necessário a criação correta de 4 sequencias para adicionar novos passageirios, pilotos, voos e milhas
-- sequencias estruturas que substituem o auto_increment

create sequence sequencia start with 1 increment by 1;
create sequence sequencia2 start with 1 increment by 1;
create sequence sequencia3 start with 1 increment by 1;
create sequence sequencia4 start with 1 increment by 1;

-- a declaração <next valaue for sequencia> é necessária para que seja incrementado mais um passageiro na sequencia a cada insert
create table passageiro (
	codigo int default (next value for sequencia),
	nome varchar(150),
	endereco varchar(150),
    
    constraint pk_passageiro primary key(codigo)
);

create table piloto (
	codigo int default (next value for sequencia2),
	nome varchar(150),
	num_voos int,
    
    constraint pk_piloto primary key(codigo)
);

create table voo (
	codigo int default (next value for sequencia3),
	piloto int,
	tipo varchar(150),
    num_passageiros int default 0,
    distancia int default 0,
    
    foreign key (piloto) references piloto(codigo),
    constraint pk_voo primary key(codigo)
);


create table passageiro_voo (
	passageiro int,
    voo int default 0,
	classe varchar(150),
    
    foreign key (passageiro) references passageiro(codigo),
    foreign key (voo) references voo(codigo),
    constraint pk_passageiro_voo primary key(passageiro, voo)
);

create table milhas (
	codigo int default (next value for sequencia4),
    passageiro int default 0,
    qtde int default 0,
    
    foreign key (passageiro) references passageiro(codigo),
    constraint pk_milhas primary key(codigo)
);



