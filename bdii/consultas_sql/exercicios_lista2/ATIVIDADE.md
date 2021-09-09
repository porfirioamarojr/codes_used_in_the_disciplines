# Lista de Exercícios

Consultas Aninhadas e JOIN

Considere o banco de dados abaixo para responder às questões:

Atividade (Codigo, Descricao)
Funcionario (Codigo, Nome, Sexo, DtNasc, Salario, CodDepto)
Departamento (Codigo, Descricao, CodGerente)
Projeto (Codigo, Descricao, CodDepto, CodResponsavel, DataInicio, DataFim) 
AtividadeProjeto (Codigo, CodProjeto , CodAtividade, CodResponsavel, DataInicio, DataFim)
Faça uma consulta que selecione o nome dos funcionários que recebem salários superiores aos salários pagos no departamento 5.

Faça uma consulta que selecione o nome de todos os funcionários exceto o mais idoso.

Faça uma consulta que selecione o nome e a data de nascimento dos funcionários com idade superior a 21 anos que não são gerentes.

Faça uma consulta que selecione o nome, o salário e o departamento dos funcionários que não são gerentes, ordenando pelo Código do Departamento.

Responda as perguntas:
Explique os problemas de termos valores nulos nos dados.
Em alguns casos, uma entidade pode não necessitar de um valor aplicável a um de seus atributos. Por exemplo, no atributo número-apartamento composto, apenas definiremos valores para este campo quando a entidade pessoa em particular morar em um prédio. Outro exemplo é multivalorado idioma de um aluno: caso este aluno em particular não tenha fluência em nenhuma língua, então não necessitamos preencher o valor deste atributo. A representação de um atributo sem valor é colocarmos um valor especial null. Null também pode ser utilizado quando não conhecemos o valor de um atributo, por exemplo, quando se é desconhecida a data de nascimento de uma pessoa.
Explique o funcionamento do Right e do Left Join.
LEFT JOIN: 
Retorna todas as linhas da tabela à esquerda, mesmo se não houver nenhuma correspondência na tabela à direita.

    SELECT colunas
    FROM tabela_esq
    LEFT (OUTER) JOIN tabela_dir
    ON tabela_esq.coluna=tabela_dir.coluna;

RIGHT JOIN:
Retorna todas as linhas da tabela à direita, mesmo se não houver nenhuma correspondência na tabela à esquerda.

    SELECT colunas
    FROM tabela_esq
    RIGHT (OUTER) JOIN tabela_dir
    ON tabela_esq.coluna=tabela_dir.coluna;


Explique o funcionamento do Full Outer Join e como pode ser feito no MySQL ou MariaDB que não tem mais o comando Full.
FULL JOIN: Retorna linhas quando houver uma correspondência em qualquer uma das tabelas. É uma combinação de LEFT e RIGHT JOINS.


Faça uma consulta que selecione o nome, o salário dos funcionário e a descrição do departamento, mesmo que eles não tenham departamentos associados.
    select e.nome, e.salario, d.des_depto
    from empregado e, departamento d
    where e.cod_depto = d.cod

Faça uma consulta que selecione o nome dqo departamento, o nome do gerente, e o número de funcionários de cada departamento. Deve aparecer os departamentos sem gerente e sem funcionários. Crie uma view para totalizar o número de funcionários em cada departamento e utilize-a na consulta.

Faça uma consulta que selecione o nome do departamento, o nome do gerente, e o número de projetos de cada departamento. Deve aparecer os departamentos sem gerente e sem projetos. Crie e use views na consulta, se necessário.

Faça uma consulta que selecione o nome dos funcionários responsáveis por projetos, o número de projetos que este funcionário é responsável e seus salários, mas apenas os funcionários que ganhem mais que o gerente do seu departamento. Crie e use views na consulta.

Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável.

Faça uma consulta que selecione o nome do projeto, o nome do departamento do projeto, o nome do funcionário responsável pelo projeto, o nome do departamento do funcionário responsável, mas apenas os projetos que o responsável é de outro departamento.

Faça uma consulta que selecione o nome do projeto, data de início e fim do projeto, o nome da atividade do projeto, data de início e fim da atividade.

Faça uma consulta que selecione o nome do projeto, data de início e fim do projeto, o nome da atividade do projeto, data de início e fim da atividade. Só devem ser exibidas às atividades que começarem antes da data de início do projeto ou que terminarem depois do final do projeto.

Faça uma consulta que selecione o nome dos funcionários responsáveis por atividades, o número de atividades que este funcionário é responsável. Crie e use views na consulta.

Faça uma consulta que selecione o nome dos projetos e o nome dos funcionários responsáveis por esses projetos, a quantidade de atividades do projeto e a quantidade de responsáveis pela atividades (os responsável por atividades só devem ser contados uma única vez no projeto). Crie e use views na consulta.

Faça uma consulta que selecione o nome dos responsáveis de projeto que também são gerentes de departamento ou que ganham mais que o gerente de seu departamento. Use views se necessário.

Faça uma consulta que selecione a código  e descrição do projeto cujo gerente do departamento que ele faz parte ganhe mais que os outros gerentes de departamento.

Faça uma consulta que selecione o nome dos funcionários com maior salário de seu departamento, mesmo que não tenha departamento associado, e o nome dos respectivos departamentos. Exiba em ordem crescente de acordo com o salário.


