%include "io.inc"
section .data
Vec TIMES 250 dw 2
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ax, 0 ; Делимое
    mov ecx, 250 ;кол-во повторений L1
    mov BL, 250 ; Делитель
    L1:
    add ax, [Vec]
    LOOP L1
    PRINT_DEC 1, ax ;Вывод числа до
    NEWLINE
    DIV BL ;Делим
    PRINT_DEC 1, ax ;Вывод числа после
    xor eax, eax
    ret