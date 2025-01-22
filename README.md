# 🫂 Role-Based-Data-Management

## Project Background
The People Analytics team initiated the Role-Based Data Management project to tackle challenges in securely managing employee data and providing tailored access to sensitive information. This project was critical as a manager accidentally accessed payroll data for another department due to a lack of proper access controls. This incident breached privacy and risked non-compliance with data protection laws, highlighting the urgent need for a more secure and role-sensitive data management system.

## The Solution: Role-Based Access Control
The HR Analytics team initiated the Role-Based Data Management Project to address these challenges. This ensures that users only see relevant and authorized data for their role.

For example:

1️⃣ A Manager can view employee performance data and trends only for their department.

2️⃣ An HR Administrator (in this case, the People Analytics Team), can access organization-wide data but must adhere to strict logging and monitoring protocols.

3️⃣ An Employee has access only to their personal information, shielding them from unnecessary exposure to broader datasets.

## Objectives

+ Enhance the security of employee data by implementing role-based access controls.

+ Provide granular access tailored to specific roles, ensuring users only access information relevant to their responsibilities.

+ Reduce risks of data breaches and compliance violations.

+ Enable data-driven decision-making by organizing and analyzing workforce data efficiently.

## Data Content

An interactive PowerBI Dashboard can be downloaded **here.**

The SQL queries utilized to inspect and perform quality checks can be found **here.**

The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found **here.**

Targeted SQL Queries regarding various business questions can be found **here.**

## Data Structure and Initial Checks

The database structure as seen below consists of two tables: Users and Roles, with a total row count of 251 records.

![Screenshot 2025-01-21 at 5 03 06 PM](https://github.com/user-attachments/assets/2a76e17d-d6f4-4120-aa1c-7f1a391e09b7)

Before beginning the analysis, various checks were conducted for quality control and familiarization with the datasets. The SQL queries utilized to inspect and perform the quality checks can be found **here.**

## Executive Summary

### Overview of Findings

The Role-Based Data Management project addressed critical security issues after a manager accessed unauthorized payroll data, exposing compliance risks. It implemented role-based access controls to secure sensitive information, ensure compliance, and analyze workforce data.

Analysis revealed significant variations in data access across departments. Engineering and Sales had the largest share of active employees (50 and 40 respectively), while smaller departments like Legal (5) and Support showed lower engagement, with Support having the highest inactivity rate (40%). Managerial roles were heavily concentrated in editing permissions, accounting for 25% of active employees, emphasizing the need for stricter access control protocols.

![Screenshot 2025-01-22 at 1 45 36 AM](https://github.com/user-attachments/assets/a62f5629-4e1c-4479-bda6-f169647c0afa)






