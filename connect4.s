/***************************************************************
Universidad del Valle de Guatemala
Authors: Josue David Valenzuela 171001
		 Marcos Gutierrez	    17699
Two player connect 4 game developed as part of CC3055 course
File contains subroutines for the connect 4 game.
***************************************************************/

.data
.align 2
@Message strings
inputMessage: .asciz "Judador %d: Ingrese el numero de columna (1, 2, 3, 4): \n"
@Input formats
inputColumn: .asciz "%d"
@Saved data
currentColumn: .word 0

.text
.align 2

/**
 * Player input
 * Param r0: player number (1 or 2)
 * Return: column number on r0
 */
 .global input
 input:
 	push {lr} @Save the link register
 	mov r1, r0 @Move the param value to r1
 	ldr r0, =inputMessage @Load input message
	bl printf @Display message
	ldr r0, =inputColumn @load input format
	ldr r1, =currentColumn @Load addres to store input
	bl scanf @Store the inpur
	ldr r0, =currentColumn @Load input adress
	ldr r0, [r0] @Load input value
	pop {lr} @Retrieve link register
	mov pc, lr @Return r0


