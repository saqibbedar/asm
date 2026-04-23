.model small
.stack 100h

.data

.code
main proc

    ; input a number
    mov ah, 01h
    int 21h

    ; store
    mov dl, al

    ; print
    mov ah, 02h
    int 21h

    ; terminate
    mov ah, 4ch
    int 21h

main endp
end main