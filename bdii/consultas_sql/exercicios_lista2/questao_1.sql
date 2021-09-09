select nome
from funcionario
where salario > (
  select salario
  from funcionario f_dep5
  where f_dep5.cod_depto = '5'
);
