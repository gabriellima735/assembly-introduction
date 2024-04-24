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

;1. Escreva um programa que calcule a soma dos 100 primeiros 
;números inteiros positivos. O resultado deverá ser armazenado 
;no registrador eax e também deverá ser exibido na tela.

.data
    contador dd 0
    somatorio dd 0
.code

start:

    _InicioLoop:
        mov contador, 1 ; zerar contador

    _CorpoLoop:

        cmp contador, 101
        JGE _FinalLoop
        
        mov eax, contador
        add somatorio, eax
        ;printf("Contador [ %d ] = %d \n", contador, somatorio)

        add contador, 1

        JMP _CorpoLoop

    _FinalLoop:

        mov eax, somatorio
        printf("SOMA FINAL: %d \n", eax)
        invoke ExitProcess, 0 

    invoke ExitProcess, 0 
end start
