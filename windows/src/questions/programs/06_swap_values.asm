; Program to swap a with b

.model small
.stack 100h

.data
a db 'a$'
b db 'b$'

a_bs_msg db 'A before swap: $'
a_as_msg db 13, 10, 'A after swap: $' 
b_bs_msg db 13, 10, 'B before swap: $'
b_as_msg db 13, 10, 'B after swap: $'

.code
main proc
    ; load and initialize data
    mov ax, @data
    mov ds, ax

    ; print a before swap
    lea dx, a_bs_msg
    call print
    lea dx, a
    call print

    ; print b before swap
    lea dx, b_bs_msg
    call print
    lea dx, b
    call print
    

    ; perform swap
    lea si, a
    lea di, b
    call swap

    ; print a after swap
    lea dx, a_as_msg
    call print
    lea dx, a
    call print

    ; print b after swap
    lea dx, b_as_msg
    call print
    lea dx, b
    call print

    ; terminate program
    mov ah, 4ch
    int 21h

main endp

swap proc
    mov al, [si]            ; load a
    mov bl, [di]            ; load b

    mov [si], bl            ; a = b
    mov [di], al            ; b = a

    ret
swap endp

print proc
    mov ah, 09h
    int 21h

    ret
print endp

end main