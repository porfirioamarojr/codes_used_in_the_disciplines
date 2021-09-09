create trigger adiciona_milhas
after insert on passageiro_voo
for each row update milhas
set qtde = qtde +  
(select distancia
from voo, passageiro_voo 
where new.voo = voo.codigo)/10
where passageiro = new.passageiro;

insert into piloto(nome, num_voos)values('Gerson', 0);
insert into passageiro(nome, endereco)values('Jhonatas','Rua José Matias');
insert into voo(piloto,tipo,distancia)values(1, 'expresso', 20);
insert into passageiro_voo(passageiro, voo,classe)values(1,1,'conexão');

insert into piloto(nome, num_voos)values('Marcelo', 0);
insert into passageiro(nome, endereco)values('Erildo','Xico');
insert into voo(piloto,tipo,distancia)values(2, 'conexão', 50);
insert into passageiro_voo(passageiro, voo,classe)values(2,2,'conexão');

insert into piloto(nome, num_voos)values('Taciano', 0);
insert into passageiro(nome, endereco)values('Amaro','VDC');
insert into voo(piloto,tipo,distancia)values(3, 'Conexão-Dupla', 100);
insert into passageiro_voo(passageiro,voo,classe)values(3,3,'conexão-dupla');

insert into piloto(nome, num_voos)values('Doidão', 0);
insert into passageiro(nome, endereco)values('Mais doidão ainda','VDC');
insert into voo(piloto,tipo,distancia)values(4, 'Conexão-Infinita', 10);
insert into passageiro_voo(passageiro,voo,classe)values(4,4,'conexão-infinita');

insert into piloto(nome, num_voos)values('Doidasso', 0);
insert into passageiro(nome, endereco)values('Apenas Doidão','VDC');
insert into voo(piloto,tipo,distancia)values(5, 'Conexão-Trilionária', 100);
insert into passageiro_voo(passageiro,voo,classe)values(5,5,'Conexão-Trilionária');

insert into piloto(nome, num_voos)values('verdade', 0);
insert into passageiro(nome, endereco)values('fé','VDC');
insert into voo(piloto,tipo,distancia)values(6, 'agora', 100);
insert into passageiro_voo(passageiro,voo,classe)values(6,6,'agora');

select *
from milhas;