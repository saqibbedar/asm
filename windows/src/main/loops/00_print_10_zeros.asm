; Program to print 10 zeros using loop

.model small
.stack 100h

.data

.code
main proc
    ; loop limit 10
    mov cx, 10          ; counter register for loops

    ; assigning 0 to data register
    mov dx, 48

; loop
l1:
    mov ah, 02h
    int 21h
loop l1

    mov ah, 4ch
    int 21h

main endp
end main