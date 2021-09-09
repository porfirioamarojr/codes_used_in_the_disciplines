create prazo_final on atividade(dataFim); 

Criaria index para gerente, situaçao atividade e projeto, responsavel, depto, nome_equipe e supervisor.
Os índices contém chaves criadas de uma ou mais colunas da tabela ou view, também servindo para
recuperar os dados do banco mais rapidamente. Os usuários não podem visualizar os índices pois são
apenas para agilizar as pesquisas e consultas. É importante lembrar que para atualizar uma tabela sem
índice é mais rápido do que uma com. Pois leva tempo para atualizar os índices. Uma boa prática seria
criar índices apenas para pesquisas frequentes.
