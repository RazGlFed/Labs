%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    LEA ESI, [a]
    MOV AL, [ESI]
    AND AL, 0xE0
    SHR AL, 5
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    AND AL, 0x1C
    SHR AL, 2
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    AND AL, 0x03
    SHL AL, 1
    INC ESI
    MOV BL, [ESI]
    AND BL, 0x80
    SHR BL, 7
    OR AL, BL
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    AND AL, 0x70
    SHR Al, 4
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    AND AL, 0x0E
    SHR AL, 1
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    AND AL, 0x01
    SHL AL, 2
    INC ESI
    MOV BL, [ESI]
    AND BL, 0xC0
    SHR BL, 6
    OR AL, BL
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    AND AL, 0x38
    SHR AL, 3
    
    PRINT_DEC 1, AL
    NEWLINE
    
    MOV AL, [ESI]
    AND AL, 0x03
    
    PRINT_DEC 1, AL
    NEWLINE
    RET
section .data
a: db 0xC4, 0x7E, 0xA3

;Упаковка массива из 8 эл-тов по 3 бит:
;6 1 0 7 7 2 4 3
;110 001 000 111 111 010 100 011
;11000100 01111110 10100011
;0xC4 0x7E 0xA3