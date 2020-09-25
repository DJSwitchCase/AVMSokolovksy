%include "io.inc"
section .data
Vec1 dd 3,12,7,5
x dd 0
section .text
global CMAIN
CMAIN:
MOV ecx, 2
    L2:
    mov [x], ecx
    mov ecx, 2
    MOV edi, 0
    MOV ebx, 0
    ADD edi, 1
    ADD ebx, 2

    L1:
    MOV dx, [Vec1+edi*4]
    MOV ax, [Vec1+ebx*4]
   
    CMP dx, ax
    JS dxgreaterax
    JMP further
    
    dxgreaterax:
    mov esi, [Vec1+ebx*4]
    mov [Vec1+ebx*4], dx
    mov [Vec1+edi*4], esi
    jmp further
    
    
    
    further:
    add ebx, 1
    add edi, 1
    LOOP L1
    mov ecx, [x]
    LOOP L2
    
    
    PRINT_DEC 1, dx
    NEWLINE
    NEWLINE
    NEWLINE
    NEWLINE
    MOV ax, [Vec1+0]
    PRINT_DEC 1, ax
    NEWLINE
    MOV ax, [Vec1+4]
    PRINT_DEC 1, ax
    NEWLINE
    MOV ax, [Vec1+8]
    PRINT_DEC 1, ax
    NEWLINE
    MOV ax, [Vec1+12]
    PRINT_DEC 1, ax
    NEWLINE
    ret