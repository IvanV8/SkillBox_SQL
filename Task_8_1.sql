-- ������� 8.1
select to_char(sum(salary),'C999999')
department_id
from employees
group by department_id;

--������� 8.2
select trunc(hire_date,'yy') from
employees;

--������� 8.3
select to_char(trunc(hire_date,'yy'),'yy') from
employees;

--������� 8.4
select to_number(to_char(trunc(hire_date,'yy'),'yy')) from
employees;

--������ 8.5
select min(yr), max(yr), avg(yr) from (select to_number(to_char(trunc(hire_date,'yyyy'),'yyyy')) as yr from
employees);

--������� 8.6
create table  hurricane 
(
    name varchar(64) not null,
    report_year timestamp,
    victims number
);

--������� 8.7
truncate table hurricane;

--������� 8.8
drop table hurricane;
    