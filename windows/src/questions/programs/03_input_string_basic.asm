
.model small
.stack 100h

.data
var1 db 100 dup('$')

.code
main proc
    mov ax, @data
    mov ds, ax

    lea si, var1

input:
    mov ah, 01h
    int 21h

    cmp al, 13              ; enter pressed
    je end_program

    mov [si], al
    inc si
    
    jmp input

end_program:
    lea dx, var1
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main