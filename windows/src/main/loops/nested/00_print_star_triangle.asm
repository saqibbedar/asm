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

    mov ax, @data
    mov ds, ax

    mov cx, 5        ; total rows
    mov si, 1        ; current row = 1

outer_loop:
    mov bx, si       ; number of stars

inner_loop:
    call print_star
    dec bx
    jne inner_loop

    call print_newline

    inc si           ; next row
    loop outer_loop

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