# 📘 Regex Practice on `reg_exps` Solutions

## 1. Strings that start with a capital letter

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, '^[A-Z]');
```

**Expected output:**

```
1 | Alice
3 | Johnson
15 | Project Manager
17 | Intern
```

---

## 2. Strings that contain only letters

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, '^[A-Za-z]+$');
```

**Expected output:**

```
1  | Alice
2  | bob
3  | Johnson
10 | admin
14 | cat
17 | Intern
```

---

## 3. Phone numbers in the format (xxx) xxx-xxxx

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, '^\(\d{3}\) \d{3}-\d{4}$');
```

**Expected output:**

```
5 | (123) 456-7890
```

---

## 4. Emails ending with “.com”

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.com$');
```

**Expected output:**

```
7 | student@example.com
```

---

## 5. Strings containing digits anywhere

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, '[0-9]');
```

**Expected output:**

```
4  | Miller123
5  | (123) 456-7890
6  | 555-1234
7  | student@example.com
8  | teacher@example.org
9  | user9
11 | 12345
12 | 9876
```

---

## 6. Valid 5-digit US ZIP codes

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, '^\d{5}$');
```

**Expected output:**

```
11 | 12345
```

---

## 7. Strings with repeated letters (like “aa”, “bb”)

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, '([A-Za-z])\1');
```

**Expected output:**

```
13 | coffee
```

---

## 8. Case-insensitive search for “manager”

```sql
SELECT id, text
FROM reg_exps
WHERE REGEXP_LIKE(text, 'manager', 'i');
```

**Expected output:**

```
15 | Project Manager
16 | Sales manager
```
