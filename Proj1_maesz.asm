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

; data needed for title???
; data needed for instructions???
; userInputA
; userInputB
; userInputC
; data for calculating and saving calculations???
; data for displaying calculations???
; data for closing message???
.code
main PROC

; (insert executable instructions here)
;-Display your name and program title on the output screen.
;-Display instructions for the user.
;-Prompt the user to enter three numbers (A, B, C) in strictly descending order.
;-Calculate and display the sum and differences: (A+B, A-B, A+C, A-C, B+C, B-C, A+B+C).
;-Display a closing message.


	Invoke ExitProcess,0	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
