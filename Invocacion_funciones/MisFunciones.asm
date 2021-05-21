	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	.CODE

; int Suma(int a, int b)
Suma PROC, a:DWORD, b:DWORD
	MOV EAX, [a]
	ADD EAX, [b]
	RET
Suma ENDP

BuscarCaracter PROC, pCad:DWORD, caracter:BYTE
	;las agerga el compilador
	;PUSH EBP				; guardar en la pila 
	;MOV EBP, ESP			; todos los registros utilizados
	MOV ECX, 0				; i = 0, contador ECX
	MOV EBX, -1				; ind = -1 EBX
	MOV ESI, [pCad]			; p = pCad - ESI <-- pCad
Ini_For:			
	MOV AL, [ESI]			; AL <-- *ESI[cont] 
	CMP AL, 0				; AL <-- 0  => z = 1 si AL <-- 0 == 0, z=0 si AL <-- 0 /= 0
	JE Fin_For
	CMP AL, [caracter]		; AL <-- Adr(c) => 0 -> z = 1, /= 0 z = 0
	JNE Fin_if				
	MOV EBX, ECX			; ind <-- i
	JMP Fin_For				; brack
Fin_if:
	INC ECX
	INC ESI
	JMP Ini_For
Fin_For:
	MOV EAX, EBX			; retun ind
	POP ESI					; Restaurar el estado 
	POP EBX					; de los registros
	POP ECX					; utilizados.
	;POP EBP; LEAVE - lo agrega el compilador.
	RET	8
BuscarCaracter ENDP

	END