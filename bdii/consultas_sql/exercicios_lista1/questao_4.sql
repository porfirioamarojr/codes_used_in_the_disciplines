-- Para criar um gatilho/trigger não é necessário fazer um insert
-- No código abaixo damos um nome para o nosso trigger nesse caso (cartao_milhas), especificamos qual a tabela 
-- no exemplo (passageiro) que dada a entrada de dados realizara a ação de inserir dados em outra tabela no
-- caso (milhas).

create trigger cartao_milhas
after insert on passageiro
for each row insert into milhas(qtde, passageiro) values (0, new.codigo);

-- O código a abaixo serve para conferir
select *
from milhas;

insert into passageiro(nome, endereco) value ('Amaro Júnior', 'Rua Jose Matias');