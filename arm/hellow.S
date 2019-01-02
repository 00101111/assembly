// Data block
.data

hello:
	.asciz "Hello world"

.balign 4
return: .word 0

.balign 4
variable1:
	.word 0

.balign 4
variable2:
	.word 0

// Code block
.text

//.balign 4
.global main
main:
	ldr r1, addr_of_var1
	mov r3, #16
	str r3, [r1]
	ldr r2, addr_of_var2
	mov r3, #16
	str r3, [r2]

	ldr r1, addr_of_return
	str lr, [r1]

	ldr r0, addr_of_hello

	bl puts

	ldr r1, addr_of_var1
	ldr r1, [r1]
	ldr r2, addr_of_var2
	ldr r2, [r2]
	add r0, r1, r2
	ldr r1, addr_of_return
	ldr lr, [r1]
	bx lr

addr_of_var1: .word variable1
addr_of_var2: .word variable2
addr_of_hello: .word hello
addr_of_return: .word return

.global puts