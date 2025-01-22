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

The SQL queries utilized to clean, organize, and prepare data for the dashboard can be found [**here.**](https://github.com/bryanng77/Role-Based-Data-Management/blob/main/Data%20Cleaning%20Role-Based-Data-Management.sql)

Targeted SQL Queries regarding various business questions can be found [**here.**](https://github.com/bryanng77/Role-Based-Data-Management/blob/main/SQL%20Business%20Questions%20Queries%20Role-Based-Data_Management.sql)

## Data Structure and Initial Checks

The database structure as seen below consists of two tables: Users and Roles, with a total row count of 251 records.

![Screenshot 2025-01-21 at 5 03 06 PM](https://github.com/user-attachments/assets/2a76e17d-d6f4-4120-aa1c-7f1a391e09b7)

Before beginning the analysis, various checks were conducted for quality control and familiarization with the datasets. The SQL queries utilized to inspect and perform the quality checks can be found **here.**

## Executive Summary

### Overview of Findings

The Role-Based Data Management project addressed critical security issues after a manager accessed unauthorized payroll data, exposing compliance risks. It implemented role-based access controls to secure sensitive information, ensure compliance, and analyze workforce data.

Analysis revealed significant variations in data access across departments. Engineering and Sales had the largest share of active employees (50 and 40 respectively), while smaller departments like Legal (5) and Support showed lower engagement, with Support having the highest inactivity rate (40%). Managerial roles were heavily concentrated on editing permissions, accounting for 25% of active employees, emphasizing the need for stricter access control protocols.

![Screenshot 2025-01-22 at 1 45 36 AM](https://github.com/user-attachments/assets/a62f5629-4e1c-4479-bda6-f169647c0afa)

### Dashboard Design Considerations

1. Clear and Intuitive Design
Header: The title, "ROLE TRACKING DASHBOARD," immediately informs the viewer about the purpose of the dashboard.
Personalized Greeting: The inclusion of “Good Morning Bryan!” adds a personalized touch, which enhances user experience and engagement.
KPI Cards: Key performance indicators (KPIs) such as "Total Employees" and "Edit Privileges" are displayed prominently, providing at-a-glance metrics that are critical for decision-making.

2. Focus on Actionable Insights
Filter Options: Dropdown filters for Editing Rights, Role, and Department allow users to customize their view and focus on specific subsets of data.
Data Distribution: The "Role Distribution" pie chart visually shows the proportion of each role, while the "Employee by Department" bar chart highlights departmental workforce distribution. Both visuals make patterns and disparities easy to spot.

3. Balanced Use of Space
The layout evenly distributes KPIs, visualizations, and detailed tables without overcrowding any section. This ensures that the dashboard remains visually appealing and easy to navigate.

4. Detailed Insights
The Department Breakdown Table provides granular data (e.g., employee names, emails, roles), enabling deeper dives into the dataset without needing additional tools.

5. Customization and Interactivity
The filters at the top enhance interactivity, empowering users to explore the data dynamically and uncover insights specific to their needs.

6. Accessibility
Simple color schemes and clear fonts improve readability, and the visual hierarchy (KPIs at the top, detailed data at the bottom) guides the user naturally through the dashboard.

## Insights & Recommendations

### **1. Data Security and Compliance**
#### Insights:
+ Compliance Risk: A prior data breach, caused by inadequate access controls, exposed sensitive information and highlighted the organization's vulnerability to non-compliance with data protection laws.
+ Editing Rights Concentration: A small subset of users has a disproportionate level of access, posing risks of accidental or intentional misuse.

#### Recommendations:
+ Enforce multi-factor authentication (MFA) for users with high-level access (e.g., Admin and Manager roles).
+ Deploy real-time monitoring systems to flag suspicious activity or unauthorized access attempts.
+ Incorporate role-based access simulations during onboarding to educate employees on best practices for data security.

### 2. Role-Based Access
#### Insights:
+ Concentration of Editing Privileges: Approximately 25% of active employees hold editing rights, with most concentrated in managerial roles. This can lead to inefficiencies and increased security risks.
+ Administrative Role Risks: Administrative roles, though fewer, often have unrestricted access, making them critical points of vulnerability.
+ Role Distribution Gaps: The workforce is dominated by employee and manager roles, with minimal representation of administrative roles (1%). This imbalance may lead to overreliance on a few Admins for sensitive tasks.
  
**Recommendations:**
+ Introduce a tiered permission structure to ensure only necessary editing rights are granted, reducing security risks.
+ Conduct quarterly audits of role permissions to verify compliance with the principle of least privilege.
+ Implement temporary privilege escalation policies for time-limited tasks requiring elevated access.

**3. Process and Technology**
#### Insights:
+ Data Siloing: Lack of cross-departmental visibility into employee roles and permissions hampers effective collaboration and resource allocation.
+ Manual Processes: Over-reliance on manual data management increases the risk of errors and delays.

**Recommendations:**
+ Adopt a centralized role management system to maintain an up-to-date record of permissions and workforce distribution.
+ Automate data entry, reporting, and permission updates using tools like workflow automation platforms or custom scripts.
+ Conduct regular process reviews to identify bottlenecks and improve role allocation efficiency.

## Conclusion
The Role-Based Data Management project successfully addressed critical security and operational challenges by implementing a robust framework for role-based access controls. Through comprehensive analysis, the project identified key gaps in workforce distribution, data security, and employee engagement. Targeted recommendations, such as auditing permissions, enforcing multi-factor authentication, and redistributing resources, were designed to mitigate risks, improve efficiency, and ensure compliance with data protection laws.

The project not only enhanced the organization’s ability to manage sensitive data securely but also optimized its workforce allocation and engagement strategies. By integrating insights into actionable steps, this initiative demonstrated the value of data-driven decision-making in addressing complex organizational challenges. Moving forward, the framework and recommendations serve as a scalable foundation for ensuring sustained security, compliance, and operational excellence in role-based data management.
