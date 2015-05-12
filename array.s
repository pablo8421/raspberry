.globl main
main:
	LDR R11,=_local$
	LDR R12,=_global$
	push {lr}
	LDR R0 ,= _retorno
	STR lr , [R0]
	MOV R0, #0
	push {R11}
	BL main$
	pop {R4}
	BX R4


main$:

	pop {R11}
	push {lr}
	MOV R4 , #7
	STR R4, [R11, #4]
	MOV R4 , #4
	MOV R5 , R4
	MOV R6, #4
	ADD R6, R6, #24
	ADD R7, R6, #8
	MOV R2, #8
	MUL R6, R4, R2
	ADD R4, R7, R6
	MOV R1, #0
	MOV R2, #5
	MOV R1, R1
	MOV R2, R5
	MOV R3, R2
	CMP R1, R2
	BGT ERROR_INDEX_OUT_OF_BOUNDS$
	MOV R1, R2
	MOV R2, R3
	CMP R1, R2
	BLE ERROR_INDEX_OUT_OF_BOUNDS$
	MOV R5 , #4
	STR R5, [R11, R4]
	push {R11}
	MOV R4 , #4
	MOV R5 , R4
	MOV R6, #4
	ADD R6, R6, #24
	ADD R7, R6, #8
	MOV R2, #8
	MUL R6, R4, R2
	ADD R4, R7, R6
	MOV R1, #0
	MOV R2, #5
	MOV R1, R1
	MOV R2, R5
	MOV R3, R2
	CMP R1, R2
	BGT ERROR_INDEX_OUT_OF_BOUNDS$
	MOV R1, R2
	MOV R2, R3
	CMP R1, R2
	BLE ERROR_INDEX_OUT_OF_BOUNDS$
	LDR R5, [R11, R4]
	push {R5}
	push {R5}
	ADD R11, R11, #188
	push {R11}
	BL imprimirInt_int$
	pop {R4}
	pop {R11}
	pop {pc}

obtenerChar$:
	pop {R11}
	push {lr}
	BL getchar
	pop {R3}
	push {R0}
	LDR R12,=_global$
	MOV pc, R3

obtenerInt$:
	pop {R11}
	push {lr}
	LDR R0,=_scanFormato
	LDR R1,=_scanLugar
	BL scanf
	CMP R0, #0
	BEQ ERROR_INGRESO_ERRONEO$
	LDR R1,=_scanLugar
	LDR R0, [R1]
	pop {R3}
	push {R0}
	LDR R12,=_global$
	MOV pc, R3

imprimirChar_char$:
	pop {R11}
	pop {R1}
	push {lr}
	LDR R0 ,= _char
	BL printf
	LDR R12,=_global$
	pop {pc}

imprimirInt_int$:
	pop {R11}
	pop {R1}
	push {lr}
	LDR R0 ,= _int
	BL printf
	LDR R12,=_global$
	pop {pc}

imprimirEspacio$:
	pop {R11}
	push {lr}
	LDR R0 ,= _espacio
	BL printf
	LDR R12,=_global$
	pop {pc}

ERROR_INDEX_OUT_OF_BOUNDS$:

	LDR R0 ,= _index_fuera
	bl printf
	LDR R1 ,= _retorno
	LDR R0 , [R1]
	BX R0

ERROR_INGRESO_ERRONEO$:

	LDR R0 ,= _ingreso_erroneo
	bl printf
	LDR R1 ,= _retorno
	LDR R0 , [R1]
	BX R0

.data
.align 4

_retorno:
.word
.word
_index_fuera:
.asciz " a una lista se le paso el indice %d < %d fuera de su tamanio\n"

_ingreso_erroneo:
.asciz "No se ingreso un numero en el formato pedido\n"

_int:
.asciz "%d\n"

_char:
.asciz "%c"

_espacio:
.asciz "\n"

_scanFormato:
.asciz "%d"

_scanLugar:
.word

_global$:
.space 2

_local$:
.space 1024
