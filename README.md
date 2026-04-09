# telco-churn-sql-analysis
Telco Customer Churn Analysis
SQL | Business Analysis | Customer Retention

Project Overview
This project analyzes customer churn behavior for a telecommunications company using SQL. The goal was to identify which customer segments are most likely to cancel their service, and provide data-driven recommendations to improve customer retention.

Dataset: 7,043 telecom customers with demographic, service, and billing information.

Business Problem

Customer churn is one of the most costly problems in the telecom industry. Acquiring a new customer costs 5–7x more than retaining an existing one. This analysis answers the key business question:

"Who is leaving, why are they leaving, and what can we do about it?"


Database Design

The data was normalized into a 3-table relational schema to reflect real-world business structure:

Customers ──< Billing >── Services

Table      |    Description

Customers       
               
                Demographics:
                
                gender, age group,
              
                partner, dependents,
                
                churn status.

Services        
                
                Subscriptions: phone,

                internet, streaming, 

                security, backup.

Billing        
                
                Contract type, payment 
 
                method, monthly and 

                total charges.

Key Findings:

1. Contract type is the strongest predictor of churn.

Contract   | Total Customers | Churned  | Churn Rate

Month-to-    

month        
              
              3,875             1,655       42.71%

One year     
              
              1,472             166         11.28%

Two year     
              
              1,685             48          2.85%

Customers on month-to-month contracts churn at 15x the rate of two-year contract customers. This is the single biggest retention lever available to the business.

2. Senior citizens churn at nearly double the rate.

Customer   |  Total   |    Churned  |   Churn 

Type                                    Rate

Senior        
              
              1,142        476          41.68%

Non-Senior    
              
              5,901        1,393        23.61%


Senior customers represent a high-risk, high-value segment that may benefit from dedicated retention programs or simplified service packages.


3. Electronic check users drive the majority of churned revenue.


Payment     |       Churned   |       % of All 

Method              Customers           Churns

Electronic  

check        
                   
                     1,071             57.30%

Mailed     

check
                     
                     308               16.48%

Bank 

transfer    

(automatic)
                    
                     258               13.80%

Credit 

card        

(automatic)
                    
                     232               12.41%

Customers paying via electronic check churn at a significantly higher rate. Automatic payment methods (bank transfer, credit card) show much lower churn, suggesting friction in the payment process may be contributing to cancellations.

4. Fiber optic customers pay the most but don't get better retention

Internet          |  Avg Monthly  |        Total 

Service              Charges               Customers

Fiber optic    
                     
                     $66.63                3,089 

DSL           
                    
                     $63.75                2,418

No internet    
                   
                    $62.74                 1,525

Despite paying the highest monthly charges, fiber optic customers churn at high rates, suggesting a potential gap between price expectations and perceived service value.

5. High-value customers at risk

10 customers were identified paying over $70/month who have already churned, representing significant lost revenue. Most were on month-to-month contracts or used fiber optic service.

Business Recommendations

Based on the analysis, three immediate actions could reduce churn significantly:

1. Incentivize long-term contracts — Offer discounts or added benefits to move month-to-month customers to annual contracts. Even converting 20% of month-to-month customers to one-year contracts could reduce overall churn by ~6 percentage points.

2. Target senior citizens with a retention program — Create a dedicated outreach program for customers 65+, including simplified billing, priority support, or loyalty discounts.

3. Migrate electronic check users to automatic payments — Offer a small monthly discount for switching to automatic bank transfer or credit card. This reduces payment friction and is correlated with significantly lower churn.


SQL Queries

File

- Telco_Customer_Churn.sql
- Churn_rate_by_contract.sql
- seniorCitizen_churn_vs_non-senior.sql
- top_paymentMethod_among_churned_customers.sql
- averga_charges_by_internet_service.sql
- high_value_customers_at_risk_of_churning.sql

Tools Used

MySQL — Database design, table creation, and querying



About This Project
This project was completed as part of a data analysis portfolio to demonstrate skills in relational database design, SQL querying, and translating data findings into actionable business insights.
Designed and executed by Egenie El Hajj Tovar — Data Analyst
