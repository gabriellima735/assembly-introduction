.686
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc
include \masm32\include\masm32.inc
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\masm32.lib

.data?

    integer1 dword ?

.data

    message db "O dobro eh ", 0H
    request db "Digite o numero: ", 0H
    newLine db 0AH

    inputString db 10 dup(0)
    outputString db 10 dup(0)

    inputHandle dd 0
    outputHandle dd 0

    console_count dd 0
    tam_outputString dd 0

.code
start:

    invoke GetStdHandle, STD_INPUT_HANDLE
    mov inputHandle, eax
    invoke GetStdHandle, STD_OUTPUT_HANDLE
    mov outputHandle, eax

    invoke WriteConsole, outputHandle, addr request, sizeof request, addr console_count, NULL

    invoke ReadConsole, inputHandle, addr inputString, sizeof inputString, addr console_count, NULL

    mov esi, offset inputString ; Armazenar apontador da string em esi
    proximo:
        mov al, [esi] ; Mover caractere atual para al
        inc esi ; Apontar para o proximo caractere
        cmp al, 48 ; Verificar se eh o caractere ASCII CR - FINALIZAR
        jl terminar
        cmp al, 58
        jl proximo
    terminar:
        dec esi ; Apontar para caractere anterior, onde o CR foi encontrado
        xor al, al ; ASCII 0, terminado de string
        mov [esi], al ; Inserir ASCII 0 no lugar do ASCII CR
    
    invoke atodw, addr inputString
    mov integer1, eax
    
    add eax, eax

    invoke dwtoa, eax, addr outputString

    invoke StrLen, addr outputString
    mov tam_outputString, eax

    invoke WriteConsole, outputHandle, addr message, sizeof message, addr console_count, NULL
    invoke WriteConsole, outputHandle, addr outputString, sizeof outputString, addr console_count, NULL
    invoke WriteConsole, outputHandle, addr newLine, sizeof newLine, addr console_count, NULL

invoke ExitProcess, 0
end start