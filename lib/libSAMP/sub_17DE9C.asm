; =========================================================
; Game Engine Function: sub_17DE9C
; Address            : 0x17DE9C - 0x17DEFA
; =========================================================

17DE9C:  PUSH            {R4-R7,LR}
17DE9E:  ADD             R7, SP, #0xC
17DEA0:  PUSH.W          {R8-R11}
17DEA4:  SUB             SP, SP, #4
17DEA6:  CBZ             R2, loc_17DEEC
17DEA8:  LDR.W           R10, [R7,#arg_0]
17DEAC:  MOV             R8, R3
17DEAE:  LDR             R4, [R0]
17DEB0:  MOV             R5, R2
17DEB2:  MOV             R6, R1
17DEB4:  MOV             R9, R0
17DEB6:  MOV.W           R11, #0
17DEBA:  MOV             R0, R6
17DEBC:  BL              sub_17D884
17DEC0:  CMP             R0, #0
17DEC2:  MOV.W           R0, #8
17DEC6:  IT NE
17DEC8:  MOVNE           R0, #0xC
17DECA:  LDR             R4, [R4,R0]
17DECC:  LDR             R0, [R4,#8]
17DECE:  CBNZ            R0, loc_17DEE6
17DED0:  LDR             R0, [R4,#0xC]
17DED2:  CBNZ            R0, loc_17DEE6
17DED4:  CMP             R11, R8
17DED6:  ITT CC
17DED8:  LDRBCC          R0, [R4]
17DEDA:  STRBCC.W        R0, [R10,R11]
17DEDE:  LDR.W           R4, [R9]
17DEE2:  ADD.W           R11, R11, #1
17DEE6:  SUBS            R5, #1
17DEE8:  BNE             loc_17DEBA
17DEEA:  B               loc_17DEF0
17DEEC:  MOV.W           R11, #0
17DEF0:  MOV             R0, R11
17DEF2:  ADD             SP, SP, #4
17DEF4:  POP.W           {R8-R11}
17DEF8:  POP             {R4-R7,PC}
