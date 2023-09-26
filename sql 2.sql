
CREATE TABLE email_list_example (
    ID INT PRIMARY KEY,
    email VARCHAR(255)
);

INSERT INTO email_list_example (ID, email) VALUES (1, 'indah@example.com');
INSERT INTO email_list_example (ID, email) VALUES (2, 'indah@example.com');
INSERT INTO email_list_example (ID, email) VALUES (3, 'indah@example.com');
INSERT INTO email_list_example (ID, email) VALUES (4, 'monica@example.com');
INSERT INTO email_list_example (ID, email) VALUES (5, 'monica@example.com');
INSERT INTO email_list_example (ID, email) VALUES (6, 'dewi@example.com');


SELECT email
FROM email_list_example
GROUP BY email
HAVING COUNT(email) > 1;
