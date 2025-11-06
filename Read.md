# Deloitte Australia Data Analytics – Forage Project  
**Completed: November 2025**  
**Aaryan Goswami** | 2nd Year BBA Business Analytics  
**Manipal University Jaipur** | CGPA: 7.5 → Targeting 8.2+  

---

## 🎯 Project Goal  
Simulated manufacturing ops for Daikibo – Unified telemetry/sales JSON data, detected anomalies (low revenue/downtime breaches) in APAC region for Tableau dashboard prep.

---

## 🛠️ Skills Demonstrated  
| Skill | Tool/Concept |
|-------|--------------|
| SQL | Joins, filters, CTEs, anomaly detection |
| Data Unification | JSON to relational tables |
| Business Insights | 20% breach risk flagged (revenue <2000) |

---

## 📊 SQL Analysis  
```sql
-- Full query executed in DB Fiddle (SQLite)
SELECT * FROM unified_data 
WHERE (revenue < 2000 OR downtime_hrs > 2) AND region = 'APAC';
