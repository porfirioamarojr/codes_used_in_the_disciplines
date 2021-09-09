create sequence s1;

create table t1 (
    a int default (next value for s1), 
    b int,
    primary key (a)
);
 
insert into t1 (b) values (5), (7);
insert into t1 (b) values (8);
 
select * from t1;

-- saida "1" para (a) e "5" para (b)
-- saida "2" para (a) e "7" para (b)
-- saida "3" para (a) e "8" para (b)