; Program to convert capital letter to small letter
;
; Example: A->a
;   
; 'A' = 65
; 'a' = 97
; B
; 65 + 32 = 97 (Capital to small letter)
; 91 - 32 = 32 (small to capital letter)
; 

.model small
.stack 100h

.data

.code
main proc

    ; input a character
    mov ah, 01h
    int 21h
    add al, 32 ; 65 + 32 => 97

    mov dl, al ; store result in data register

    ; print
    mov ah, 02h
    int 21h

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main