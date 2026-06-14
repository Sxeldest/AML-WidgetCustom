; =========================================================
; Game Engine Function: sub_125A14
; Address            : 0x125A14 - 0x125A72
; =========================================================

125A14:  PUSH            {R4-R7,LR}
125A16:  ADD             R7, SP, #0xC
125A18:  PUSH.W          {R8-R10}
125A1C:  SUB             SP, SP, #8
125A1E:  LDR             R5, =(dword_263C34 - 0x125A2A)
125A20:  MOV             R10, R1
125A22:  MOV             R6, R0
125A24:  MOV             R4, R3
125A26:  ADD             R5, PC; dword_263C34
125A28:  MOV             R8, R2
125A2A:  LDR             R0, [R5]
125A2C:  LDR             R1, =(aAxl - 0x125A32); "AXL" ...
125A2E:  ADD             R1, PC; "AXL"
125A30:  CBZ             R0, loc_125A4A
125A32:  LDR             R2, =(aChandlinghookI - 0x125A3A); "CHandlingHook: Instance of CHandlingHoo"... ...
125A34:  MOVS            R0, #4; prio
125A36:  ADD             R2, PC; "CHandlingHook: Instance of CHandlingHoo"...
125A38:  BLX             __android_log_print
125A3C:  MOV             R1, R6
125A3E:  MOV             R2, R10
125A40:  MOV             R3, R8
125A42:  STR             R4, [SP,#0x20+var_20]
125A44:  BL              sub_1246CC
125A48:  B               loc_125A68
125A4A:  LDR             R2, =(aChandlinghookC_3 - 0x125A52); "CHandlingHook: Create new instance of C"... ...
125A4C:  MOVS            R0, #4; prio
125A4E:  ADD             R2, PC; "CHandlingHook: Create new instance of C"...
125A50:  BLX             __android_log_print
125A54:  MOVS            R0, #1; unsigned int
125A56:  BLX             j__Znwj; operator new(uint)
125A5A:  MOV             R9, R0
125A5C:  MOV             R1, R6
125A5E:  MOV             R2, R10
125A60:  MOV             R3, R8
125A62:  STR             R4, [SP,#0x20+var_20]
125A64:  BL              sub_124358
125A68:  LDR             R0, [R5]
125A6A:  ADD             SP, SP, #8
125A6C:  POP.W           {R8-R10}
125A70:  POP             {R4-R7,PC}
