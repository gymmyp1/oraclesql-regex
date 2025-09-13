DROP TABLE reg_exps;

-- Create table
CREATE TABLE reg_exps (
  id NUMBER CONSTRAINT reg_exps_pk PRIMARY KEY,
  text VARCHAR2(512) NOT NULL
);

-- Insert practice rows
INSERT INTO reg_exps (
  id, text
) VALUES (
  1,
 'But, soft! What light through yonder window breaks?
It is the east, and Juliet is the sun.
Arise, fair sun, and kill the envious moon,
Who is already sick and pale with grief,
That thou her maid art far more fair than she.'
);
INSERT INTO reg_exps (id, text) VALUES (2, 'Alice');         -- Starts with capital
INSERT INTO reg_exps (id, text) VALUES (3, 'bob');           -- Lowercase start
INSERT INTO reg_exps (id, text) VALUES (4, 'Johnson');       -- Only letters
INSERT INTO reg_exps (id, text) VALUES (5, 'Miller123');     -- Letters + digits
INSERT INTO reg_exps (id, text) VALUES (6, '(123) 456-7890');-- Phone format match
INSERT INTO reg_exps (id, text) VALUES (7, '555-1234');      -- Not in phone format
INSERT INTO reg_exps (id, text) VALUES (8, 'student@example.com'); -- Ends with .com
INSERT INTO reg_exps (id, text) VALUES (9, 'teacher@example.org'); -- Not .com
INSERT INTO reg_exps (id, text) VALUES (10, 'user9');         -- Contains digits
INSERT INTO reg_exps (id, text) VALUES (11, 'admin');        -- No digits
INSERT INTO reg_exps (id, text) VALUES (12, '12345');        -- Valid ZIP
INSERT INTO reg_exps (id, text) VALUES (13, '9876');         -- Not valid ZIP
INSERT INTO reg_exps (id, text) VALUES (14, 'coffee');       -- Contains double "ff"
INSERT INTO reg_exps (id, text) VALUES (15, 'cat');          -- No repeated letters
INSERT INTO reg_exps (id, text) VALUES (16, 'Project Manager'); -- Case-insensitive test
INSERT INTO reg_exps (id, text) VALUES (17, 'Sales manager');   -- Lowercase "manager"
INSERT INTO reg_exps (id, text) VALUES (18, 'Intern');          -- Not manager

-- Commit the inserts
COMMIT;
