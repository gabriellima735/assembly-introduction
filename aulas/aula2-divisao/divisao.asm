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

; Dividendo |_Divisor
;     Resto  Quociente


.data
    dividendo dd 100
    divisor dd 10
    divisao dd 0
    resto dd 0
.code
start:
    ; divisao : div
    mov eax, dividendo
    mov ebx, divisor
    xor edx, edx ; edx = 0
    div ebx ; divisor => resultado em EAX, => resto da divisao EDX
    mov divisao, eax
    mov resto, edx

    printf("DIVISAO: %d,%d\n", divisao, resto)
    invoke ExitProcess, 0
end start
