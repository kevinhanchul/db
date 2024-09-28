select * 
from t_user_info
where 1=1;

select sum(bet_amt)
from t_sell;

select * 
FROM t_self_limit;

select a.user_name, sum(b.bet_amt)
FROM 
    t_self_limit a, t_sell b
where 1=1
    and a.user_name = ${user_name}
    and a.user_name = b.user_name
group by b.user_name
having sum(b.bet_amt) > sum(a.day_limit_amt);


INSERT INTO t_sell (
    user_name,
    race_no,
    win_type,
    runner_no,
    bet_amt,
    win_rate,
    ret_amt
  )
VALUES (
    'ksatterley0',
    '111',
    '단승',
    '12',
    10000,
    1.5,
    100*1.5
  );

  insert into t_self_check values ('ksatterley0', '나쁨', '100', '20240926');

  insert into t_self_limit values ('ksatterley0', '20240901', '20409030', 1000, 10000, 100000);


CREATE TABLE t_health(
    user_name varchar(50), /*고객명*/
    limit_st_dy varchar(50), /*시작일(베팅제한기간)*/
    limit_ed_dy varchar(50), /*종료일(베팅제한기간)*/
    input_dy varchar(50) /*입력일*/
);


  insert into t_health values ('ksatterley0', '20240901', '20409030', '20230820');

  select * from t_sell;