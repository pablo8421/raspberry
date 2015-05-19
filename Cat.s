.globl main
main:
LDR R4 ,= _array
push {lr}
	BL getchar
	STRB R0, [R4]
_in_1:
	LDRB R5, [R4]
	CMP R5, #0
	BEQ _out_1
	LDR R0 ,= _char 
	LDRB R1, [R4]
	BL printf
	BL getchar
	STRB R0, [R4]
_out_1:
	LDRB R5, [R4]
	CMP R5, #0
	BNE _in_1
pop {pc}

.data
.align 4

_char: .asciz "%c"

_array: .space 30000
