-- Cria um usuário novo usuário local com a definição de um código de acesso para esse usuário
create user 'empresa_admin_local'@'localhost' indentified by '1234';
-- No código abaixo são dadas as permissões mas não remotamente
grant all privileges on EquipeBD.* to 'empresa_admin_local'@'localhost';
