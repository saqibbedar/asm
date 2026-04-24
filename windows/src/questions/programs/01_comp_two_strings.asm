; Program to compare two strings

.model small
.stack 100h

.data
str1 db 'Hello, world!$'
str2 db 'Hello, world!$'

msg_equal db 'Equal$'
msg_not_equal db 'Not Equal$'

.code
main proc
    ; load data
    mov ax, @data
    mov ds, ax

    ; load strings into index registers [arrays]
    lea si, str1            ; source index register
    lea di, str2            ; destination index register

; compare strings
compare_str:
    ; extract values and save into bl, cl
    mov bl, [si]        
    mov cl, [di]

    ; if bl != cl jump to not_equal label(mem addr)
    cmp bl, cl
    jne not_equal

    ; else if (is end of string) and jne is still false means equal jump to equal label(mem addr)
    cmp bl, '$'             ; end of string
    je equal

    ; increase indexes
    inc si
    inc di

    ; continue loop until inside conditions are not satisfying
    jmp compare_str


; if strings equal
equal:
    lea dx, msg_equal
    mov ah, 09h
    int 21h
    jmp end_prog

; if strings not equal
not_equal:
    lea dx, msg_not_equal
    mov ah, 09h
    int 21h
    jmp end_prog

; terminate program
end_prog:
    mov ah, 4ch
    int 21h

main endp
end main