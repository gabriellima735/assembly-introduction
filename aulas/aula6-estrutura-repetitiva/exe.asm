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

; ###### FOR ######

.data
    contador dd 0
.code
start:
    ; ###### MAIN ######
    _InicioLoop:
        mov contador, 0 ; zerar contador

    _CorpoLoop:

        cmp contador, 50
        JGE _FinalLoop

        ; Faz algo
        printf("Contador [ %d ] \n", contador)

        ; Incrementa contador
        add contador, 1

        ;reiniciar loop
        JMP _CorpoLoop

    _FinalLoop:
        invoke ExitProcess, 0 

    invoke ExitProcess, 0 
end start
