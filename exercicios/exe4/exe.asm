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

; 4. Escreva um programa que leia uma constante 
; numérica inteira e, em seguida, escreva na tela 
; se o número é par ou ímpar.

.data
   
    aa dd 157

.code
start:
    
    ; Dividendo |_Divisor
    ; Resto      Quociente

    mov eax, aa
    mov ebx, 2
    xor edx, edx
    div ebx ;divisor => resultado em EAX, => resto da divisao EDX
    
    cmp edx, 0
    JE _Par

    _Impar:
        printf("%d : IMPAR\n", aa)
        invoke ExitProcess, 0

    _Par:
        printf("%d : PAR\n", aa)
        invoke ExitProcess, 0

    

    invoke ExitProcess, 0
end start
