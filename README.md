# Deloitte Australia Data Analytics – Forage Project  
**Completed: November 2025** | **100% Completion**  
**Aaryan Goswami** | 2nd Year BBA Business Analytics  
**Manipal University Jaipur** | CGPA: 7.5 → Targeting 8.2+  

---

## 🎯 Project Goal  
Simulated Daikibo manufacturing breach response – Unified telemetry & sales JSON logs, identified APAC operational anomalies using SQL:  
- Revenue < ₹2000 **OR**  
- Downtime > 2 hrs  

**Output**: Clean result set ready for Tableau dashboard (CSV export for visualization).

---

## 🛠️ Core Skills Applied  
| Skill | Implementation |
|-------|----------------|
| **SQL** | CTEs, JOINs, conditional filtering, anomaly logic |
| **Data Unification** | JSON → relational tables (telemetry + sales) |
| **Risk Analysis** | Flagged **20% breach exposure** in APAC region |
| **Business Translation** | Linked technical flags to ops remediation |

---
## Nadella-Style No-Code Agent (Zapier)
[Agent Email Proof](zapier_email_proof.jpg)  
> **Dent**: Auto-email on new anomaly → **5x faster response**

## 📊 SQL Pipeline & Results  
```sql
-- Unified view + anomaly detection (DB Fiddle - SQLite)
SELECT * FROM unified_data 
WHERE (revenue < 2000 OR downtime_hrs > 2) AND region = 'APAC';
