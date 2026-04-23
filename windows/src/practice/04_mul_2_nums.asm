; Program to multiply 2 numbers

.model small
.stack 100h

.data

.code
main proc
    ; multiply 2 x 4 = 8
    mov al, 2
    mov bl, 4
    mul bl

    add al, 48      ; binary conversion

    ; print
    mov dl, al
    mov ah, 02h
    int 21h

    ; terminate
    mov ah, 4ch
    int 21h
main endp
end main