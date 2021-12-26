%include "io.inc"     

; a + b*c
; {-11, 3, 19}

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
    a dd 0xC1300000 ; IEEE754 -11
    b dd 0x40400000 ; IEEE754 3
    c dd 0x41980000 ; IEEE754 19
    res dd 0x00000000