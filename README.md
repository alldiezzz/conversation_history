# Conversation History

## DEMO URL
https://conversation-history-0746b132b7c4.herokuapp.com/

## Overview
This is a simple **Project Conversation History** built with **Ruby on Rails**. It allows users to:
- Create projects
- Change project status
- Leave comments on a project
- Track project conversations

## Tech Stack
- **Backend:** Ruby on Rails
- **Frontend:** ERB (Server-rendered views)
- **Database:** PostgreSQL

## Features
- **Project Management:**
  - Create projects
  - Update project status dynamically
  - View project details
- **Comment System:**
  - Add comments to projects
  - View all comments associated with a project

---

## Questions & Answers
### **1. What are the project statuses and when can they be changed?**
- **Statuses:**
  - `ToDo`
  - `In Progress`
  - `Done`

### **2. Is this similar to a Jira Task?**
- For me, it seems like I need to create a Jira-style task management function.

---

## TODO
### **Planned Enhancements**
- [*] Add **User** table to store who creates a project and comments.
- [*] Add **Project** table with a foreign key to `users`.
- [*] Add **Comment** table with foreign keys to `users` and `projects`.
- [*] Develop **APIs**:
  - [*] Create a user
  - [*] Create and update a project
  - [*] Create and list comments by project ID
- [*] Build **UI**:
  - [*] Project list
  - [*] Project details
  - [*] Edit project status
  - [*] Add & display comments

---

## Installation & Setup
### **1. Clone the Repository**
```bash
 git clone https://github.com/your-username/conversation-history.git
 cd conversation-history
```

### **2. Install Dependencies**
```bash
 bundle install
```

### **3. Setup Database**
```bash
 rails db:create db:migrate db:seed
```

### **4. Start the Server**
```bash
 rails server
```

---

## API Endpoints
### **User API**
| Method | Endpoint | Description |
|--------|-------------|-------------|
| POST   | `/users`    | Create a new user |

### **Project API**
| Method | Endpoint | Description |
|--------|-------------|-------------|
| POST   | `/projects` | Create a new project |
| PATCH  | `/projects/:id` | Update project status |

---
