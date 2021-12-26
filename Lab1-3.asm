%include "io.inc"
section .text
global CMAIN
CMAIN:  ;Существует ли треугольник по трем сторонам?
    mov ah, [a]
    mov al, [b]
    add al, [c]
    cmp ah, al      ;a > b+c ?
    ja No
    mov ah, [b]
    mov al, [a]
    add al, [c]
    cmp ah, al      ;b > a+c ?
    ja No
    mov ah, [c]
    mov al, [a]
    add al, [b]
    cmp ah, al      ;c > a+b ?
    ja No    
    PRINT_DEC 1, 1  ;Существует
    ret    
No:
    PRINT_DEC 1, 0  ;Не существует
    ret
    
section .data
a: db 3
b: db 4
c: db 5