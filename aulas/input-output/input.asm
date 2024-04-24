.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data
;input
inputString db 50 dup(0)
inputHandle dd 0
;output
outputHandle dd 0
console_count dd 0 
tamanho_string dd 0 
.code
start:

    invoke GetStdHandle, STD_INPUT_HANDLE
    mov inputHandle, eax
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov outputHandle, eax

    invoke ReadConsole, inputHandle, addr inputString, sizeof inputString, addr console_count, NULL
    invoke StrLen, addr inputString
    mov tamanho_string, eax
    invoke WriteConsole, outputHandle, addr inputString, tamanho_string, addr console_count, NULL

    ;push STD_OUTPUT_HANDLE
    ;call GetStdHandle ; handle de saída
    ;mov outputHandle, eax ; retorno disponível em eax
    ;invoke WriteConsole, outputHandle, addr output, sizeof output, addr write_count, NULL

invoke ExitProcess, 0
end start