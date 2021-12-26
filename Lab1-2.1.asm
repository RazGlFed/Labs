%include "io.inc"     

; a + b*c
; {29, 8, 25}

section .text
global CMAIN
CMAIN:
    mov ebp, esp            ;обратная польская нотация
    fld dword [a]           
    fld dword [b]
    fld dword [c]
    fmul
    fadd
    fst dword [res]
    
    PRINT_HEX 4, [res]
    ret
    
section .data
    a dd 0x41E80000 ; IEEE754 29
    b dd 0x41000000 ; IEEE754 8
    c dd 0x41C80000 ; IEEE754 25
    res dd 0x00000000