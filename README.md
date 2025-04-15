# 📦 Inventory Management Web Application
![image](https://github.com/user-attachments/assets/c515cef9-922d-41d1-9564-9ddb933d4508)
Hosted : https://yassine-inventory-management.netlify.app/

## 📝 Project Description

This project is a **web-based inventory management system** designed to help businesses efficiently manage their inventory. It allows users to:

- ➕ Add new inventory items  
- ✏️ Update existing items  
- ❌ Delete items  
- 📋 View a list of all available products  

The goal is to streamline inventory tracking and improve operational efficiency for companies.

---

## 🧰 Technologies Used

### Backend:
- **Java**
- **Spring Boot**
- **Spring Data JPA**
- **PostgreSQL**

### Frontend:
- **React.js**

---

## 🚀 Getting Started

### Prerequisites
Make sure you have the following installed:
- Java 17+
- Node.js + npm
- PostgreSQL
- Maven

---

## ⚙️ Setup Instructions

### Backend (Spring Boot) Another Repo
1. Clone the repository.
2. Set up your PostgreSQL database and update the connection details in `application.properties`:
   ```properties
   spring.datasource.url=jdbc:postgresql://localhost:5432/your_db_name
   spring.datasource.username=your_username
   spring.datasource.password=your_password
   ```
3. Run the application:
   ```bash
   ./mvnw spring-boot:run
   ```

### Frontend (React)
1. Navigate to the frontend directory:
   ```bash
   cd frontend
   ```
2. Install dependencies:
   ```bash
   npm install
   ```
3. Start the development server:
   ```bash
   npm start
   ```

---

## 📁 Project Structure

```
├── backend
│   └── src/main/java/... (Spring Boot App)
├── frontend
│   └── src/... (React App)
```

---

## 📬 API Endpoints

Here are some sample REST endpoints (customize according to your implementation):

| Method | Endpoint            | Description             |
|--------|---------------------|-------------------------|
| GET    | /api/items          | List all items          |
| POST   | /api/items          | Add a new item          |
| PUT    | /api/items/{id}     | Update an item          |
| DELETE | /api/items/{id}     | Delete an item          |

---

## 📌 Features

- CRUD operations on inventory items
- Backend-frontend separation
- Relational database integration
- RESTful API design

---

## ✅ Future Improvements

- Authentication and authorization
- Role-based access
- Inventory history & audit logs
- Responsive UI enhancements

---

## 🧑‍💻 Author

- Developed by Me

---
