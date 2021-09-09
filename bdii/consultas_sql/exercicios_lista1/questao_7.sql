
create trigger adiciona_passageiro
after insert on passageiro_voo
for each row update voo
set num_passageiros = num_passageiros + 1
where new.voo = voo.codigo;


