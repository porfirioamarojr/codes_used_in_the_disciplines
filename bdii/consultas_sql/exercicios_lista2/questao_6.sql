select nome, salario, d.descricao
from funcionario f, departamento d
where f.cod_depto = d.codigo;