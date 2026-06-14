; =========================================================
; Game Engine Function: sub_121A0C
; Address            : 0x121A0C - 0x121A4C
; =========================================================

121A0C:  PUSH            {R7,LR}
121A0E:  MOV             R7, SP
121A10:  LDR             R0, =(byte_2639A8 - 0x121A16)
121A12:  ADD             R0, PC; byte_2639A8
121A14:  LDRB            R0, [R0]
121A16:  DMB.W           ISH
121A1A:  LSLS            R0, R0, #0x1F
121A1C:  IT NE
121A1E:  POPNE           {R7,PC}
121A20:  LDR             R0, =(byte_2639A8 - 0x121A26)
121A22:  ADD             R0, PC; byte_2639A8 ; __guard *
121A24:  BLX             j___cxa_guard_acquire
121A28:  CBZ             R0, locret_121A4A
121A2A:  LDR             R1, =(unk_263990 - 0x121A36)
121A2C:  MOVS            R3, #0
121A2E:  LDR             R0, =(sub_11BEB8+1 - 0x121A38)
121A30:  LDR             R2, =(off_22A540 - 0x121A3A)
121A32:  ADD             R1, PC; unk_263990 ; obj
121A34:  ADD             R0, PC; sub_11BEB8 ; lpfunc
121A36:  ADD             R2, PC; off_22A540 ; lpdso_handle
121A38:  STR             R3, [R1,#(dword_2639A0 - 0x263990)]
121A3A:  BLX             __cxa_atexit
121A3E:  LDR             R0, =(byte_2639A8 - 0x121A44)
121A40:  ADD             R0, PC; byte_2639A8
121A42:  POP.W           {R7,LR}
121A46:  B.W             sub_2242B0
121A4A:  POP             {R7,PC}
