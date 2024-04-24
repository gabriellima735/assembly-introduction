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

; 6. Escreva um programa que receba um 
;array de 10 números inteiros de dois bytes (tipo WORD) 
;e que exiba o valor da soma desses 10 números.

.data

    array DWORD 10, 20, 30, 40, 50, 60, 70, 80, 90, 100
    arraySize DWORD 10
    somatorio DWORD 0

.code
start:

    mov esi, OFFSET array

    mov eax, [esi]
    add somatorio, eax

    mov eax, [esi + 4]
    add somatorio, eax

    mov eax, [esi + 8]
    add somatorio, eax

    mov eax, [esi + 12]
    add somatorio, eax

    mov eax, [esi + 16]
    add somatorio, eax

    mov eax, [esi + 20]
    add somatorio, eax

    mov eax, [esi + 24]
    add somatorio, eax

    mov eax, [esi + 28]
    add somatorio, eax

    mov eax, [esi + 22]
    add somatorio, eax

    mov eax, [esi + 26]
    add somatorio, eax

    printf("%d", somatorio)

    invoke ExitProcess, 0
end start
