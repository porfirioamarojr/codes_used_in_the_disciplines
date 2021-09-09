select proj.descricao as 'nome proj', d.descricao as 'depto proj',
f.nome 'nome resp', d2.descricao 'depto func'
from projeto proj left join departamento d
on proj.cod_depto = d.codigo
left join funcionario f
on f.codigo = proj.cod_responsavel
left join departamento d2
on f.cod_depto = d2.codigo;
