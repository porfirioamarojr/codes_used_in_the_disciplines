
-- No caso se for preciso criar a sequência: create sequence contador start with 1 increment by 1 maxvalue=1000;
alter sequence contador restart maxvalue=200;
select nextval(contador);

-- O comando reiniciará a sequência com o valor máximo de 200 que antes não existia.