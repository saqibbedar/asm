; Program to find string length

.model small
.stack 100h

.data
str1 db 'Hello$'

.code
main proc
    mov ax, @data
    mov ds, ax

    call str_len

    ; print length
    add cl, 48              ; ascii conversion
    mov dl, cl
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

str_len proc
    lea si, str1
    mov cx, 0               ; length counter
len:
    mov al, [si]

    cmp al, '$'             ; end on '$' is found
    je done

    inc si
    inc cx
    jmp len

done:
    ret

str_len endp

main endp
end main