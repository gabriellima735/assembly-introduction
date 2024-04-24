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

; IF

.data
    media dd 7
.code
start:
    ; ###### MAIN ######

    cmp media, 4 ; comparador
    JLE _AlunoAprovado

    JMP _AlunoReprovado

    ; ###### JUMPS ######

    _AlunoAprovado:
        printf("Aluno aprovado\n")
        invoke ExitProcess, 0 

    _AlunoReprovado:
        printf("Aluno reprovado\n")
        invoke ExitProcess, 0 

    invoke ExitProcess, 0 
end start
