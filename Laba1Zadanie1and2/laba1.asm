%include "io.inc"
section .data
Vec1 dd 9,2,5,7
section .text
global CMAIN
CMAIN:
    MOV edi, 0
    MOV ebp, 1
    MOV ax, [Vec1+edi]
    MOV bx, [Vec1+ebp*4]
    CMP ax, bx  
    JS min1
    MOV cx, bx
    jmp aftermin1
    

    
    min1:
    MOV cx, ax 
    MOV edx, ebp
     
    
    aftermin1:
  
     MOV edx, 4

    MOV ebp, 8
    
    MOV ax, [Vec1+ebp]
 
    CMP ax, cx
    
    
    JS min2
    jmp aftermin2
    
    min2:
    MOV cx, ax
    
    MOV edx, ebp
     
    
    
    aftermin2:
    
    MOV ebp, 12
    MOV ax, [Vec1+ebp]

    
    CMP ax, cx
    JS min3
    
    jmp letssort
    
    min3:
    MOV cx, ax
    MOV edx, ebp
    
    
    
    
    
    
    letssort:

    
    MOV ebp, [Vec1+edi]
    
    
    
    MOV [Vec1+edi], cx
      
   
    MOV [Vec1+edx],ebp
    
     
    
    
    
    PRINT_DEC 1, cx
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