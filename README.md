# 🏥 Hospital Management System

A full-featured Hospital Management System built with **Java (JSP/Servlet)** using **Eclipse IDE**, connected to a **MySQL** database via **JDBC**, and deployed on **Apache Tomcat 9.0.100**. This project provides modules for managing doctors, patients, appointments, and administrators — all via a clean, intuitive web interface.

---

## 🧰 Tech Stack

| Technology | Description |
|------------|-------------|
| **Java** | Backend logic using Servlets and JDBC |
| **JSP** | Frontend presentation layer |
| **MySQL** | Relational Database using MySQL Workbench |
| **Apache Tomcat 9.0.100** | Web server for deploying Java web apps |
| **Eclipse IDE** | Development Environment |

---

## 📁 Project Structure Overview

```plaintext
src/
├── main/
│   ├── java/
│   │   ├── controller/      # Servlets controlling app flow
│   │   ├── dao/             # Data Access Objects for DB interaction
│   │   ├── model/           # JavaBeans and data models
│   │   └── util/            # Utility classes
│   └── webapp/
│       ├── CSS/             # Stylesheets
│       ├── img/             # Images and assets
│       ├── WEB-INF/         # Web configuration (web.xml)
│       └── *.jsp            # JSP pages for different modules


## 🛠️ Setup Instructions
Clone the repository:

bash
Copy
Edit
git clone https://github.com/yourusername/hospital-management-system.git
Import into Eclipse:

File → Import → Existing Maven Project → Select the cloned folder

Configure Database:

Create a MySQL database using MySQL Workbench

Import the provided .sql schema (if available)

Update DB credentials in util/DBConnection.java

Deploy on Tomcat:

Add Apache Tomcat 9.0.100 to Eclipse

Right-click project → Run As → Run on Server
