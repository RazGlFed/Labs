%include "io.inc"

section .text
global CMAIN
CMAIN:
    ;Insertion sort
    mov ebp, esp
    lea esi, [a]                  
    lea edi, [esi+5] 
begin:     
    lea edx, [a]           
    cmp edi, esi
    je end                  ;if step = n
    mov al, [esi]           ;temp = a[step]
    mov ebx, esi            ;j = step 
label1:
    mov ah, [ebx-1]         ;a[j-1]
    cmp ah, al              ;a[j-1] > key ?
    ja above
    jmp less
above:
    cmp ebx, edx            ;j > 0 ?
    ja label2
    jmp less
less:
    mov [ebx], al           ;array[step] = temp
    inc esi
    jmp begin
label2:
    mov [ebx], ah           ;a[j] = a[j-1]
    dec ebx                 ;j = j - 1
    jmp label1

end:
    PRINT_DEC 1, [edx]     
    NEWLINE
    inc edx
    cmp edi, edx
    ja end
    ret  
    
section .data
a: db 45, 36,19, 3, 0