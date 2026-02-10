use bank_finance_loan;
#TOTAL APPLICANTS
select count(id) from loan;
#MTD LOAN APPLICANTS
select count(id) as MTD from loan where month(issue_date) = 12;
#PMTD LOAN APPLICANTS
select count(id) as PMTD from loan where month(issue_date) = 11;
#MOM GROWTH PERCENTAGE
select mtd.MTD,pmtd.PMTD ,round(((mtd.MTD-pmtd.PMTD)/pmtd.PMTD)*100,2) as Groth_Percentage 
from 
((select count(id) as MTD from loan where month(issue_date) = 12)mtd,
(select count(id) as PMTD from loan where month(issue_date) = 11)pmtd);




#TOTAL FUNDED
select concat(round(sum(loan_amount)/1000000,1),'M') as Total_Funded from loan;
#TOTAL MTD FUNDED
select concat(round(sum(loan_amount)/1000000,1),'M') as MTD_funded from loan where month(issue_date) = 12;
#TOTAL PMTD FUNDED
SELECT concat(round(sum(loan_amount)/1000000,1),'M') as MTD_funded from loan where month(issue_date) = 11; 
#FUNDED GROWTH PERCENTAGE
select mtd.MTD_funded,pmtd.PMTD_funded ,concat(round(((mtd.MTD_funded-PMTD_funded)/PMTD_funded)*100,2),'%') as MOM_Funded_Percentage 
from 
((select concat(round(sum(loan_amount)/1000000,1),'M') as MTD_funded from loan where month(issue_date) = 12)mtd,
(select concat(round(sum(loan_amount)/1000000,1),'M') as PMTD_funded from loan where month(issue_date) = 11)pmtd);

#TOTAL RECEIVED
select concat(round(sum(total_payment)/1000000,1),'M') as Total_Received from loan;

#MTD RECEIVED
select concat(round(sum(total_payment)/1000000,1),'M') as MTD_Received from loan where month(issue_date)= 12;
#PMTD RECEIVED
select concat(round(sum(total_payment)/1000000,1),'M') as PMTD_Received from loan where month(issue_date)= 11;
#MOM TOTAL AMOUNT RECEIVED
select mtd.MTD_Received ,pmtd.PMTD_Received ,concat(round(((mtd.MTD_Received-pmtd.PMTD_Received)/pmtd.PMTD_Received)*100,2),'%') as MOM_Percentage_received from
((select concat(round(sum(total_payment)/1000000,1),'M') as MTD_Received from loan where month(issue_date)= 12)mtd,
(select concat(round(sum(total_payment)/1000000,1),'M') as PMTD_Received from loan where month(issue_date)= 11)pmtd); 

#GOOD LOAN AMOUNT RECEIVED 

select concat(round(sum(total_payment)/1000000,2),'M') as Good_Amount_received from loan where loan_status = 'Fully Paid' or loan_status = 'Current';

#BAD LOAN AMOUNT RECEIVED
select concat(round(sum(total_payment)/1000000,2),'M') as Good_Amount_received from loan where loan_status = 'charged off';

#GOOD LOAN PERCENTAGE
SELECT  round((count(case when loan_status = 'Fully Paid' or loan_status = 'Current' then id end)*100.0)/count(id),2) As Good_loan_percentage from loan;
#BAD LOAN PERCENTAGE 

SELECT round((count(case when loan_status = 'charged off' then id end)*100.0)/count(id),2) As Bad_loan_percentage from loan;

#BAD LOAN APPLICANTS 
SELECT COUNT(id) from loan where loan_status = "charged off";
#GOOD LOAN APPLICANTS 
SELECT COUNT(id) from loan where loan_status = "Current " or loan_status= "fully paid";

#LOAN STATUS
select count(id) as LoanCount,
loan_status,
sum(loan_amount) as FundedAmount,
sum(total_payment) as PaymentReceived,
round(avg(int_rate*100),2) as interest_rate,
round(avg(dti*100),2) as DTI
from loan group by loan_status;

#MONTH REPORT
select month(issue_date) as MonthNumber,
monthname(issue_date) as Month_Name,
Count(id) as Total_loan_Applicants,
sum(loan_amount) as Funded_Amount ,
sum(total_payment) as Amount_recevied from loan
group by 1,2 order by 1;

#TERM REPORT
select loan_term as Term,count(id) as Total_Loan_Applicants,
sum(loan_amount) as Funded_Amount ,
sum(total_payment) as Amount_recevied from loan group by 1 order by 1;

#PURPOSE REPORT 
select purpose,count(id) as Total_Loan_Applicants,
sum(loan_amount) as Funded_Amount ,
sum(total_payment) as Amount_recevied from loan group by 1 order by 1;

#EMPLOYYE LENGTH 
select emp_length,count(id) as Total_Loan_Applicants,
sum(loan_amount) as Funded_Amount ,
sum(total_payment) as Amount_recevied from loan group by 1 order by 1 desc;

#HOME OWNERSHIP
select home_ownership as HomeOwnership,count(id) as Total_Loan_Applicants,
sum(loan_amount) as Funded_Amount ,
sum(total_payment) as Amount_recevied from loan group by 1 ;







  

