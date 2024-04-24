.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
include \masm32\include\msvcrt.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib
includelib \masm32\lib\msvcrt.lib
include \masm32\macros\macros.asm

.data
    ;dd = tem 4 bytes
    x dd 4 
    y dd 7
    soma dd 0
    subtracao dd 0
    multiplicacao dd 0
.code
start:
    ; soma : add
    mov eax, x
    add eax, y
    mov soma, eax

    ; subtracao : sub
    mov eax, x
    sub eax, y
    mov subtracao, eax

    ; multiplicacao
    mov eax, x
    imul eax, y
    mov multiplicacao, eax

    printf("SOMA: %d\n", soma)
    printf("SUBTRACAO:  %d\n", subtracao)
    printf("MULTIPLICACAO: %d\n", multiplicacao)
    invoke ExitProcess, 0
end start
