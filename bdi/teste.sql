Qual a diferença disso:

select p.name, pv.name, c.name
from providers pv, products p, categories c
where c.id=p.id_categories and pv.id=p.id_providers and pv.name='Sansul SA' and c.name='Imported'; 

Pra isso???
select p.name, pv.name, c.name
from providers pv, products p, categories c
where p.id_categories=c.id and p.id_providers=pv.id and pv.name='Sansul SA' and c.name='Imported'; 
