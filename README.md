
# 📘 Oracle SQL `REGEXP_LIKE` Cheatsheet

## 1. Basic Syntax

```sql
REGEXP_LIKE(column, 'pattern' [, 'match_parameters'])
```

* `column` → the string to test
* `pattern` → the regular expression
* `match_parameters` → optional flags (e.g., `'i'` for case-insensitive)

---

## 2. Anchors

| Pattern | Meaning         | Example Match       |
| ------- | --------------- | ------------------- |
| `^`     | Start of string | `^A` → "Alice"      |
| `$`     | End of string   | `com$` → "test.com" |

---

## 3. Character Classes

| Pattern  | Meaning                          | Example Match              |
| -------- | -------------------------------- | -------------------------- |
| `.`      | Any single character             | `c.t` → "cat", "cut"       |
| `[abc]`  | Any one of a, b, c               | `b[aeiou]t` → "bat", "bet" |
| `[^abc]` | Any char **except** a, b, c      | `[^0-9]` → "x", "y"        |
| `[A-Z]`  | Range A to Z                     | `^[A-Z]` → "Alice"         |
| `\d`     | Digit (`[0-9]`)                  | `\d{3}` → "123"            |
| `\w`     | Word char (`[A-Za-z0-9_]`)       | `\w+` → "abc123"           |
| `\s`     | Whitespace (space, tab, newline) | `\s+` → "  ", "\t\n"       |

---

## 4. Quantifiers

| Pattern | Meaning         | Example Match                 |
| ------- | --------------- | ----------------------------- |
| `*`     | 0 or more       | `a*` → "", "a", "aaa"         |
| `+`     | 1 or more       | `a+` → "a", "aaa"             |
| `?`     | 0 or 1          | `colou?r` → "color", "colour" |
| `{n}`   | Exactly n       | `\d{5}` → "12345"             |
| `{n,}`  | n or more       | `\d{2,}` → "12", "1234"       |
| `{n,m}` | Between n and m | `\d{2,4}` → "12", "1234"      |

---

## 5. Predefined POSIX Character Classes

| Pattern       | Meaning                    | Equivalent to    | Example Match     |
| ------------- | -------------------------- | ---------------- | ----------------- |
| `[[:alpha:]]` | Alphabetic characters      | `[A-Za-z]`       | `'abc'`           |
| `[[:digit:]]` | Digits                     | `[0-9]`          | `'123'`           |
| `[[:alnum:]]` | Alphanumeric               | `[A-Za-z0-9]`    | `'abc123'`        |
| `[[:blank:]]` | Space or tab               | `[\t ]`          | `'a b'`, `'a\tb'` |
| `[[:space:]]` | Whitespace (incl. newline) | `\s`             | `'a b'`, `'a\nb'` |
| `[[:upper:]]` | Uppercase letters          | `[A-Z]`          | `'HELLO'`         |
| `[[:lower:]]` | Lowercase letters          | `[a-z]`          | `'world'`         |
| `[[:punct:]]` | Punctuation                | `[.,;!?]` (etc.) | `'hello!'`        |

---

## 6. Grouping & Alternation

| Pattern | Meaning                | Example Match                   |       |                      |
| ------- | ---------------------- | ------------------------------- | ----- | -------------------- |
| `(abc)` | Capturing group        | `(dog\|cat)` → "dog" or "cat"   |       |                      |
| \`x     \| y\`                    | Match either x or y             | \`foo \| bar\` → "foo", "bar" |
| `\1`    | Backreference to group | `([A-Za-z])\1` → "ee" in "tree" |       |                      |

---

## 7. Match Parameters

| Parameter | Meaning                                         |
| --------- | ----------------------------------------------- |
| `'i'`     | Case-insensitive                                |
| `'c'`     | Case-sensitive (default)                        |
| `'n'`     | Allows dot `.` to match newline                 |
| `'m'`     | Multi-line mode (^ and \$ match line start/end) |
| `'x'`     | Ignores whitespace in pattern                   |

---

