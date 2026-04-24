; Program to input string using buffer
;
; [0] → max size
; [1] → actual size entered
; [2...] → characters
;

.model small
.stack 100h

.data
buffer db 20
       db ?
       db 20 dup(?)

msg db 13,10,'You entered: $'

.code
main proc

    mov ax, @data
    mov ds, ax

    ; take input
    lea dx, buffer
    mov ah, 0Ah
    int 21h

    ; print message
    lea dx, msg
    mov ah, 09h
    int 21h

    ; print input
    lea dx, buffer+2   ; skip first 2 bytes
    mov ah, 09h
    int 21h

    mov ah, 4ch
    int 21h

main endp
end main