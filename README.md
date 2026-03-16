# 🛒 OTS: Multi-Vertical E-commerce Performance Analysis

![Dashboard Preview](Dashboard/dashboard_preview.png.PNG)

## 🛠️ Tech Stack
[![SQL Server](https://img.shields.io/badge/SQL_Server-2019+-red?style=flat&logo=microsoft-sql-server&logoColor=white)](./SQL_Scripts/OTS_ORDER.sql)
[![Power BI](https://img.shields.io/badge/Power_BI-Desktop-yellow?style=flat&logo=power-bi&logoColor=black)](./Dashboard/OTS_sale.pbix)
[![Excel](https://img.shields.io/badge/Excel-Dataset-green?style=flat&logo=microsoft-excel&logoColor=white)](./Dataset/Sales%20Dataset(app).csv)
## 📌 Project Overview
This project simulates a comprehensive Business Intelligence workflow for **OTS*, a Nigerian "Super-App." The analysis focuses on operational efficiency, revenue realization, and customer behavior across Food, Rides, Logistics, and Grocery sectors.

> **Note:** This is a **technical simulation** using synthetic data to mirror real-world workflows performed during my internship, ensuring compliance with non-disclosure agreements (NDA).

---

## 🛠️ Tools & Technologies
* **SQL Server:** Data cleaning, transformation, and View creation.
* **Power BI:** Interactive dashboarding and DAX modeling.
* **Excel:** Initial data structuring.

---

## 🧼 Data Cleaning & Transformation (SQL)
To ensure the dashboard reflects "Realized" business value, the following SQL steps were taken:
* **Null Handling:** Processed `NULL` delivery times for cancelled orders to avoid skewed averages.
* **Categorical Standardization:** Cleaned inconsistent naming conventions in `Service_Type` and `Payment_Method`.
* **Business Logic:** Created a `Clean_Data` View to isolate **Realized Revenue** (Completed Orders) from Gross Sales.

---

## 📊 Key Performance Indicators (KPIs)
I developed several custom DAX measures to drive business insights:
* **Realized Revenue:** Sum of `Amount_NGN` where status is 'Completed'.
* **Cancellation Rate:** (Cancelled Orders / Total Orders) - Used as an operational health metric.
* **Price Category:** A calculated column segmenting orders into **Budget**, **Mid-Range**, and **Premium**.

---

## 📈 Insights & Findings
* **The Revenue Gap:** Identified a 10% discrepancy between Gross and Realized revenue due to logistics cancellations.
* **Service Bottlenecks:** Grocery delivery speed averaged **58 minutes**, significantly higher than the 30-minute target.
* **Payment Trends:** OTS Wallet adoption is high, but Cash remains dominant in the 'Ride' sector, suggesting a need for digital incentives.

---

## 📂 Project Structure
* `Dataset/`: Contains the raw CSV data.
* `SQL_Scripts/`: Contains the `.sql` file with cleaning queries and Views.
* `Dashboard/`: The `.pbix` file and visual previews.

---

## 📬 Contact
**[Your Name]** [LinkedIn Profile Link] | [Portfolio Link]
