; Program to print star triangle
; 
; *
; **
; ***
; ****
; *****
;

.model small
.stack 100h

.data
newline db 13, 10, '$'

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    ; loop 5 times
    mov cx, 5

outer_loop:

    
    call newline                    ; print newline
    inc cx                          ; increment loop
    loop outer_loop

end_prog:
    mov ah, 4ch
    int 21h

main endp

; print star
print_star proc
    mov dl, '*'
    mov ah, 02h
    int 21h

    ret
print_star endp

; print newline
print_newline proc
    lea dx, newline 
    mov ah, 09h
    int 21h

    ret
print_newline endp

end main