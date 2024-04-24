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

    ; ###### Procedures

    _Soma Proc ; inicia procedimento
        push ebp
        mov ebp, esp

        ; soma -> eax
        xor eax, eax
        xor ebx, ebx

        _Loop:
            cmp ebx, 50
            JGE _FinalizarLoop ; if(ebx >= 50)

            add eax, ebx ; instrucao de soma
            add ebx, 1 ; incrementa contador
            JMP _Loop

        _FinalizarLoop:
            printf("%d\n", eax)

        mov esp, ebp
        pop ebp
        ret ; return
    _Soma Endp ; finaliza procedimento

start:

    call _Soma
    
    invoke ExitProcess, 0 
end start
