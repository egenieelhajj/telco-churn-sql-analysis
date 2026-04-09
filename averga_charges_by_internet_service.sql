select s.InternetService,
round(avg(b.MonthlyCharges), 2) as avg_monthly_charges,
count(*) as total_customers
from services s
join billing b on s.serviceID = b.serviceID
group by s.InternetService
order by avg_monthly_charges desc;