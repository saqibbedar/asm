# 🧪 OUTPUT QUESTIONS (with answers)

---

## 🔹 Q1

```asm
msg db 'A',13,10,'B','$'
```

👉 Output:

```text
A
B
```

---

## 🔹 Q2

```asm
msg db 13,10,'A','B','$'
```

👉 Output:

```text

AB
```

---

## 🔹 Q3

```asm
msg db 'ABC',10,'X','$'
```

👉 Output:

```text
ABC
   X
```

👉 Reason:

* LF keeps same column

---

## 🔹 Q4

```asm
msg db 'ABC',13,10,'X','$'
```

👉 Output:

```text
ABC
X
```

---

## 🔹 Q5

```asm
msg db 'A',10,13,'B','$'
```

👉 Output:

```text
A
B
```

👉 But:

```text
10,13 = non-standard order
```

---

## 🔹 Q6

```asm
msg db '1','$'
mov dl, msg
mov ah, 02h
int 21h
```

👉 Output:

```text
1
```

---

## 🔹 Q7

```asm
mov dl, 1
mov ah, 02h
int 21h
```

👉 Output:

```text
☻ (non-printable)
```

---

## 🔹 Q8

```asm
msg db "Hello", '$'
```

👉 Output:

```text
Hello
```

---

## 🔹 Q9

```asm
msg db "Hello$", 0
```

👉 Output:

```text
Hello
```

👉 `0` ignored

---

## 🔹 Q10

```asm
msg db 'A',13,'B','$'
```

👉 Output:

```text
BA
```

👉 Explanation:

* 13 → moves cursor to start
* B overwrites A

---

## 🔹 Q11

```asm
msg db 'A',10,'B','$'
```

👉 Output:

```text
A
 B
```

👉 Same column shift

---

## 🔹 Q12

```asm
msg db 'A','B','C','$'
```

👉 Output:

```text
ABC
```

---

## 🔹 Q13

```asm
msg1 db "Hello, I am Saqib Bedar.$", 13, 10
msg2 db "I am learning Assembly language.$"
```

👉 Output:

```text
Hello, I am Saqib Bedar.I am learning Assembly language.
```