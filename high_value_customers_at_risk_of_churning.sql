select c.customerID,
b.Contract,
b.MonthlyCharges,
b.TotalCharges,
s.InternetService
from customers c
join billing b on c.customerID = b.customerID
join services s on b.serviceID = S.serviceID
where c.churn ='Yes'
and b.monthlycharges > 70
order by b.Monthlycharges desc
limit 10;