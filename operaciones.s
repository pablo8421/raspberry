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


operacion_int$:

	pop {R11}
	pop {R4}
	STR R4, [R11, #0]
	push {lr}
	LDR R4, [R11, #0]
	MOV R5 , #0
	MOV R6, #0
	CMP R4, R5
	MOVEQ R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_0$

if_0$:

	push {R11}
	MOV R4 , #'S'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'U'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'M'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R11}

end_0$:

	LDR R4, [R11, #0]
	MOV R5 , #1
	MOV R6, #0
	CMP R4, R5
	MOVEQ R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_1$

if_1$:

	push {R11}
	MOV R4 , #'R'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'E'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'S'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R11}

end_1$:

	LDR R4, [R11, #0]
	MOV R5 , #2
	MOV R6, #0
	CMP R4, R5
	MOVEQ R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_2$

if_2$:

	push {R11}
	MOV R4 , #'M'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'U'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'L'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R11}

end_2$:

	LDR R4, [R11, #0]
	MOV R5 , #3
	MOV R6, #0
	CMP R4, R5
	MOVEQ R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_3$

if_3$:

	push {R11}
	MOV R4 , #'D'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'I'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'V'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R11}

end_3$:

	LDR R4, [R11, #0]
	MOV R5 , #4
	MOV R6, #0
	CMP R4, R5
	MOVEQ R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_4$

if_4$:

	push {R11}
	MOV R4 , #'M'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'O'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'D'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R11}

end_4$:

	LDR R4, [R11, #0]
	MOV R5 , #5
	MOV R6, #0
	CMP R4, R5
	MOVEQ R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_5$

if_5$:

	push {R11}
	MOV R4 , #'N'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'E'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	MOV R4 , #'G'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R11}

end_5$:

	pop {pc}

main$:

	pop {R11}
	push {lr}
	MOV R4 , #0
	STR R4, [R11, #0]
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #0]

while_6$:

	LDR R4, [R11, #0]
	LDR R5, [R12, #0]
	MOV R6, #0
	CMP R4, R5
	MOVLT R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_6$
	push {R11}
	LDR R4, [R11, #0]
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	LDR R4, [R11, #0]
	MOV R5 , #1
	ADD R6, R4, R5
	STR R6, [R11, #0]
	B while_6$

end_6$:

	push {R11}
	MOV R4 , #0
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL operacion_int$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #0]
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #4]
	push {R11}
	LDR R4, [R12, #0]
	LDR R5, [R12, #4]
	ADD R6, R4, R5
	push {R6}
	ADD R11, R11, #4
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	MOV R4 , #1
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL operacion_int$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #0]
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #4]
	push {R11}
	LDR R4, [R12, #0]
	LDR R5, [R12, #4]
	SUB R6, R4, R5
	push {R6}
	ADD R11, R11, #4
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	MOV R4 , #2
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL operacion_int$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #0]
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #4]
	push {R11}
	LDR R4, [R12, #0]
	LDR R5, [R12, #4]
	MOV R2, R5
	MUL R6, R4, R2
	push {R6}
	ADD R11, R11, #4
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	MOV R4 , #3
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL operacion_int$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #0]
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #4]
	push {R11}
	LDR R4, [R12, #0]
	LDR R5, [R12, #4]
	MOV R1, R4
	MOV R2, R5
	BL _div$
	MOV R6, R0
	push {R6}
	ADD R11, R11, #4
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	MOV R4 , #4
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL operacion_int$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #0]
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #4]
	push {R11}
	LDR R4, [R12, #0]
	LDR R5, [R12, #4]
	MOV R1, R4
	MOV R2, R5
	BL _mod$
	MOV R6, R0
	push {R6}
	ADD R11, R11, #4
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	push {R11}
	MOV R4 , #5
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL operacion_int$
	pop {R11}
	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL obtenerInt$
	pop {R4}
	pop {R11}
	STR R4, [R12, #0]
	push {R11}
	LDR R4, [R12, #0]
	MOV R5, #-1
	MUL R5, R4, R5
	push {R5}
	ADD R11, R11, #4
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
.space 16

_global$:
.space 12

_local$:
.space 1024
