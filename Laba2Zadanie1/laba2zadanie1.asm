%include "io.inc"
section .data
Vec TIMES 250 dw 2
section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov ax, 0 ; �������
    mov ecx, 250 ;���-�� ���������� L1
    mov BL, 250 ; ��������
    L1:
    add ax, [Vec]
    LOOP L1
    PRINT_DEC 1, ax ;����� ����� ��
    NEWLINE
    DIV BL ;�����
    PRINT_DEC 1, ax ;����� ����� �����
    xor eax, eax
    ret