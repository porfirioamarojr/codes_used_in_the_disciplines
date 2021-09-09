-- OBS: Use um banco de dados e execute para testar o sql. 

create sequence contador start with 1 increment by 1 maxvalue=1000;
select nextval(contador);
