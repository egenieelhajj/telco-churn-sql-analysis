select b.contract, count(*) as total_customers,
sum(case when churn ='Yes' then 1 else 0 end) as churned,
round(sum(case when churn = 'Yes' then 1 else 0 end) * 100.0 / count(*), 2) as churn_rate
from billing b
join customers c on b.customerID = c.customerID
group by contract
order by churn_rate desc;