-- Atividade (Codigo, Descricao)
-- Funcionario (Codigo, Nome, Sexo, DtNasc, Salario, CodDepto)
-- Departamento (Codigo, Descricao, CodGerente)
-- Gerente (Codigo, CodDepto, CodFunc)
-- Projeto (Codigo, Descricao, CodDepto, CodResponsavel, DataInicio, DataFim) 
-- AtividadeProjeto (Codigo, CodProjeto , CodAtividade, CodResponsavel, DataInicio, DataFim)
drop database atividade2;
create database atividade2;
use atividade2;

create sequence sequencia1 start with 1 increment by 1;
create sequence sequencia2 start with 1 increment by 1;
create sequence sequencia3 start with 1 increment by 1;
create sequence sequencia4 start with 1 increment by 1;
create sequence sequencia5 start with 1 increment by 1;
create sequence sequencia6 start with 1 increment by 1;

create table atividade(
	codigo int default (next value for sequencia1),
    descricao varchar(150),
    
    constraint pk_atividade primary key(codigo)
);

create table funcionario(
	codigo int default (next value for sequencia2),
    nome varchar(150),
    sexo char,
    data_nasc date,
    salario decimal,
    cod_depto int,
	
    -- foreign key cod_depto references departamento(codigo),
    constraint pk_funcionario primary key(codigo)
);

create table gerente(
	codigo int default (next value for sequencia6),
	cod_func int,
    cod_depto int,
    
    -- foreign key cod_func references funcionario(codigo),
    -- foreign key cod_depto references departamento(codigo),
	constraint pk_gerente primary key(codigo)
);

create table departamento(
	codigo int default (next value for sequencia3),
    descricao varchar(150),
    cod_gerente int,
	
    -- foreign key cod_gerente references gerente(codigo),
    constraint pk_departamento primary key(codigo)
);

create table projeto(
	codigo int default (next value for sequencia4),
    descricao varchar(150),
    cod_depto int,
    cod_responsavel int,
    data_inicio date,
    data_fim date,
	
    -- foreign key cod_responsavel references funcionario(codigo), 
    -- foreign key cod_depto references departamento(codigo),
    constraint pk_projeto primary key(codigo)
);


create table atividade_projeto(
	codigo int default (next value for sequencia5),
    cod_projeto int,
    cod_atividade int,
    cod_responsavel int,
    data_inicio date,
    data_fim date,
    
    -- foreign key cod_responsavel references funcionario(codigo), 
    -- foreign key cod_atividade references atividade(codigo),
    -- foreign key cod_projeto references projeto(codigo),
    constraint pk_atividade_projeto primary key(codigo)
);

-- Modelo
-- ALTER TABLE nome_da_tabela ADD CONSTRAINT nome_da_constraint 
-- FOREIGN KEY(nome_da_coluna_local) REFERENCES nome_da_tabela_da_fk(coluna_fk);

-- funcionario
alter table funcionario add constraint fk_funcionario_cod_depto
foreign key (cod_depto) references departamento(codigo);

-- departamento
alter table departamento add constraint fk_departamento_cod_gerente
foreign key (cod_gerente) references gerente(codigo);

-- gerente
alter table gerente add constraint fk_gerente_cod_func
foreign key (cod_func) references funcionario(codigo);

alter table gerente add constraint fk_gerente_cod_depto
foreign key (cod_depto) references departamento(codigo);

-- projeto
alter table projeto add constraint fk_projeto_cod_responsavel
foreign key (cod_responsavel) references funcionario(codigo);

alter table projeto add constraint fk_projeto_cod_depto
foreign key (cod_depto) references departamento(codigo);

-- atividade_projeto
alter table atividade_projeto add constraint fk_ativiproj_cod_responsavel
foreign key (cod_responsavel) references funcionario(codigo);

alter table atividade_projeto add constraint fk_ativiproj_cod_atividade
foreign key (cod_atividade) references atividade(codigo);

alter table atividade_projeto add constraint fk_ativiproj_cod_projeto
foreign key (cod_projeto) references projeto(codigo);
