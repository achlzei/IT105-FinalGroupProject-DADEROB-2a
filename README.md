# 📌 LikhaKahoy Woodcrafts

---

## ► Project Overview

The LikhaKahoy Woodcrafts project focuses on designing and developing a LikhaKahoy Woodcrafts Database System that stores, organizes, and manages essential business data. The system includes pro details, customer information, orders, payments, and sales records.

The database aims to improve data organization, ensure accuracy, and make information easily accessible for future system development. It serves as the foundation for a potential business management system for woodcraft businesses.

---

## ► Group Members and Roles

- Project Manager – Nicole S. Benigay  
- Database Administrator (DBA) – Aira Chelzei N. Realubit  
- SQL Developer – Arleczar G. Cornal  
- QA / Tester – Samantha Louise V. Sola  
- Documentation Lead – Kerwin L. Tagle  
- Security Officer – Ashlyn Nicole Remot  

---

## ► Key Features and Functionalities

- Browse different woodcraft products  
- Easy product management for sellers   
- Customer information management  
- Order and payment tracking  
- Search and view product details  
- Simple and user-friendly interface  
- Database-driven transaction management  
- Organized relational database design  

---

## ► Database Overview

The database stores information about customers, products, categories, orders, order details, and payments. It organizes business records efficiently and supports accurate transaction management.

### ► Main Tables

#### Customers
- customer_id (Primary Key)  
- name  
- email  
- phone  
- address  

#### Categories
- category_id (Primary Key)  
- category_name  

#### Products
- product_id (Primary Key)  
- name  
- description  
- price  
- stock  
- category_id (Foreign Key)  

#### Orders
- order_id (Primary Key)  
- customer_id (Foreign Key)  
- order_date  
- status  

#### OrderDetails
- order_detail_id (Primary Key)  
- order_id (Foreign Key)  
- product_id (Foreign Key)  
- quantity  
- price  

#### Payments
- payment_id (Primary Key)  
- order_id (Foreign Key)  
- payment_date  
- amount  
- payment_method  

### Relationships:
- One customer can have many orders  
- One order can have multiple order details  
- Each product belongs to one category  
- One order has one payment  
- OrderDetails connects orders and products  

---

## ► How to Restore and Run the System (MySQL Workbench)

### Step 1: Open MySQL Workbench
Connect to your local MySQL server.

### Step 2: Create Database
```sql
CREATE DATABASE woodcraft_shop;
USE woodcraft_shop;
```

### Step 3: Import Backup File
- Go to **Server → Data Import**  
- Select **Import from Self-Contained File**  
- Choose `/database/backup.sql`  
- Set target schema: `woodcraft_shop`  
- Click **Start Import**

### Step 4: Verify Database
Check if all tables are successfully imported in the schema.

---

## ► Screenshots

All screenshots are stored in:
```
/screenshots/images
```

## ► Notes
- This project is database-only (no application/system UI)  
- Ensure MySQL server is running before importing  
- Backup file must be complete and correctly imported  
- Focus is on database design, SQL, and data management  

---

## 📂 Project Structure

```
IT105-FinalGroupProject-DADEROB-2a/
│
├── backup/
│   ├── backup.sql
│   └── proof_restoration_rowcount.png
│
├── bi_queries/
│   ├── bi_queries.sql
│   ├── InsightDocumentationReport.pdf
│   ├── star_schema_diagram.png
│   └── star_schema.sql
│
├── cloud_deployment/
│   ├── Cloud Deployment_Details.pdf
│   └── Reflection_Emerging_Tech.pdf
│
├── data/
│   ├── LikhaKahoy.csv/
│   ├── screenshot
│   ├── dataset_import.zip
│   └── readme.text
│
├── documentation/
│   ├── NoSQL_Reflection.pdf
│   └── Daderob_FinalProject_Documentation.pdf
│
├── erd/
│   └── erd.pdf
│
├── optimization/
│   ├── before_and_after/
│   └── optimization_report.pdf
│
├── schema/
│   └── schema.sql
│
├── screenshots/
│   ├── Phase1/
│   ├── Phase2/
│   ├── complete_repo.png
│   └── structure.png
└── README.md
```

---
