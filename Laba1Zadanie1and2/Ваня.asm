%include "io.inc"
section .data
x dd 1
section .text
global CMAIN
CMAIN:

    mov ecx, 4
L2:
    mov [x], ecx
    mov ecx, 2
    
    
L1:


    loop L1
    mov ecx, [x]
    loop L2
    ret