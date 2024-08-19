; This program takes a string and reverses the order of the characters.
; Kylie Heiland
; 10/4/22

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
    source BYTE "This is the string that will be reversed",0
    target BYTE SIZEOF source DUP('#')
     
.code
main proc	
    mov esi,OFFSET target - 2   ; index register for source
    mov edi,0   ; index register for target
    mov ecx,SIZEOF source   ; loop counter
LOOPM:
    mov al,source[esi]  ; gets character from source
    mov target[esi],al  ; stores the character in target
    dec esi ; moves to the next character
    loop LOOPM
	invoke ExitProcess,0
main endp
end main