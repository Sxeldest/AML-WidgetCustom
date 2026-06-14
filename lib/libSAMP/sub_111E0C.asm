; =========================================================
; Game Engine Function: sub_111E0C
; Address            : 0x111E0C - 0x111E56
; =========================================================

111E0C:  PUSH            {R4-R7,LR}
111E0E:  ADD             R7, SP, #0xC
111E10:  PUSH.W          {R11}
111E14:  SUB             SP, SP, #8
111E16:  MOV             R4, R0
111E18:  LDR             R0, [R0]
111E1A:  LDR             R0, [R0]
111E1C:  DMB.W           ISH
111E20:  CMP             R0, #1
111E22:  BEQ             loc_111E4A
111E24:  LDR             R0, [R4]
111E26:  MOV             R5, SP
111E28:  MOVS            R2, #0
111E2A:  MOVS            R6, #0
111E2C:  ADDS            R1, R0, #4
111E2E:  MOV             R0, R5
111E30:  BL              sub_111E56
111E34:  LDR             R0, [SP,#0x18+var_18]
111E36:  LDR             R1, [R4]
111E38:  STR             R0, [R4]
111E3A:  ADD             R0, SP, #0x18+var_14
111E3C:  STRD.W          R6, R1, [SP,#0x18+var_18]
111E40:  BL              sub_111E8A
111E44:  MOV             R0, R5
111E46:  BL              sub_111E8A
111E4A:  LDR             R0, [R4]
111E4C:  ADDS            R0, #4
111E4E:  ADD             SP, SP, #8
111E50:  POP.W           {R11}
111E54:  POP             {R4-R7,PC}
