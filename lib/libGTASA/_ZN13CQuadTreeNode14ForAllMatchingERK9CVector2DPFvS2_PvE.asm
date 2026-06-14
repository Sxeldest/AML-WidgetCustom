; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode14ForAllMatchingERK9CVector2DPFvS2_PvE
; Address            : 0x40E136 - 0x40E1C4
; =========================================================

40E136:  PUSH            {R4-R7,LR}
40E138:  ADD             R7, SP, #0xC
40E13A:  PUSH.W          {R8}
40E13E:  VPUSH           {D8}
40E142:  VMOV.F32        S16, #0.5
40E146:  MOV             R4, R2
40E148:  MOV             R5, R1
40E14A:  MOV             R8, R0
40E14C:  LDR.W           R6, [R8,#0x10]
40E150:  CBZ             R6, loc_40E15E
40E152:  LDR             R1, [R6]
40E154:  MOV             R0, R5
40E156:  BLX             R4
40E158:  LDR             R6, [R6,#4]
40E15A:  CMP             R6, #0
40E15C:  BNE             loc_40E152
40E15E:  LDR.W           R0, [R8,#0x24]
40E162:  CBZ             R0, loc_40E1BA
40E164:  VLDR            S2, [R8,#4]
40E168:  MOVS            R0, #2
40E16A:  VLDR            S6, [R8,#0xC]
40E16E:  MOVS            R1, #3
40E170:  VLDR            S0, [R8]
40E174:  VADD.F32        S2, S6, S2
40E178:  VLDR            S6, [R5,#4]
40E17C:  VLDR            S4, [R8,#8]
40E180:  VADD.F32        S0, S0, S4
40E184:  VLDR            S4, [R5]
40E188:  VMUL.F32        S2, S2, S16
40E18C:  VMUL.F32        S0, S0, S16
40E190:  VCMPE.F32       S6, S2
40E194:  VMRS            APSR_nzcv, FPSCR
40E198:  VCMPE.F32       S4, S0
40E19C:  IT GE
40E19E:  MOVGE           R0, #0
40E1A0:  IT GE
40E1A2:  MOVGE           R1, #1
40E1A4:  VMRS            APSR_nzcv, FPSCR
40E1A8:  IT LT
40E1AA:  MOVLT           R1, R0
40E1AC:  ADD.W           R0, R8, R1,LSL#2
40E1B0:  LDR.W           R8, [R0,#0x14]
40E1B4:  CMP.W           R8, #0
40E1B8:  BNE             loc_40E14C
40E1BA:  VPOP            {D8}
40E1BE:  POP.W           {R8}
40E1C2:  POP             {R4-R7,PC}
