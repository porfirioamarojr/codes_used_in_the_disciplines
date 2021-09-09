use tarefabd;

insert into empregado (nome, endereco, salario, supervisor, depto)
values ('empregado1', 'enderecoA', 1000.10,1, 1);
insert into empregado (nome, endereco, salario, supervisor, depto)
values ('empregado2', 'enderecoB', 998,1, 1);
insert into empregado (nome, endereco, salario, supervisor, depto)
values ('empregado3', 'enderecoC', 998,1, 1);
insert into empregado (nome, endereco, salario, supervisor, depto)
values ('empregado4', 'enderecoD', 998,1, 1);
insert into empregado (nome, endereco, salario, supervisor, depto)
values ('empregado5', 'enderecoE', 998,1, 1);

***********************************************************

insert into departamento (nome, gerente, dataini)
values('departamentoA', 1, '2019/11/14');
insert into departamento (nome, gerente, dataini)
values('departamentoB', 1, '2019/11/14');
insert into departamento (nome, gerente, dataini)
values('departamentoC', 1, '2019/11/14');
insert into departamento (nome, gerente, dataini)
values('departamentoD', 1, '2019/11/14');
insert into departamento (nome, gerente, dataini)
values('departamentoE', 1, '2019/11/14');

***********************************************************

insert into projeto (nome, local, depart)
values ('projeto1', 'local1', 1);
insert into projeto (nome, local, depart)
values ('projeto2', 'local2', 1);
insert into projeto (nome, local, depart)
values ('projeto3', 'local3', 1);
insert into projeto (nome, local, depart)
values ('projeto4', 'local4', 1);
insert into projeto (nome, local, depart)
values ('projeto5', 'local5', 1);

***********************************************************

insert into alocacao (matric, codigop, horas)
values(1, 1, 20);
insert into alocacao (matric, codigop, horas)
values(1, 2, 10);
insert into alocacao (matric, codigop, horas)
values(1, 3, 100);
insert into alocacao (matric, codigop, horas)
values(1, 4, 50);
insert into alocacao (matric, codigop, horas)
values(1, 5, 30);

***********************************************************

insert into dependente (matricula, nome, sexo)
values(1, 'abdias','M');
insert into dependente (matricula, nome, sexo)
values(2, 'xico','M');
insert into dependente (matricula, nome, sexo)
values(3, 'mane','M');
insert into dependente (matricula, nome, sexo)
values(4, 'felicia','F');
insert into dependente (matricula, nome, sexo)
values(5, 'maria','F');
