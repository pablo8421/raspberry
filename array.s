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


mostrarLista$:

	pop {R11}
	push {lr}
	MOV R4 , #0
	STR R4, [R11, #0]

while_0$:

	LDR R4, [R11, #0]
	MOV R5 , #5
	MOV R6, #0
	CMP R4, R5
	MOVLT R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_0$
	push {R11}
	MOV R4 , #'_'
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R11}
	LDR R4, [R11, #0]
	MOV R5 , #1
	ADD R6, R4, R5
	STR R6, [R11, #0]
	B while_0$

end_0$:

	push {R11}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R11}
	MOV R4 , #0
	STR R4, [R11, #0]

while_1$:

	LDR R4, [R11, #0]
	MOV R5 , #10
	MOV R6, #0
	CMP R4, R5
	MOVLT R6, #1
	MOV R1, #0
	CMP R6, R1
	BEQ end_1$
	push {R11}
	LDR R4, [R11, #0]
	MOV R2, #4
	MUL R5, R4, R2
	ADD R4, R5, #0
	MOV R1, #0
	MOV R3, #40
	MOV R1, R1
	MOV R2, R4
	MOV R3, R3
	CMP R1, R2
	BGT ERROR_INDEX_OUT_OF_BOUNDS$
	MOV R1, R2
	MOV R2, R3
	CMP R1, R2
	BGE ERROR_INDEX_OUT_OF_BOUNDS$
	LDR R5, [R12, R4]
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirInt_int$
	pop {R11}
	LDR R5, [R11, #0]
	MOV R6 , #1
	ADD R7, R5, R6
	STR R7, [R11, #0]
	B while_1$

end_1$:

	MOV R5 , #0
	STR R5, [R11, #0]

while_2$:

	LDR R5, [R11, #0]
	MOV R6 , #5
	MOV R7, #0
	CMP R5, R6
	MOVLT R7, #1
	MOV R1, #0
	CMP R7, R1
	BEQ end_2$
	push {R11}
	push {R4}
	MOV R5 , #'_'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	LDR R5, [R11, #0]
	MOV R6 , #1
	ADD R7, R5, R6
	STR R7, [R11, #0]
	B while_2$

end_2$:

	push {R11}
	push {R4}
	ADD R11, R11, #4
	push {R11}
	BL imprimirEspacio$
	pop {R4}
	pop {R11}
	pop {pc}

mensaje_boolean$:

	pop {R11}
	pop {R5}
	STR R5, [R11, #0]
	push {lr}
	LDR R5, [R11, #0]
	MOV R1, #0
	CMP R5, R1
	BEQ end_3$

if_3$:

	push {R11}
	push {R4}
	MOV R5 , #'I'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'n'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'d'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'i'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'c'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'e'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #':'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #' '
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}

end_3$:

	LDR R5, [R11, #0]
	CMP R5, #0
	MOVEQ R6, #1
	CMP R5, #1
	MOVEQ R6, #0
	MOV R1, #0
	CMP R6, R1
	BEQ end_4$

if_4$:

	push {R11}
	push {R4}
	MOV R5 , #'V'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'a'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'l'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'o'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #'r'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #':'
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	MOV R5 , #' '
	push {R5}
	ADD R11, R11, #4
	push {R11}
	BL imprimirChar_char$
	pop {R4}
	pop {R11}

end_4$:

	pop {pc}

main$:

	pop {R11}
	push {lr}
	MOV R5 , #1
	STR R5, [R11, #8]

while_5$:

	LDR R5, [R11, #8]
	MOV R1, #0
	CMP R5, R1
	BEQ end_5$
	push {R11}
	push {R4}
	MOV R5 , #1
	push {R5}
	ADD R11, R11, #12
	push {R11}
	BL mensaje_boolean$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL obtenerInt$
	pop {R5}
	pop {R4}
	pop {R11}
	STR R5, [R11, #0]
	push {R11}
	push {R4}
	MOV R5 , #0
	push {R5}
	ADD R11, R11, #12
	push {R11}
	BL mensaje_boolean$
	pop {R4}
	pop {R11}
	push {R11}
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL obtenerInt$
	pop {R5}
	pop {R4}
	pop {R11}
	STR R5, [R11, #4]
	LDR R5, [R11, #0]
	MOV R2, #4
	MUL R6, R5, R2
	ADD R5, R6, #0
	MOV R1, #0
	MOV R3, #40
	MOV R1, R1
	MOV R2, R5
	MOV R3, R3
	CMP R1, R2
	BGT ERROR_INDEX_OUT_OF_BOUNDS$
	MOV R1, R2
	MOV R2, R3
	CMP R1, R2
	BGE ERROR_INDEX_OUT_OF_BOUNDS$
	LDR R6, [R11, #4]
	STR R6, [R12, R5]
	push {R11}
	push {R4}
	ADD R11, R11, #12
	push {R11}
	BL mostrarLista$
	pop {R4}
	pop {R11}
	B while_5$

end_5$:

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
.space 8

_local$:
.space 1024
