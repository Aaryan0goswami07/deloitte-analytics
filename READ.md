# Deloitte Australia Data Analytics – Forage Project  
**Completed: November 2025**  
**Aaryan Goswami** | 2nd Year BBA Business Analytics  
**Manipal University Jaipur** | CGPA: 7.5 → Targeting 8.2+  

---

## 🎯 Project Goal  
Simulated **Daikibo manufacturing** ops under a data breach scenario — unified telemetry & sales JSON logs, detected **APAC anomalies** (revenue <2000 **OR** downtime >2 hrs) using SQL. Output prepped for **Tableau dashboard** (CSV export).

---

## 🛠️ Skills Demonstrated  
| Skill | Tool/Concept |
|-------|--------------|
| SQL | Joins, filters, CTEs, anomaly detection |
| Data Unification | JSON → relational tables |
| Business Insights | **20% breach risk flagged** (revenue <2000) |

---

## 📊 SQL Analysis  
```sql
-- Full query executed in DB Fiddle (SQLite)
SELECT * FROM unified_data 
WHERE (revenue < 2000 OR downtime_hrs > 2) AND region = 'APAC';
