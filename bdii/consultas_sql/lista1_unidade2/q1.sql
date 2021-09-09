delimiter $
create function idade(int data_nasc) returns int
	begin
		set @data_nasc = (select datediff(year, 'dataNasc', getdate())
						  from funcionario f 
                          where f.codigo = codigo);
		return @data_nasc;
	end $
delimiter;

