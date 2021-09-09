select nome, data_nasc
from funcionario f
where f.codigo = (
  select codigo
  from funcionario f
  where not exists(
    select cod_gerente
    from departamento d
    where f.codigo = d.cod_gerente
  )
) and '2020' - date_part('year', data_nasc) >= 21;
