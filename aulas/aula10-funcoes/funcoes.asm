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
    num1 dd 10
    num2 dd 20
    
.code
    _Soma:
        push ebp
        mov ebp, esp

        ;faz algo
        mov ebx, [ebp+8] ;param1
        mov ecx, [ebp+12] ;param2

        ;colocar soma em eax
        mov eax, ebx
        add eax, ecx

        pop ebp
        ret 8 ; 8bytes = 2 parametros inteiros
    start:

        push num2
        push num1

        call _Soma

        printf(" %d", eax)

    invoke ExitProcess, 0 
end start
