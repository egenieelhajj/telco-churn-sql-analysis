create database customer_analysis;
use customer_analysis;
create table Customers (CustomerID Varchar(20) Primary Key,
Gender Text,
SeniorCitizen INT,
Partner text,
Dependents text,
Tenure text,
Churn text);

Create Table Services (
ServiceID INT Auto_Increment Primary Key,
PhoneService Text,
MultipleLines Text,
InternetService Text,
OnlineSecutiry Text,
OnlineBackup Text,
DeviceProtection Text,
TechSupport Text,
StreamingTV Text,
StreamingMovies Text);

Create table Billing (
CustomerID varchar(24),
ServiceID INT Auto_Increment,
Primary Key (customerID, ServiceID),
Foreign Key (CustomerID) References Customers(CustomerID),
Foreign Key (ServiceID) References Services(ServiceID),
Contract Text,
PaperlessBilling Text,
PaymentMethod Text,
MonthlyCharges Double,
TotalCharges Double
);

