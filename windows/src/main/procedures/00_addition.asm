; Program to add two numbers using procedure

.model small
.stack 100h

.data
num1 dw ?
num2 dw ?

.code
main proc

    ; initialize and load data
    mov ax, @data
    mov ds, ax

    ; input first number
    mov ah, 01h
    int 21h
    sub al, 48

    mov ah, 0
    mov num1, ax

    ; input second number
    mov ah, 01h
    int 21h
    sub al, 48

    mov ah, 0
    mov num2, ax

    ; load into registers
    mov ax, num1
    mov bx, num2

    ; parameters
    mov al, al
    mov bl, bl

    ; function call
    call sum

    ; print
    add al, 48                  ; num -> ascii
    mov dl, al
    mov ah, 02h
    int 21h

    ; terminate
    mov ah, 4ch
    int 21h

main endp

sum proc
    add al, bl
    ret
sum endp

end main