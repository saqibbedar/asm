; Program to print English alphabets A-Z, a-z

.model small
.stack 100h

.data
newline db 13, 10, '$'

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    ; print capital A-Z
    mov cx, 26
    mov dl, 'A'

l1:
    mov ah, 02h
    int 21h
    inc dl
loop l1

    ; print newline
    lea dx, newline
    mov ah, 09h
    int 21h

    ; print small a-z
    mov cx, 26
    mov dl, 'a'
l2: 
    mov ah, 02h
    int 21h
    inc dl
loop l2

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main