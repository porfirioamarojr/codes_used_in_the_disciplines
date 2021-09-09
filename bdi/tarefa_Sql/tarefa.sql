#create database tarefabd;
use tarefabd;

#drop table if exists empregado, departamento, projeto, alocacao, dependente cascade;

create table empregado (
    matricula int not null auto_increment,
    nome varchar(55),
    endereco varchar(55),
    salario float,
    supervisor int,
    depto int,
    primary key(matricula)
);

create table departamento (
    coddep int not null auto_increment,
    nome varchar(55),
    gerente int,
    dataini date,
    primary key(coddep)
);

create table projeto (
    codproj int not null auto_increment,
    nome varchar(55),
    local varchar(55),
    depart int,
    primary key(codproj)
);

create table alocacao (
    matric int not null,
    codigop int not null,
    horas int,
    primary key(matric, codigop)
);

create table dependente (
    coddepend int not null auto_increment,
    matricula int,
    nome varchar(55),
    sexo char,
    primary key(coddepend)
);

ALTER TABLE empregado ADD CONSTRAINT fksupervisor FOREIGN KEY (supervisor) REFERENCES empregado(matricula);
ALTER TABLE empregado ADD CONSTRAINT fkdepto FOREIGN KEY (depto) REFERENCES departamento(coddep);
ALTER TABLE departamento ADD CONSTRAINT fkgerente FOREIGN KEY (gerente) REFERENCES empregado(matricula);
ALTER TABLE projeto ADD CONSTRAINT fkdepart FOREIGN KEY (depart) REFERENCES departamento(coddep);
ALTER TABLE alocacao ADD CONSTRAINT fkmatric FOREIGN KEY (matric) REFERENCES empregado(matricula);
ALTER TABLE alocacao ADD CONSTRAINT fkcodigop FOREIGN KEY (codigop) REFERENCES projeto(codproj);

