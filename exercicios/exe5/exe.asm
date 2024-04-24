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

; 5. Escreva um programa que exiba na console 
; os números entre 1000 e 1999 que divididos por 11 dão resto 5.

; Dividendo |_Divisor
; Resto      Quociente

.data

    contador dd 1000
    resto dd 0
    divisao dd 0

.code
start:
    
    _CorpoLoop: ; Iniciar Loop

        cmp contador, 2000
        JGE _FinalLoop

        ;printf("Contador [ %d ] \n", contador)

        ; Dividendo |_Divisor
        ; Resto      Quociente

        mov eax, contador
        mov ebx, 11
        xor edx, edx
        div ebx ;divisor => resultado em EAX, => resto da divisao EDX
        
        mov divisao, eax
        mov resto, edx
        ;printf("    RESTO: %d\n\n", resto)
        
        sub edx, 5

        mov eax, contador
        cmp edx, 0
        JE _RestoCinco

        _ContinuaLoop:
        
        add contador, 1  ; Incrementa contador
        JMP _CorpoLoop ; Reiniciar Loop
    
    _FinalLoop:
        invoke ExitProcess, 0

    _RestoCinco:
        printf(" %d -", eax)
        JMP _ContinuaLoop

    invoke ExitProcess, 0
end start
