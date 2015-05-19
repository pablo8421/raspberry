.globl main
main:
LDR R4 ,= _array
push {lr}
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
_in_8:
	LDRB R5, [R4]
	CMP R5, #0
	BEQ _out_8
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
_in_14:
	LDRB R5, [R4]
	CMP R5, #0
	BEQ _out_14
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	SUB R4, R4, #1
	SUB R4, R4, #1
	SUB R4, R4, #1
	SUB R4, R4, #1
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
_out_14:
	LDRB R5, [R4]
	CMP R5, #0
	BNE _out_14
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	ADD R4, R4, #1
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	ADD R4, R4, #1
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
_in_43:
	LDRB R5, [R4]
	CMP R5, #0
	BEQ _out_43
	SUB R4, R4, #1
_out_43:
	LDRB R5, [R4]
	CMP R5, #0
	BNE _out_43
	SUB R4, R4, #1
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
_out_8:
	LDRB R5, [R4]
	CMP R5, #0
	BNE _out_8
	ADD R4, R4, #1
	ADD R4, R4, #1
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	ADD R4, R4, #1
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	ADD R4, R4, #1
	ADD R4, R4, #1
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	SUB R4, R4, #1
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	SUB R4, R4, #1
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	SUB R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	ADD R4, R4, #1
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	ADD R4, R4, #1
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDRB R5, [R4]
	ADD R5, R5, #1
	STRB R5, [R4]
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
pop {pc}

.data
.align 4

_char: .asciz "%c"

_array: .space 30000
