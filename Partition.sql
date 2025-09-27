-- Create the new parent table with the partition definition
CREATE TABLE employees_partitioned_new (
    -- ... all your existing columns ...
    emp_id INT PRIMARY KEY,
    hire_date DATE NOT NULL
    -- ...
) PARTITION BY RANGE (hire_date);

-- Create the empty individual child tables (partitions)
CREATE TABLE employees_2024 PARTITION OF employees_partitioned_new
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE employees_2025 PARTITION OF employees_partitioned_new
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
