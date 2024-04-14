create database pj;
use pj;
select * from financial_loan_dataset;

# Key Performance Indicators 

select count(id) as total_loan_applications from financial_loan_dataset;
-- 38576

select sum(loan_amount) as total_funded_ammount from financial_loan_dataset;
-- 435757075

select sum(total_payment) as total_ammount_received from financial_loan_dataset;
-- 473070933

select avg(int_rate)*100 as avg_interest_rate from financial_loan_dataset;
-- 12.05

select avg(dti)*100 as avg_dti from financial_loan_dataset;
-- 13.33

# Good Loan Vs Bad Loan KPI's

select(count(case when loan_status = 'Fully paid' or loan_status = 'Current' then id end)) as good_loan_application from financial_loan_dataset;
-- 33243

select(count(case when loan_status = 'Fully paid' or loan_status = 'Current' then id end)*100)/count(id) as good_loan_application_percentage from financial_loan_dataset;
-- 86.1753

select(sum(case when loan_status = 'Fully paid' or loan_status = 'Current' then loan_amount end)) as good_loan_Fund from financial_loan_dataset;
-- 3707224850

select(sum(case when loan_status = 'Fully paid' or loan_status = 'Current' then total_payment  end)) as good_loan_Received from financial_loan_dataset;
-- 435786170

select(count(case when loan_status = 'Charged Off' then id end)) as bad_loan_application from financial_loan_dataset;
-- 5333

select(count(case when loan_status = 'Charged Off' then id end)*100)/count(id) as bad_loan_application_percentage from financial_loan_dataset;
-- 13.8247

select(sum(case when loan_status = 'Charged Off' then loan_amount end)) as bad_loan_Fund from financial_loan_dataset;
-- 65532225

select(sum(case when loan_status = 'Charged Off' then total_payment end)) as bad_loan_Received from financial_loan_dataset;
-- 37284763

