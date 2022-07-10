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

intro_1   BYTE    "Hi, my name is Zac and this is my Project One Simple MASM Program!", 0	; data for introduction
intro_2   BYTE    "Instructions:", 0														; data for instructions
intro_3   BYTE    "You are going to enter three numbers (A, B, C) in descending order.", 0  ; data for instructions
intro_4   BYTE    "This program will calculate the following calculations:", 0              ; data for instructions
intro_5   BYTE    "    A+B, A-B, A+C, A-C, B+C, B-C, A+B+C", 0								; data for instructions

prompt_A  BYTE    "Please enter what number you would like A to equal (Remember, this must be the largets number of the three!)", 0		; User Prompt for A
prompt_B  BYTE	  "Please enter what number you would like B to equal (Remember, this must be smaller than A and larger than C!)", 0	; User Prompt for B
prompt_C  BYTE	  "Please enter what number you would like C to equal (Remember, this must be the smallest number of the three!)", 0	; User Prompt for C

inputA	  DWORD   ?		; Stores user input for A 
inputB	  DWORD	  ?		; Stores user input for B
inputC	  DWORD	  ?		; Stores user input for C

result_0  BYTE    "HERE ARE YOUR RESULTS: ", 0
result_1  BYTE    "A + B = ", 0					; data for displaying equation text before result
result_2  BYTE    "A - B = ", 0					; data for displaying equation text before result
result_3  BYTE    "A + C = ", 0					; data for displaying equation text before result
result_4  BYTE    "A - C = ", 0					; data for displaying equation text before result
result_5  BYTE    "B + C = ", 0					; data for displaying equation text before result
result_6  BYTE    "B - C = ", 0					; data for displaying equation text before result
result_7  BYTE    "A + B + C = ", 0				; data for displaying equation text before result

APlusB    DWORD    ?							; stores result for A + B
AMinusB   DWORD    ?							; stores result for A - B
APlusC    DWORD    ?							; stores result for A + C
AMinusC   DWORD    ?							; stores result for A - C
BPlusC    DWORD    ?							; stores result for B + C
BMinusC   DWORD    ?							; stores result for B - C
ABCPlus   DWORD    ?							; stores result for A + B + C

outro_1	  BYTE    "THANK YOU FOR RUNNING MY PROGRAM!", 0	; data for closing message

.code
main PROC
; -------------------INTRODUCTION-------------------

;-Display your name and program title on the output screen.
mov     EDX, OFFSET intro_1
call    WriteString
call    CrLf

;-Display instructions for the user.
mov     EDX, OFFSET intro_2
call    WriteString
call    CrLf

mov     EDX, OFFSET intro_3
call    WriteString
call    CrLf

mov     EDX, OFFSET intro_4
call    WriteString
call    CrLf

mov     EDX, OFFSET intro_5
call    WriteString
call    CrLf


; -------------------GET THE DATA-------------------


;-Prompt the user to enter three numbers (A, B, C) in strictly descending order.(so that we don't end up with negative numbers in the subtraction)
; (A)
mov     EDX, OFFSET prompt_A
call    WriteString
; pre-conditions of ReadDec: NONE
call    ReadDec
; post-conditions of ReadDec: Value is saved in EAX
mov     inputA, EAX

; (B)
mov     EDX, OFFSET prompt_B
call    WriteString
; pre-conditions of ReadDec: NONE
call    ReadDec
; post-conditions of ReadDec: Value is saved in EAX
mov     inputB, EAX

; (C)
mov     EDX, OFFSET prompt_C
call    WriteString
; pre-conditions of ReadDec: NONE
call    ReadDec
; post-conditions of ReadDec: Value is saved in EAX
mov     inputC, EAX


; -------------------CALCULATE THE REQUIRED VALUES-------------------


;-Calculate and display the sums and differences: (A+B, A-B, A+C, A-C, B+C, B-C, A+B+C).
mov    EDX, OFFSET result_0
call   WriteString
call   CrLf

; (A+B)
mov    EAX, inputA
add    EAX, inputB
mov    APlusB, EAX

; (A-B)
mov    EDX, OFFSET result_2
call   WriteString

mov    EAX, inputA
sub    EAX, inputB
call   WriteDec
call CrLf

; (A+C)
mov    EDX, OFFSET result_3
call   WriteString

mov    EAX, inputA
add    EAX, inputC
call   WriteDec
call CrLf

; (A-C)
mov    EDX, OFFSET result_4
call   WriteString

mov    EAX, inputA
sub    EAX, inputC
call   WriteDec
call CrLf

; (B+C)
mov    EDX, OFFSET result_5
call   WriteString

mov    EAX, inputB
add    EAX, inputC
call   WriteDec
call CrLf

; (B-C)
mov    EDX, OFFSET result_6
call   WriteString

mov    EAX, inputB
sub    EAX, inputC
call   WriteDec
call CrLf

; (A+B+C)
mov    EDX, OFFSET result_7
call   WriteString

mov    EAX, inputA
add    EAX, inputB
add    EAX, inputC
call   WriteDec
call CrLf


; -------------------DISPLAY THE RESULTS-------------------
; (A + B)
mov    EDX, OFFSET result_1
call   WriteString

mov    EAX, APlusB
call   WriteDec
call CrLf


; -------------------SAY GOODBYE-------------------


;-Display a closing message.
mov     EDX, OFFSET outro_1
call    WriteString
call    CrLf


	Invoke ExitProcess,0	; exit to operating system
main ENDP

; (insert additional procedures here)

END main
