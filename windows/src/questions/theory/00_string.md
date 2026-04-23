# 📘 THEORY (Concept + Explanation)

## 🧠 1. How Strings Work in Assembly

In assembly:

```text
String = sequence of bytes in memory
```

Example:

```asm
var db 'A','B','C'
```

👉 Stored as:

```text
65 66 67
```

---

## 🧠 2. Continuous Memory Storage

```asm
var3 db 13,10,'Hello$'
```

👉 Stored as:

```text
13, 10, 'H','e','l','l','o','$'
```

👉 Important:

```text
Assembler does NOT separate numbers and strings
It creates ONE continuous sequence
```

---

## 🧠 3. Printing Strings (DOS)

```asm
mov ah, 09h
lea dx, var
int 21h
```

👉 Rules:

```text
DX = address of string
String must end with '$'
```

---

## 🧠 4. New Line in Assembly

| Value | Meaning                                 |
| ----- | --------------------------------------- |
| 13    | Carriage Return (CR) → move to column 0 |
| 10    | Line Feed (LF) → move down              |

👉 Correct newline:

```asm
db 13,10
```

---

## 🧠 5. Order Matters

```asm
db 13,10,'Hello$'
```

👉 newline BEFORE text

```asm
db 'Hello',13,10,'$'
```

👉 newline AFTER text

---

## 🧠 6. LF vs CR Behavior

| Code    | Effect                 |
| ------- | ---------------------- |
| 10 only | move down, same column |
| 13 only | go to start, same line |
| 13,10   | proper new line        |

---

## 🧠 7. ASCII Basics

| Character | ASCII |
| --------- | ----- |
| 'A'       | 65    |
| 'a'       | 97    |
| '0'       | 48    |

👉 Difference:

```text
'a' - 'A' = 32
```

---

## 🧠 8. Characters vs Numbers

```asm
db '1' → 49 (ASCII)
db 1   → 1 (binary)
```

👉 Printing:

```asm
mov dl, '1' → prints 1
mov dl, 1   → prints weird symbol
```

---

## 🧠 9. String Terminators

| Terminator | Used for              |
| ---------- | --------------------- |
| `$`        | DOS printing (AH=09h) |
| `0`        | C-style strings       |

---

## 🧠 10. Quotes in Assembly

```asm
db 'A'
db "A"
```

👉 Same result

👉 No difference between:

```text
single quotes vs double quotes
```

---

## 🧠 11. Data Directives

| Directive | Size    |
| --------- | ------- |
| db        | 1 byte  |
| dw        | 2 bytes |
| dd        | 4 bytes |
| dq        | 8 bytes |

---

## 🧠 12. Key Rule (VERY IMPORTANT)

```text
Assembly does NOT understand strings
It only understands bytes
```
