CREATE TABLE input_table (
    id INT PRIMARY KEY,
    num INT
);

INSERT INTO input_table (id, num) VALUES (1, 5);
INSERT INTO input_table (id, num) VALUES (2, 5);
INSERT INTO input_table (id, num) VALUES (3, 5);
INSERT INTO input_table (id, num) VALUES (4, 2);
INSERT INTO input_table (id, num) VALUES (5, 2);
INSERT INTO input_table (id, num) VALUES (6, 5);
INSERT INTO input_table (id, num) VALUES (7, 5);
INSERT INTO input_table (id, num) VALUES (8, 5);
INSERT INTO input_table (id, num) VALUES (9, 8);
INSERT INTO input_table (id, num) VALUES (10, 8);


WITH NumberGroups AS (
  SELECT
    num,
    LAG(num) OVER (ORDER BY id) AS prev_num,
    LEAD(num) OVER (ORDER BY id) AS next_num
  FROM input_table
)

SELECT DISTINCT num
FROM NumberGroups
WHERE num = prev_num AND num = next_num
ORDER BY num ASC;
