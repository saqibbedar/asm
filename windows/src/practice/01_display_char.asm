.model small
.stack 100h

.data

.code
main proc

    mov dl, 'a' ; store 'a' into data(l) register

    ; print 
    mov ah, 02h
    int 21h

    ; terminate
    mov ah, 4ch
    int 21h

main endp
end main