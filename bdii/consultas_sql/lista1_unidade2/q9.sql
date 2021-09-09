select nome
from funcionario f, departamento d
where f.codigo = d.gerente and f.salario >  (select salario
from departamento d)
