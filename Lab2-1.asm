%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp
    xor ecx, ecx
    lea ebx, [array]
    mov edi, 6
    mov esi, 0
Next:
    cmp esi, edi
    je End
    mov ah, [ebx+esi]
    cmp ah, 0
    jg Count
    inc esi
    jmp Next 
Count:
    inc cx
    inc esi
    jmp Next

End:
    PRINT_DEC 1, cx
    ret
    
section .data
array: db 8, -5, -9, 14, 0, 7
arrayLen:  equ $-array