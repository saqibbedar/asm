; Program to reverse a string

.model small
.stack 100h

.data
str_ db 'ali$'

.code
main proc
    ; load & initialize data
    mov ax, @data
    mov ds, ax

    ; get string length (length is saved in counter register)
    call str_len

    ; save length into register for next loop 
    mov bx, cx

    ; initialize string for reverse
    lea si, str_

; reverse string
reverse_str_loop:
    mov dx, [si]
    push dx
    inc si
    loop reverse_str_loop

    mov cx, bx
; print reversed string
print_rev_str_loop:
    pop dx
    mov ah, 02h
    int 21h
    loop print_rev_str_loop

    ; terminate program
    mov ah, 4ch
    int 21h

main endp

str_len proc
    lea si, str_
    mov cx, 0               ; counter register
cal_len:
    mov al, [si]

    cmp al, '$'
    je done

    inc si
    inc cx
    jmp cal_len

done:
    ret
str_len endp

end main