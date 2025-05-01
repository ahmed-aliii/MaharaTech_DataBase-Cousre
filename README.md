# 🏢 Company HR Database System – ERD & Mapping

This project involves designing a relational HR database system for managing employees, departments, projects, contracts, cars, and more. It includes a detailed **Entity Relationship Diagram (ERD)** and a mapping of all entities and their relationships.


## 🔗 Relationships Summary

- One **Employee** can have many **Phones**, **Dependents**, **Skills used**, and **Projects worked on**.
- One **Department** has many **Employees** and is managed by one **Employee (Manager)**.
- **Each Employee** can be assigned to one **Car** and one **Contract**.
- **Each Project** can involve many Employees and many Skills via `Work_On` and `Skilled_Use`.
- **Employee** ←→ **Skill** ←→ **Project** via `Skilled_Use`.

![Screenshot_1-5-2025_185955_](https://github.com/user-attachments/assets/1f023245-b04a-4ee6-93db-09378e096cf6)


