; Program to print 0 to 9 numbers using loop

.model small
.stack 100h

.data

.code
main proc
    mov cx, 10          ; start loop 10 times
    mov dl, '0'         ; start from 0

l1:
    ; print
    mov ah, 02h
    int 21h

    ; increment
    inc dl
loop l1

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main