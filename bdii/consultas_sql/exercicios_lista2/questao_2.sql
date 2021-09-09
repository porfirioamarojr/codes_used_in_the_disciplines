select nome
from funcionario
where data_nasc != (
  select min(data_nasc)
  from funcionario
);

