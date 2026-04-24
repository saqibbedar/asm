# Jump Output Questions

## Question 1:

```text
mov ax, 5
mov bx, 5
cmp ax, bx
jne skip

mov dl, 'A'
mov ah, 02h
int 21h

skip:
```

👉 Output:

```text
A
```

---