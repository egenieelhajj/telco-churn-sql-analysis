select b.PaymentMethod,
count(*) as churned_customers,
round(count(*) * 100.0 / sum(count(*)) over(), 2) as perecentage
from billing b
join Customers C on b.CustomerID = c.CustomerID
where c.Churn = 'Yes'
group by b.PaymentMethod
order by Churned_customers desc;