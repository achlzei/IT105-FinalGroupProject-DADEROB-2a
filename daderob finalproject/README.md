# 📌 LikhaKahoy Woodcrafts

## ► Project Description
The project focuses on designing and developing a Woodcraft Business Database that will store, organize, and manage essential 
business data. This includes product details, customer information, orders, and sales records. The database aims to improve data 
organization, ensure accuracy, and make information easily accessible for future system development. It serves as the foundation 
for a potential business management system.

---

## ► Key Features
- Browse different wood craft products  
- Easy product management for sellers  
- Simple and user-friendly interface  
- Search and view product details  

---

## ► Database Overview
The database stores information about users, products, and orders. It includes product details like name, price, description, and images, as well as user data for managing accounts and transactions.

---

## ► ERD (Including Main Tables)

### Main Tables:

**Customers**
- customer_id (Primary Key)  
- name  
- email  
- phone  
- address  

**Categories**
- category_id (Primary Key)  
- category_name  

**Products**
- product_id (Primary Key)  
- name  
- description  
- price  
- stock  
- category_id (Foreign Key)  

**Orders**
- order_id (Primary Key)  
- customer_id (Foreign Key)  
- order_date  
- status  

**OrderDetails**
- order_detail_id (Primary Key)  
- order_id (Foreign Key)  
- product_id (Foreign Key)  
- quantity  
- price  

**Payments**
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

## ► Project Structure

```
LikhaKahoy Woodcrafts/
│
├── database/
│   └── woodcraft.sql
│
├── src/
│   ├── main file (main.cpp / index.php)
│   ├── functions/
│   └── modules/
│
├── assets/
│   ├── images/
│   └── styles/
│
└── README.md
```

---

## ► Team Members & Roles

- Project Manager – Nicole S. Benigay  
- Database Administrator (DBA) – Aira Chelzei N. Realubit  
- SQL Developer – Arleczar G. Cornal  
- QA/Tester – Samantha Louise V. Sola  
- Documentation Lead – Kerwin L. Tagle  
- Security Officer – Ashlyn Nicole Remot  

---

## ► Notes

- This system is developed for educational purposes  
- Ensure that all inputs are validated to avoid errors in transactions  
- The database must be properly connected before running the system  
- Future improvements may include user authentication, payment integration, and product reviews  