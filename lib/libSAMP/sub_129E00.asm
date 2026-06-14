; =========================================================
; Game Engine Function: sub_129E00
; Address            : 0x129E00 - 0x129E5E
; =========================================================

129E00:  PUSH            {R4-R7,LR}
129E02:  ADD             R7, SP, #0xC
129E04:  PUSH.W          {R11}
129E08:  MOV             R5, R1
129E0A:  MOV             R1, R0
129E0C:  LDR             R0, =(off_23496C - 0x129E14)
129E0E:  MOV             R4, R2
129E10:  ADD             R0, PC; off_23496C
129E12:  LDR             R6, [R0]; dword_23DEF4
129E14:  LDR             R0, [R6]
129E16:  LDR.W           R0, [R0,#0x3B0]
129E1A:  LDR             R2, [R0]
129E1C:  MOVW            R0, #0x13BC
129E20:  LDR             R0, [R2,R0]
129E22:  LDR             R0, [R0,#0x1C]
129E24:  LDR             R3, [R0,#0x5C]
129E26:  CMP             R3, R1
129E28:  BEQ             loc_129E50
129E2A:  MOV             R0, R2
129E2C:  MOVS            R2, #1
129E2E:  BL              sub_148F74
129E32:  MOVW            R1, #0xFFFF
129E36:  CMP             R0, R1
129E38:  BEQ             loc_129E56
129E3A:  LDR             R1, [R6]
129E3C:  LDR.W           R1, [R1,#0x3B0]
129E40:  LDR             R1, [R1]
129E42:  ADD.W           R0, R1, R0,LSL#2
129E46:  LDR             R0, [R0,#4]
129E48:  LDR             R0, [R0]
129E4A:  LDR.W           R0, [R0,#0x128]
129E4E:  CBZ             R0, loc_129E56
129E50:  STRD.W          R5, R4, [R0,#0x6C]
129E54:  B               loc_129E58
129E56:  MOVS            R0, #0
129E58:  POP.W           {R11}
129E5C:  POP             {R4-R7,PC}
