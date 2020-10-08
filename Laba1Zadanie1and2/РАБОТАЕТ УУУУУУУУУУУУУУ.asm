%include "io.inc"
section .data
Vec1 dw 3,2,0,1
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    
    MOV edx, 0
    MOV ebx, 0
    
    xor ecx,ecx
    MOV cx, [Vec1]
    Dec ecx
    ADD ebx, Vec1+2
    MOV dx, [ebx]
    L1:
    MOV ax, [ebx+2]
    CMP dx, ax
    JS L2
    mov dx, ax
L2:
    add ebx, 2
    LOOP L1
    PRINT_DEC 1, dx
    NEWLINE
    NEWLINE
    NEWLINE
    NEWLINE
    MOV ax, [Vec1+0]
    PRINT_DEC 1, ax
    NEWLINE
    MOV ax, [Vec1+2]
    PRINT_DEC 1, ax
    NEWLINE
    MOV ax, [Vec1+4]
    PRINT_DEC 1, ax
    NEWLINE
    MOV ax, [Vec1+6]
    PRINT_DEC 1, ax
    NEWLINE
    ret