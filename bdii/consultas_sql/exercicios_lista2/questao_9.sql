create or replace view public.gerente_departamentos
as select f.codigo as cod_gerente, f.salario as salario_gerente, d.codigo as depto
from funcionario f, departamento d where d.cod_gerente = f.codigo;
 
create or replace view public.total_projetos_funcionario
as select count(*) as total, f.codigo as func from funcionario f, projeto proj
where f.codigo = proj.cod_responsavel
group by f.codigo;
 
select f.nome, tot.total, f.salario
from funcionario f, projeto proj, total_projetos_funcionario tot, gerente_departamentos ge
where f.codigo = proj.cod_responsavel and ge.salario_gerente < f.salario and ge.depto = proj.cod_depto
group by f.nome, tot.total, f.salario;

