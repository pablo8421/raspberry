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
	push {R11}
	ADD R11, R11, #12
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #4]
	push {R11}
	ADD R11, R11, #12
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #8]
	push {R11}
	ADD R11, R11, #12
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #12]
	push {R11}
	ADD R11, R11, #12
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R11, #0]
	push {R11}
	LDR R4, [R12, #4]
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	LDR R4, [R12, #8]
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	LDR R4, [R12, #12]
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	LDR R4, [R11, #0]
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	LDR R4, [R11, #4]
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	LDR R4, [R11, #8]
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	pop {pc}

_div$:
	push {lr}
	MOV R0, #0
	_divRep$:
	CMP R1, R2
	BLT _divFin$
	SUB R1, R1, R2
	ADD R0, R0, #1
	B _divRep$
	_divFin$:
	pop {pc}

_mod$:
	push {lr}
	MOV R0, #0
	_modRep$:
	CMP R1, R2
	BLT _modFin$
	SUB R1, R1, R2
	ADD R0, R0, #1
	B _modRep$
	_modFin$:
	MOV R0, R1
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
.space 20

_local$:
.space 1024
