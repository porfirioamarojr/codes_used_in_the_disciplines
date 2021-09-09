select nome, salario, d.descricao
from funcionario f, departamento d
where not exists (
  select cod_gerente
  from departamento d
  where f.codigo = d.cod_gerente 
)
and f.cod_depto = d.codigo
order by d.codigo;
