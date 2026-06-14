; =========================================================
; Game Engine Function: sub_174194
; Address            : 0x174194 - 0x174204
; =========================================================

174194:  PUSH            {R4-R7,LR}
174196:  ADD             R7, SP, #0xC
174198:  PUSH.W          {R8}
17419C:  SUB             SP, SP, #8
17419E:  CMP.W           R3, #0x1000000
1741A2:  BCC             loc_1741DC
1741A4:  VLDR            S0, [R7,#arg_0]
1741A8:  MOV             R4, R3
1741AA:  MOV             R8, R2
1741AC:  MOV             R6, R1
1741AE:  VCMP.F32        S0, #0.0
1741B2:  MOV             R5, R0
1741B4:  VMRS            APSR_nzcv, FPSCR
1741B8:  BLE             loc_1741E4
1741BA:  VMOV            R3, S0
1741BE:  LDR             R0, [R7,#arg_4]
1741C0:  STR             R0, [SP,#0x18+var_18]
1741C2:  MOV             R0, R5
1741C4:  MOV             R1, R6
1741C6:  MOV             R2, R8
1741C8:  BL              sub_173CBC
1741CC:  LDR             R2, [R5,#0x58]
1741CE:  MOV             R0, R5
1741D0:  LDR             R1, [R5,#0x60]
1741D2:  MOV             R3, R4
1741D4:  BL              sub_173720
1741D8:  MOVS            R0, #0
1741DA:  STR             R0, [R5,#0x58]
1741DC:  ADD             SP, SP, #8
1741DE:  POP.W           {R8}
1741E2:  POP             {R4-R7,PC}
1741E4:  MOV             R0, R5
1741E6:  MOVS            R1, #6
1741E8:  MOVS            R2, #4
1741EA:  BL              sub_172DC0
1741EE:  MOV             R0, R5
1741F0:  MOV             R1, R6
1741F2:  MOV             R2, R8
1741F4:  MOV             R3, R4
1741F6:  ADD             SP, SP, #8
1741F8:  POP.W           {R8}
1741FC:  POP.W           {R4-R7,LR}
174200:  B.W             sub_172EB6
