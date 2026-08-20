# Communique Database Module

A SQL script setup for initializing and populating the `Communique` student organization registry.

---

## 📌 Overview

This directory contains the database definition and initial data population script for the **Communique** table, designed to store member identifiers, full names, and organizational designations.

---

## 🛠️ Database Schema

### Entity: `Communique`

| Column | Data Type | Constraints | Description |
| :--- | :--- | :--- | :--- |
| `Student_ID` | `INT` | Non-Null | Unique numeric identifier for each member |
| `Name` | `VARCHAR(20)` | Non-Null | Full name of the member |
| `Designation` | `VARCHAR(40)` | Non-Null | Role or title held within the organization |

---

## 🚀 Getting Started

### Prerequisites

Ensure you have a Relational Database Management System (RDBMS) installed and configured:
* MySQL (v8.0+) / PostgreSQL / SQLite3 / SQL Server
* Any SQL CLI or GUI tool (e.g., MySQL Workbench, DBeaver, pgAdmin)

### Execution Script

Run the following SQL statements to initialize the table and insert the initial dataset:

```sql
-- Step 1: Schema Definition
CREATE TABLE Communique (
    Student_ID INT,
    Name VARCHAR(20),
    Designation VARCHAR(40)
);

-- Step 2: Initial Data Seed
INSERT INTO Communique (Student_ID, Name, Designation) 
VALUES
    (1, 'Surmayee Deshpande', 'Executive Member'),
    (2, 'Shivtej Ambilduke', 'Executive Member'),
    (3, 'Atharva Jawale', 'Executive Member');
