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

.code
    start:

    mov eax, 10
    push eax
    mov eax, 50
    push eax
    mov eax, 100
    push eax

    pop ebx
    printf("%d \n", ebx)
    pop ebx
    printf("%d \n", ebx)
    pop ebx
    printf("%d \n", ebx)

    invoke ExitProcess, 0 
end start
