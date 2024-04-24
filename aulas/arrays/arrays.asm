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
array DWORD 10, 20, 30, 40, 50    ; Declara e inicializa um array de DWORD com 5 elementos
; tem o DWORD (4bytes) e o DWORD (2bytes)
.code
main PROC
    MOV ESI, OFFSET array    ; Move o endereço base do array para o registrador ESI

    ; Agora, você pode acessar os elementos do array usando o registrador ESI e o deslocamento
    ; por exemplo, para acessar o primeiro elemento do array, você faria:
    MOV EAX, [ESI]            ; Move o valor do primeiro elemento para o registrador EAX
    printf("0: %d ", eax)

    ; Para acessar o segundo elemento do array, você faria:
    MOV EAX, [ESI + 4]        ; Como DWORD tem 4 bytes de tamanho, você adiciona 4 ao endereço base
    printf("1: %d ", eax)

    ; E assim por diante, para acessar os elementos restantes, você adicionaria múltiplos de 4 ao endereço base.

    ; Seu código continua aqui...

main ENDP
END main
