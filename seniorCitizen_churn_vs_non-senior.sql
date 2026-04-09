Select case when c.seniorcitizen = 1 then 'Senior' else 'Non-Senior' end as customer_type,
count(*) as total_customers,
sum(case when c.churn = 'Yes' then 1 else 0 end) as churned,
round(sum(case when c.churn ='Yes' then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate
from customers c
group by c.SeniorCitizen
order by churn_rate desc;