delimiter $
create procedure media_idade_por_depto(int data_nasc) returns int
	begin
		select equipe
		from funcionario f
		where f.codigo = (select sigla gerente
						  from departamaento d);
		return @data_nasc;
	end $
delimiter;

