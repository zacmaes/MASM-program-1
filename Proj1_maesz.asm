TITLE Project One Simple MASM Program     (Proj1_maesz.asm)

; Author: Zachary Maes
; Last Modified: July 10, 2022
; OSU email address: maesz@oregonstate.edu
; Course number/section:   CS271 Section 400
; Project Number:  Project 01    Due Date: July 10, 2022
; Description:
;	Write and test a MASM program to perform the following tasks:
;		-Display your name and program title on the output screen.
;		-Display instructions for the user.
;		-Prompt the user to enter three numbers (A, B, C) in strictly descending order.
;		-Calculate and display the sum and differences: (A+B, A-B, A+C, A-C, B+C, B-C, A+B+C).
;		-Display a closing message.

INCLUDE Irvine32.inc

; (insert macro definitions here)

; (insert constant definitions here)

.data

; (insert variable definitions here)

intro_1   BYTE    "Hi, my name is Zac and this is my Project One Simple MASM Program!", 0		; data for introduction
intro_2   BYTE    "Instructions: You are going to enter three numbers (A, B, C) in descending order. This program will calculate the following calculations:", 0  ; data for instructions
intro_3   BYTE    "A+B, A-B, A+C, A-C, B+C, B-C, A+B+C", 0  ; data for instructions

prompt_A  BYTE    "Please enter what number you would like A to equal (Remember, this must be the largets number of the three!)", 0
prompt_B  BYTE	  "Please enter what number you would like B to equal (Remember, this must be smaller than A and larger than C!)", 0
prompt_C  BYTE	  "Please enter what number you would like C to equal (Remember, this must be the smallest number of the three!)", 0

;----------------------------------------------------
inputA	  DWORD   ?	; DO I EVEN NEED THIS??? 
inputB	  DWORD	  ?	; DO I EVEN NEED THIS???
inputC	  DWORD	  ? ; DO I EVEN NEED THIS???
;----------------------------------------------------

; data for calculating and saving calculations???

aPlusB	  DWORD	  ? ; DO I EVEN NEED THIS???
aMinusB	  DWORD	  ? ; DO I EVEN NEED THIS???
	; this would continue on for all if needed...

;----------------------------------------------------

result_1  BYTE    "A + B = ", 0			; data for displaying calculations
result_2  BYTE    "A - B = ", 0			; data for displaying calculations
result_3  BYTE    "A + C = ", 0			; data for displaying calculations
result_4  BYTE    "A - C = ", 0			; data for displaying calculations
result_5  BYTE    "B + C = ", 0			; data for displaying calculations
result_6  BYTE    "B - C = ", 0			; data for displaying calculations
result_7  BYTE    "A + B + C = ", 0     ; data for displaying calculations

;----------------------------------------------------

outro_1	  BYTE    "THANK YOU FOR RUNNING MY PROGRAM!", 0	; data for closing message


.code
main PROC

;-Display your name and program title on the output screen.
mov     EDX, OFFSET intro_1
call    WriteString
call    CrLf
;-Display instructions for the user.
;-Prompt the user to enter three numbers (A, B, C) in strictly descending order.(so that we don't end up with negative numbers in the subtraction)
;-Calculate and display the sum and differences: (A+B, A-B, A+C, A-C, B+C, B-C, A+B+C).
;-Display a closing message.


	Invoke ExitProcess,0	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
