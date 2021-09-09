-- Cria um gatilho para inserção de mais um voo para o (código do piloto)id do piloto referente no insert  
drop trigger mais_um_voo;

create trigger mais_um_voo
after insert on voo
for each row update piloto
set num_voos = num_voos + 1 
where new.piloto = piloto.codigo;

-- Abaixo o código de inserção de um piloto e em seguida o de inserção de um voo 
insert into piloto(nome, num_voos)values('JJ', 0);

insert into voo(piloto, tipo, num_passageiros, distancia)values(1 , 'classico', '150', 100);

-- O comando abaixo permite a inserção de dados sem a necessidade do uso da condição where 
-- mais prescisamente, foi usado para inserir um conjunto de dados na tabela voo/
-- valor 0 = false, 1 = true
set SQL_SAFE_UPDATES = 0;
 
-- Mostra todos os dados de todos os pilotos
select *
from piloto;

