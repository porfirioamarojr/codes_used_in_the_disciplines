





create database atividade;

show databases;

use atividade;

CREATE SEQUENCE s START WITH 100 INCREMENT BY 10;

create sequence contador start with 1 increment by 1;
 
SELECT NEXTVAL(contador);

create table estudante (
matricula int default (next value for contador), 
idade int,
nome varchar(20),
primary key (matricula)
);
 
insert into estudante (idade, nome) values (5, 'Willamy');
insert into estudante (idade, nome) values (8 , 'Taciano');
 
select * from estudante;

create view ver_estudante(nome, idade) 
as select nome, idade
from estudante;

select *
from ver_estudante;

create table cartao(
id int auto_increment,
valor decimal(5,2),
mat_est int,

foreign key (mat_est) references estudante(matricula),
constraint primary key (id) 
);

create trigger cria_cartao
after insert on estudante
for each row
insert into cartao (valor, mat_est) values (10.2, new.matricula);

select *
from cartao;

insert into estudante(idade, nome) values (22, 'Jhonatas');

drop trigger cria_cartao;

select e.nome, c.id, c.valor
from estudante e left join cartao c
on e.matricula=c.mat_est;



