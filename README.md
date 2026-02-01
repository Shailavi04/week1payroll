# Week 1 Fullstack Setup – Payroll Project (Main Branch)

A Fullstack project starter setup created as part of **Week 1 Internship Tasks**.  
This repository contains a clean and scalable codebase structure for **Frontend + Backend + Database**, along with a proper **Git workflow**.

> ⚠️ **Note:** All working code and full project setup is available in the **`dev` branch**.  
> The **`main` branch** is kept minimal/clean as per team workflow.

---

## 📌 Project Overview

This project is a **Payroll Management System (Starter Setup)**.

The main goal for Week 1 was to:
- Build a **professional folder structure**
- Select and initialize a **Fullstack tech stack**
- Set up **database schema basics**
- Maintain clean **GitHub repository practices**

---

## 🧱 Tech Stack (Week 1)

| Layer | Technology |
|------|------------|
| Frontend | React |
| Backend | Node.js + Express |
| Database | PostgreSQL (schema setup) |
| Version Control | Git + GitHub |

---

## 🌿 Branch Information

- `main` → Clean/production-ready branch (minimal content)
- `dev` → Development branch (**contains complete project code & structure**)

✅ To view the full project, switch to the **dev branch** on GitHub.

---

## 📁 Complete Folder Structure (Available in `dev` Branch)

The project follows a unified structure with clear separation of concerns:

```txt
week1payroll/
├─ frontend/
│  ├─ assets/
│  ├─ components/
│  ├─ pages/
│  ├─ public/
│  ├─ src/
│  ├─ styles/
│  ├─ .gitkeep
│  ├─ package.json
│  ├─ package-lock.json
│  └─ README.md
│
├─ backend/
│  ├─ controllers/
│  │  └─ .gitkeep
│  ├─ models/
│  │  └─ .gitkeep
│  ├─ routes/
│  │  └─ .gitkeep
│  ├─ services/
│  │  └─ .gitkeep
│  ├─ utils/
│  │  └─ .gitkeep
│  ├─ index.js
│  ├─ package.json
│  └─ package-lock.json
│
├─ database/
│  ├─ schema.sql
│  └─ .gitkeep
│
├─ .gitignore
└─ README.md




# Payroll System – Backend Planning (Week 2)

This section documents the Week 2 planning phase of the Payroll System.
Week 2 focuses on backend and full-stack system design, not implementation.
All content below represents architectural and logical planning only.

---

## 1. Database Schema Design (Planning)

The payroll system requires a structured and normalized relational database
to support employee management, attendance tracking, and salary processing.

### Identified Entities
- Employees
- Departments
- Clients
- Attendance
- Payroll

### Design Principles
- Each entity is represented as a separate table.
- Primary keys uniquely identify records.
- Foreign keys define relationships between entities.
- The schema follows normalization principles to avoid redundancy.
- The design ensures data consistency and scalability.

### Relationships
- One Department can have multiple Employees.
- One Client can be associated with multiple Employees.
- One Employee can have multiple Attendance records.
- One Employee can have multiple Payroll records.

This schema provides a stable data foundation for backend development
and prevents frequent schema changes during implementation.

---

## 2. Backend Architecture Planning

The backend follows a layered architecture to ensure clean separation
of concerns and maintainability.

Planned Folder Structure:
backend/
 ├ routes/
 ├ controllers/
 ├ services/
 ├ models/
 ├ middlewares/
 └ config/

### Responsibility Breakdown
- Routes define API endpoints and request paths.
- Controllers handle request validation and responses.
- Services contain business logic such as payroll calculations.
- Models represent database entities and data operations.
- Middlewares handle authentication and authorization.
- Config stores environment variables and configuration settings.

---

## 3. API Contract Definition (Planning)

API contracts define how the frontend and backend will interact.

### Objectives
- Avoid API mismatch during frontend integration.
- Enable parallel frontend and backend development.
- Reduce future API redesign efforts.

### Planned Modules
- Authentication
- Employee Management (CRUD)
- Department Management (CRUD)
- Attendance Management
- Payroll Processing

### API Design Guidelines
- RESTful naming conventions are followed.
- APIs are grouped by functional modules.
- Each API has a clear purpose and access level.
- Success and error scenarios are defined in advance.

---

## 4. Authentication & Authorization Strategy

The system uses JWT-based authentication to secure backend APIs.

### Authentication Flow
1. User logs in with credentials.
2. Backend validates the user.
3. A JWT token is generated.
4. The token is sent to the client.
5. Protected routes require a valid token.

### Authorization Plan
- Role-based access control is implemented.
- Two roles are defined:
  - HR: Full system access.
  - Employee: Restricted access to personal data.

Authorization checks are handled using middleware
to protect sensitive payroll information.

---

## 5. Payroll Processing Workflow

Payroll calculation follows a clearly defined backend workflow.

### Planned Steps
1. Fetch employee basic salary.
2. Retrieve attendance data for the selected month.
3. Calculate absences and leaves.
4. Apply salary deductions if applicable.
5. Add bonuses or incentives if any.
6. Compute net salary.
7. Store payroll records securely.

### Key Considerations
- Edge cases such as absences and leaves are handled.
- Payroll is generated monthly.
- Once generated, payroll records remain immutable.

---

## 6. Frontend Page Planning (Overview)

Frontend planning ensures role-based UI separation
and smooth user experience in later development phases.

### Planned Pages
- Login Page
- HR Dashboard
- Employee Dashboard
- Employee Management Page
- Payroll View Page

### Role-Based Access
- HR: Access to all pages.
- Employee: Access to dashboard and payroll view only.

---

## Summary

This section represents Week 2 planning deliverables for the Payroll System.
The focus is on:
- Database schema planning
- Backend architecture design
- API contract definition
- Authentication strategy
- Payroll workflow
- Frontend page planning

Implementation and coding will be carried out in upcoming weeks.
