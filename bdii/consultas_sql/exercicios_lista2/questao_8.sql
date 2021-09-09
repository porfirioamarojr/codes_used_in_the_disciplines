create or replace view public.total_projetos_depto
as select count(*) as total, d.codigo as dep
from projeto p, departamento d
where p.cod_depto = d.codigo
group by d.codigo;
 
select d.descricao, f.nome, tot.total
from departamento d
left join funcionario f on f.codigo = d.cod_gerente
left join total_projetos_depto total on total.depto = d.codigo;
