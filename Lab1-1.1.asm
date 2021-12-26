%include "io.inc"

; a + b*c
; {29, 8, 25}

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
a dw 0x1D ; доп код 29
b dw 0x08 ; доп код 8
c dw 0x19 ; доп код 25