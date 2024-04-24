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

;3. Escreva um programa que leia duas constantes 
;numéricas inteiras e imprima o maior dentre os dois
;números informados. Se os valores forem iguais, o 
;programa pode imprimir qualquer uma das variáveis.

include \masm32\include\masm32rt.inc

.data
    a dd 10
    be dd 20
    ce dd 30
.code
start:
    
    mov eax, be
    add eax, ce
    mov a, eax
    add a, 100
    ; a = b + c + 100

    printf("%d", a)
    invoke ExitProcess, 0
end start
