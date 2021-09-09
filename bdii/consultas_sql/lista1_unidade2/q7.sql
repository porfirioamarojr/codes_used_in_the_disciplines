delimiter $
create function qtde_atividade_membros_por_projeto(int data_nasc) returns int
	begin
		set @data_nasc = (select count())
						  from atividade a 
                          where a.codigo = (select gerente
											from departamaento d 
                                            group by d.codigo);
		return @data_nasc;
	end $
delimiter;

