; =========================================================
; Game Engine Function: sub_E1E10
; Address            : 0xE1E10 - 0xE1E6A
; =========================================================

E1E10:  PUSH            {R4-R7,LR}
E1E12:  ADD             R7, SP, #0xC
E1E14:  PUSH.W          {R11}
E1E18:  MOV             R2, R0
E1E1A:  LDR             R0, =(unk_91CE0 - 0xE1E26)
E1E1C:  MOV             R5, R1
E1E1E:  LDRH.W          R1, [R1,#9]
E1E22:  ADD             R0, PC; unk_91CE0
E1E24:  LDR.W           R4, [R5],#0xB
E1E28:  AND.W           R1, R1, #0xF
E1E2C:  LDR             R6, [R7,#arg_0]
E1E2E:  SUBS            R3, R4, R3
E1E30:  LDRB            R0, [R0,R1]
E1E32:  IT CC
E1E34:  MOVCC           R3, #0
E1E36:  LSRS.W          R1, R3, R0
E1E3A:  SUB.W           R4, R3, R1
E1E3E:  BEQ             loc_E1E4A
E1E40:  MOV             R0, R2
E1E42:  MOV             R2, R5
E1E44:  BL              sub_DD992
E1E48:  MOV             R2, R0
E1E4A:  MOV             R0, R6
E1E4C:  MOV             R1, R2
E1E4E:  BL              sub_E1D84
E1E52:  CBZ             R4, loc_E1E64
E1E54:  MOV             R1, R4
E1E56:  MOV             R2, R5
E1E58:  POP.W           {R11}
E1E5C:  POP.W           {R4-R7,LR}
E1E60:  B.W             sub_DD992
E1E64:  POP.W           {R11}
E1E68:  POP             {R4-R7,PC}
