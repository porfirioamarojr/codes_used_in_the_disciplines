# Resposta 5.A 
> Em alguns casos, uma entidade pode não necessitar de um valor aplicável a um de seus atributos.
> Por exemplo, no atributo número-apartamento composto, apenas definiremos valores para este campo
> quando a entidade pessoa em particular morar em um prédio. Outro exemplo é multivalorado idioma de
> um aluno: caso este aluno em particular não tenha fluência em nenhuma língua, então não necessitamos
> preencher o valor deste atributo. A representação de um atributo sem valor é colocarmos um valor
> especial null. Null também pode ser utilizado quando não conhecemos o valor de um atributo, por
> exemplo, quando se é desconhecida a data de nascimento de uma pessoa.

# Resposta 5.B

### LEFT JOIN: 
 Retorna todas as linhas da tabela à esquerda, mesmo se não houver nenhuma correspondência na tabela à direita.

   >  select colunas
   > from tabela_esquerda
   > left (outer) join tabela_direita
   > on tabela_esquerda.coluna = tabela_direita.coluna;

### RIGHT JOIN:
 Retorna todas as linhas da tabela à direita, mesmo se não houver nenhuma correspondência na tabela à esquerda.

   > select colunas
   > from tabela_esquerda
   > right (outer) join tabela_direita
   > on tabela_esquerda.coluna = tabela_direita.coluna;


