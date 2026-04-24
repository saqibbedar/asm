; Program to input a string and display it

.model small
.stack 100h

.data
input_msg db "Enter your message: $"
input_str db 150 dup(?)
msg db 13, 10, 'You entered: $'

.code
main proc
    
    mov ax, @data
    mov ds, ax

    ; print input message
    lea dx, input_msg
    call print

    lea si, input_str

input_loop:
    mov ah, 01h
    int 21h

    cmp al, 13                  ; enter pressed?
    je end_input

    mov [si], al                ; save entered value at current index addr
    inc si                      ; mov to next index
    jmp input_loop

end_input:
    mov byte ptr [si], '$'      ; terminate string

    ; print message
    lea dx, msg
    call print

    ; print final string
    lea dx, input_str
    call print

    ; terminate program
    mov ah, 4ch
    int 21h

main endp

; function to print output
print proc
    mov ah, 09h
    int 21h

    ret
print endp


end main