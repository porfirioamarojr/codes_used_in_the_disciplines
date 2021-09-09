create user 'empresa_gerente'@'localhost' identfied by  '1234';

grant all privileges on empresabd.equipe from 'empresa_geral'@'localhost';
grant all privileges on empresabd.atividade_projeto from 'empresa_geral'@'localhost';
grant all privileges on empresabd.membro from 'empresa_geral'@'localhost';
grant all privileges on empresabd.atividade from 'empresa_geral'@'localhost';



