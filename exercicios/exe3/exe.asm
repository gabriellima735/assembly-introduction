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
;numéricas inteiras e imprima o maior dentre os 
;dois números informados. Se os valores forem iguais, 
;o programa pode imprimir qualquer uma das variáveis

.data
   
    aa dd 9
    bb dd 9

.code
start:

    mov eax, aa
    mov ebx, bb
    cmp eax, ebx
    JGE _AMaior

    JMP _BMaior

    ; ###### JUMPS ######

    _AMaior:
        printf("a: %d \n", eax)
        invoke ExitProcess, 0 

    _BMaior:
        printf("b: %d \n", ebx)
        invoke ExitProcess, 0 

    _FIM:
    invoke ExitProcess, 0
end start
