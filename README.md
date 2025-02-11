# Conversation History

## 🌐 DEMO APP
**Live URL:** [Conversation History](https://conversation-history-0746b132b7c4.herokuapp.com/)
- **Test Credentials:**
  - **Email:** test@mailer.com
  - **Password:** YLcjFhUH6wKEv3Y

---

## 📌 Overview
This is a simple **Project Conversation History** application built with **Ruby on Rails**. It enables users to:
- ✅ Create projects
- ✅ Change project status
- ✅ Leave comments on projects
- ✅ Track project activity and discussions

---

## 🛠 Tech Stack
- **Backend:** Ruby on Rails
- **Frontend:** ERB (Server-rendered views)
- **Database:** PostgreSQL

---

## 🚀 Features
### **📂 Project Management**
- Create projects
- Update project status dynamically
- View project details

### **💬 Comment System**
- Add comments to projects
- View all comments associated with a project

---

## ❓ Questions & Answers
### **1️⃣ What are the project statuses and when can they be changed?**
- **Available Statuses:**
  - 🟡 `ToDo`
  - 🔵 `In Progress`
  - 🟢 `Done`
- **Rules:**
  - Users can move forward (`ToDo → In Progress → Done`), but cannot revert back.

### **2️⃣ Is this similar to a Jira Task?**
- This implementation follows a simplified task management approach, similar to Jira's workflow but with fewer features.

---

## 📋 TODO (Future Enhancements)
### **🔧 Planned Improvements**
- ✅ Add **User** table to store project creators and commenters.
- ✅ Add **Project** table with a foreign key to `users`.
- ✅ Add **Comment** table with foreign keys to `users` and `projects`.
- ✅ Develop **APIs**:
  - ✅ Create a user
  - ✅ Create and update a project
  - ✅ Create and list comments based on project ID
- ✅ Build **UI**:
  - ✅ Project list
  - ✅ Project details
  - ✅ Edit project status
  - ✅ Add & display comments

---

## 🛠 Installation & Setup
### **1️⃣ Clone the Repository**
```bash
 git clone https://github.com/your-username/conversation-history.git
 cd conversation-history
```

### **2️⃣ Install Dependencies**
```bash
 bundle install
```

### **3️⃣ Setup Database**
```bash
 rails db:create db:migrate db:seed
```

### **4️⃣ Start the Server**
```bash
 rails server
```

---

## 📡 API Endpoints
### **👤 User API**
| Method | Endpoint | Description |
|--------|-------------|-------------|
| **POST** | `/users`    | Create a new user |

### **📂 Project API**
| Method | Endpoint | Description |
|--------|-------------|-------------|
| **POST** | `/projects` | Create a new project |
| **PATCH** | `/projects/:id` | Update project status |
