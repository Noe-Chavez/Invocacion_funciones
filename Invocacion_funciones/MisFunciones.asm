	.386
	.MODEL flat, C

	.STACK 2560

	.DATA

	.CODE

; int Suma(int a, int b)
Suma PROC, a:DWORD, b:DWORD
	MOV EAX, a
	ADD EAX, b
	RET
Suma ENDP
	END