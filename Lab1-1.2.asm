%include "io.inc"

; a + b*c
; {-11, 3, 19}

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ax, [b]
    mov bx, [c]
    imul bx
    add ax, [a]
    PRINT_DEC 4, AX 
    ret
    
section .data
a dw 0xFFF7 ; доп код -11
b dw 0x03 ; доп код 3
c dw 0x13 ; доп код 19