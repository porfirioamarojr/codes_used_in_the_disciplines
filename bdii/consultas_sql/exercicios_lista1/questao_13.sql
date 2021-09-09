-- OBS: Use um banco de dados e execute para testar o sql. 

create sequence cem_em_diante start with 100 increment by 1;
select nextval(cem_em_diante);

-- O valor de "100_em_diante" começa em (100) e não tem limites para finalizar ou seja não tem limite.