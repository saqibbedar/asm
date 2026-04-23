.model small
.stack 100h

.data

.code
main proc

    ; number to display
    mov dl, 3
    add dl, 48 ; ascii conversion

    ; print 
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main