# Bank Loan Analysis – Power BI & MySQL

## Project Overview

This project is an end-to-end **Bank Loan Analytics** solution built using **MySQL** and **Power BI**. The objective is to analyze loan applications, funded amounts, repayments, and loan performance using structured SQL queries and interactive Power BI dashboards.

The dashboard provides insights into overall loan health, good vs bad loans, monthly trends, and borrower behavior across different dimensions such as purpose, term, employment length, grade, and home ownership.

---

## Problem Statement

Banks process a high volume of loan applications and repayments every month. It is crucial to monitor loan demand, funding efficiency, repayment performance, and loan quality (good vs bad loans). This project aims to analyze bank loan data to identify trends, performance metrics, and risk indicators that support data-driven decision-making.

---

## Dataset Description

The dataset contains historical bank loan records where each row represents a unique loan. Key attributes include:

* Loan details (loan amount, interest rate, term)
* Applicant information (employment length, income, home ownership)
* Loan performance (loan status, total payment)
* Time attributes (issue date, last payment date)

---

## Tools & Technologies

* **MySQL** – Data extraction, aggregation, and KPI calculations
* **SQL** – Writing optimized queries for business metrics
* **Power BI** – Data modeling, visualization, and dashboard creation

---

## Key KPIs

* Total Loan Applications
* Month-to-Date (MTD) Applications
* Previous Month-to-Date (PMTD) Applications
* Month-over-Month (MoM) Growth %
* Total Funded Amount
* Total Amount Received
* Good Loan vs Bad Loan Percentage
* Profit / Amount Received by Month

---

## SQL Analysis

The following MySQL queries were used to generate KPIs and reports:

### Loan Applications & Growth

* Total Applicants
* MTD and PMTD Applicants
* Month-over-Month Growth Percentage

### Funded & Received Amounts

* Total Funded Amount
* MTD & PMTD Funded Amount
* Total Amount Received
* MoM Growth for Received Amount

### Loan Quality Analysis

* Good Loan Percentage
* Bad Loan Percentage
* Good vs Bad Loan Applicants
* Good vs Bad Loan Amount Received

### Dimensional Analysis

* Monthly Loan Trends
* Loan Term Analysis (36 vs 60 months)
* Loan Purpose Analysis
* Employee Length Analysis
* Home Ownership Analysis
* Loan Status Summary

All SQL queries are documented in the repository for transparency and reproducibility.

---

## Power BI Dashboard Overview

The Power BI report consists of **three main pages**:

### 1. Summary Page

* High-level KPIs for Total Applicants, Total Funded, and Total Received
* MTD, PMTD, and MoM performance indicators
* Good Loan vs Bad Loan distribution

### 2. Overview Page

* Monthly trend of amount received
* Loan distribution by term (36 vs 60 months)
* Loan purpose analysis
* Home ownership analysis
* Employment length contribution
* Interactive slicers for filtering by grade, state, purpose, and loan quality

### 3. Details Page

* Transaction-level loan data table
* Drill-down capability for detailed analysis
* Filters for state, grade, loan status, and purpose

Dynamic **Field Parameters** are used to switch KPIs interactively within the dashboard.

---

## Key Insights

* Majority of loans fall under **Good Loan** category, indicating healthy portfolio performance
* Mortgage and Rent-based home ownership contribute the highest received amounts
* Loans with longer employment length show higher repayment contribution
* Clear monthly growth trend observed in both funded and received amounts

---

## Conclusion

This project demonstrates a complete data analytics workflow—from SQL-based data analysis in MySQL to interactive reporting in Power BI. It highlights how banking loan data can be transformed into actionable insights using structured queries and well-designed dashboards.

## Author
Shivam Foujdar  
Aspiring Data Analyst | SQL | Power BI | Python





---

## Author

**Shivam Chaudhary**
