delimiter $
create function media_idade_por_depto(int data_nasc) returns int
	begin
		set @data_nasc = (select avg(datediff(year, 'dataNasc', getdate()))
						  from funcionario f 
                          where f.codigo = (select gerente
											from departamaento d 
                                            group by d.codigo);
		return @data_nasc;
	end $
delimiter;
