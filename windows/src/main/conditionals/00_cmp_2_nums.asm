; Program to compare two numbers and print equal and not equal message

.model small
.stack 100h

.data
msg_equal db 'Equal', 13, 10, '$'
msg_not_equal db 'Not Equal', 13, 10, '$'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov bl, 2
    mov cl, 2
    
    ; if (bl == cl)
    cmp bl, cl
    je equal 

    ; else
    lea dx, msg_not_equal
    mov ah, 09h
    int 21h
    jmp end_prog

equal:
    lea dx, msg_equal
    mov ah, 09h
    int 21h

end_prog:
    mov ah, 4ch
    int 21h

main endp
end main