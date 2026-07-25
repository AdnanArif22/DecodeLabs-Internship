# DecodeLabs Internship — Data Analytics

Repository documenting the projects completed during a one-month virtual **Data Analytics Internship** at **DecodeLabs**. It contains four end-to-end mini-projects built around a single e-commerce dataset, covering the core data analytics workflow — from raw data cleaning to SQL-based analysis and dashboard visualization.

![Status](https://img.shields.io/badge/status-completed-brightgreen)
![Domain](https://img.shields.io/badge/domain-Data%20Analytics-blue)
![Dataset](https://img.shields.io/badge/dataset-E--Commerce%20Sales-orange)

---

## 📌 Overview

| | |
|---|---|
| **Program** | DecodeLabs Virtual Internship |
| **Track** | Data Analytics |
| **Duration** | 1 Month |
| **Intern** | Muhammad Adnan Arif ([@AdnanArif22](https://github.com/AdnanArif22)) |
| **Dataset theme** | E-commerce order data (~1,200 orders) |
| **Deliverables** | 4 projects, each with a working file + written report |

The internship followed a standard analytics pipeline — clean the raw data first, explore and understand it, query it for business answers, and finally present findings visually.

---

## 🗂️ Repository Structure

```
DecodeLabs-Internship/
│
├── Data Cleaning & Preparation/
│   ├── Cleaned Dataset.xlsx          # Final cleaned e-commerce dataset
│   ├── Project Report1.pdf           # Write-up of the cleaning process
│   └── Project1 Requirements.pdf     # Task brief for Project 1
│
├── Exploratory Data Analytics (EDA)/
│   ├── Project_2 file.xlsx           # EDA workbook (pivots, stats, charts)
│   └── EDA_Report_File.pdf           # Formal EDA report
│
├── SQL Analysis/
│   ├── Dataset.csv                   # Source dataset used for SQL queries
│   ├── SQL_Analysis.sql              # All SQL scripts and queries
│   └── Project Report.pdf            # Write-up of the SQL analysis
│
├── Data Visualization/
│   ├── e-commerce dashboard.pbix     # Power BI interactive dashboard
│   └── Screenshot 2026-07-24 112238.png  # Dashboard preview image
│
└── README.md
```

---

## 🧩 Project Breakdown

### 1️⃣ Data Cleaning & Preparation
**Folder:** `Data Cleaning & Preparation/`

Focused on turning a raw e-commerce dataset into an analysis-ready file. Typical steps documented in the report include:
- Handling missing / blank values (e.g., empty coupon codes)
- Correcting data types (prices, dates)
- Standardizing categorical fields
- Producing a final, clean dataset for downstream analysis

**Files:** `Cleaned Dataset.xlsx` · `Project Report1.pdf` · `Project1 Requirements.pdf`

---

### 2️⃣ Exploratory Data Analytics (EDA)
**Folder:** `Exploratory Data Analytics (EDA)/`

Deep-dive exploration of the ~1,200-order e-commerce dataset to surface patterns before formal querying or visualization. Includes:
- Descriptive statistics (mean, min/max, distributions)
- Pivot tables for category/product/payment-method breakdowns
- Trend and outlier identification

**Files:** `Project_2 file.xlsx` · `EDA_Report_File.pdf`

---

### 3️⃣ SQL Analysis
**Folder:** `SQL Analysis/`

Business-question-driven SQL analysis performed on the dataset (loaded into a MySQL database `ecommerce`, table `ecom_data`). Query categories covered in `SQL_Analysis.sql`:

| Category | Example Queries |
|---|---|
| **Data Cleaning (SQL-side)** | Replacing blank `CouponCode` values, casting `TotalPrice` to `DECIMAL(10,2)` |
| **Date Engineering** | Extracting `Order_Year` and `Order_Month` from the order date |
| **Filtering** | Cancelled orders, online payments, Instagram-referred orders |
| **Sorting** | Products ranked by highest / lowest total price |
| **Aggregation** | Total orders, total revenue, average order value, average quantity |
| **Grouping & Having** | Revenue by payment method, revenue by referral source, products with sales > 2000 |
| **Ranking** | Top 3 products by revenue, top 3 products by order count |

**Files:** `Dataset.csv` · `SQL_Analysis.sql` · `Project Report.pdf`

---

### 4️⃣ Data Visualization
**Folder:** `Data Visualization/`

An interactive **Power BI** dashboard built on the e-commerce dataset, translating the SQL/EDA findings into a visual, business-friendly report (KPIs, sales trends, product/category performance, payment & referral breakdowns).

**Files:** `e-commerce dashboard.pbix` · dashboard preview screenshot

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Data cleaning, pivot tables, exploratory analysis |
| **MySQL** | Database creation and SQL-based querying |
| **Power BI** | Interactive dashboard and data visualization |
| **PDF Reports** | Documentation of methodology and findings per project |

---

## 🔑 Key Skills Demonstrated

- Data cleaning & preprocessing
- Exploratory Data Analysis (EDA)
- SQL querying (filtering, sorting, aggregation, grouping, ranking)
- Dashboard design & business intelligence reporting
- Technical/analytical report writing

---

## ▶️ How to Explore This Repository

1. Start with **Data Cleaning & Preparation** to see the raw-to-clean transformation.
2. Review **Exploratory Data Analytics (EDA)** for initial insights and statistics.
3. Open **SQL Analysis/SQL_Analysis.sql** in MySQL Workbench (or similar) to run the business queries yourself.
4. Open **Data Visualization/e-commerce dashboard.pbix** in Power BI Desktop to interact with the dashboard, or view the included screenshot for a quick preview.

---

## 👤 Author

**Muhammad Adnan Arif**
BS Computer Science, University of Layyah — Data Analytics enthusiast

- GitHub: [@AdnanArif22](https://github.com/AdnanArif22)
- LinkedIn: [Muhammad Adnan Arif](https://www.linkedin.com/in/muhammad-adnan-arif-b2b075337)

---

## 📄 License

This repository contains internship coursework and is intended for portfolio and educational purposes.
