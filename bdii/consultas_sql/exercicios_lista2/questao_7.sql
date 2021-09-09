create or replace view public."total_funcionarios_depto"
as select d.codigo as codigo, count(f.codigo) as total
from departamento d, funcionario f
where f."cod_depto" = d.codigo
group by d.codigo;
 
select d.descricao, f.nome, total.total
from departamento d, funcionario f, "total_funcionarios_depto" total
where d."cod_gerente" = f.codigo and d.codigo = total.codigo
group by d.codigo, f.nome, total.total
order by d.descricao;
