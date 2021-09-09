use viajado;

CREATE SEQUENCE s START WITH 100 INCREMENT BY 10;
CREATE SEQUENCE s2 START WITH -100 INCREMENT BY -10;
CREATE SEQUENCE s3 START WITH -100 INCREMENT BY 10 MINVALUE=-100 MAXVALUE=1000;

SELECT NEXTVAL(s);
SELECT NEXTVAL(s2);
SELECT NEXTVAL(s3);

-- na 1° iteraçao os valores são (s) para 100,  (s2) para -100 e (s3) para -100
-- na 2° iteraçao os valores são (s) para 110,  (s2) para -110 e (s3) para -90
-- na 2° iteraçao os valores são (s) para 120,  (s2) para -120 e (s3) para -80