-- Deloitte Forage SQL: Data Unification & Anomaly Detection for Daikibo Manufacturing
-- Task 2/3: Unify telemetry/sales JSON, query breaches for dashboard prep
-- Output: Anomalies for Tableau viz (revenue <2000 OR downtime >2 hrs in APAC)

-- Step 1: Create tables from sim JSON data
CREATE TABLE telemetry (
    machine_id INT,
    factory VARCHAR(10),
    timestamp TEXT,
    status VARCHAR(20),
    downtime_hrs INT
);

CREATE TABLE sales (
    machine_id INT,
    factory VARCHAR(10),
    timestamp TEXT,
    revenue INT,
    region VARCHAR(10)
);

-- Step 2: Insert sim sample data (3 machines, APAC/EMEA focus)
INSERT INTO telemetry VALUES 
(1, 'Factory A', '2025-01-01 10:00', 'breach', 3),
(2, 'Factory A', '2025-01-02 11:00', 'downtime', 2),
(3, 'Factory B', '2025-01-03 12:00', 'normal', 0);

INSERT INTO sales VALUES 
(1, 'Factory A', '2025-01-01 10:00', 10000, 'APAC'),
(2, 'Factory A', '2025-01-02 11:00', 1500, 'APAC'),
(3, 'Factory B', '2025-01-03 12:00', 12000, 'EMEA');

-- Step 3: Unify data (JOIN on machine_id/timestamp for full view)
CREATE VIEW unified_data AS
SELECT t.machine_id, t.factory, t.timestamp, t.status, t.downtime_hrs, s.revenue, s.region
FROM telemetry t
JOIN sales s ON t.machine_id = s.machine_id AND t.timestamp = s.timestamp;

-- Step 4: Anomaly Query (flag breaches for dashboard – revenue <2000 OR downtime >2)
SELECT *
FROM unified_data
WHERE (revenue < 2000 OR downtime_hrs > 2)
AND region = 'APAC'
ORDER BY timestamp DESC;

-- Expected Output (Sim-Match): 2 rows flagged (Factory A breaches)
-- machine_id | factory    | timestamp          | status    | downtime_hrs | revenue | region
-- 1          | Factory A  | 2025-01-01 10:00   | breach    | 3            | 10000   | APAC
-- 2          | Factory A  | 2025-01-02 11:00   | downtime  | 2            | 1500    | APAC