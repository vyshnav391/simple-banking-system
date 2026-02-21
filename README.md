# 🏦 Simple Banking System

A simple banking system built using **Java** and **MySQL**, demonstrating account creation, deposits, withdrawals, approvals, and full transaction management.  
This project includes database schema design, views, stored procedures, sample data, and CRUD operations.

---

## 🚀 Features

### 👤 User & Account Management
- Create admin and customer users  
- Create different account types: **Savings, Current, Fixed Deposit**  
- Account status tracking: **Active, Blocked, Pending**

### 💰 Banking Operations
- Deposit  
- Withdraw  
- Transfer (in/out)  
- Balance updates with transaction logs  
- Admin approval system for accounts  
- Audit log tracking for all system actions  

### 📊 Reporting (Views)
- Customer Account Summary  
- Recent Transactions  
- Pending Accounts  

### ⚙️ Database Features Implemented
- **Foreign keys**, **cascading deletes**  
- **Stored Procedures** (deposit, withdrawal)  
- **Views**  
- **Sample test data**  
- **Audit logs**  

---

## 🛠 Tech Stack

### **Backend**
- Java  
- JDBC  

### **Database**
- MySQL  

### **Tools**
- MySQL Workbench  
- IntelliJ / VS Code  

---

## 🗄️ Database Schema Overview

### **Tables**
- `users` – stores admin & customer details  
- `accounts` – stores bank accounts  
- `transactions` – full transaction history  
- `account_approval` – admin actions  
- `audit_log` – system activity logs  

### **Stored Procedures**
- `process_deposit()`  
- `process_withdrawal()`  

---



