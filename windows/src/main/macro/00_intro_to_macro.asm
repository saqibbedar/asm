; Macros are perfect functions. here is why?
;
; 1. input parameters
; 2. no ret keyword is used
; 3. fast comparatively proc
;

; print string macro
print macro p1
    lea dx, p1
    mov ah, 09h
    int 21h
endm

.model small
.stack 100h

.data
str1 db 'Hello, I am saqib bedar.$'
str2 db 13, 10, 'And, I am Computer Science student at Quaid-e-Azam University, Islamabad, Pakistan.$'
str3 db 13, 10, 'For more, visit my portfolio: https://saqibbedar.github.io$'

.code
main proc
    ; load and initialize data
    mov ax, @data
    mov ds, ax

    ; print messages using macros
    print str1
    print str2
    print str3

    ; terminate program
    mov ah, 4ch
    int 21h

main endp
end main
