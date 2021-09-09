-- Na linha abaixo cria-se um usuário
create user 'empresa_gerente'@'localhost' identified by '2020'
-- Na linha abaixa as permissões são sconcedidias
grant select on EquipeBD.Equipe,Membro,Atividade,AtividadeProjeto to 'empresa_gerente'@'localhost';
