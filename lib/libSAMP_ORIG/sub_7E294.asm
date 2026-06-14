; =========================================================
; Game Engine Function: sub_7E294
; Address            : 0x7E294 - 0x7E306
; =========================================================

7E294:  PUSH            {R4-R7,LR}
7E296:  ADD             R7, SP, #0xC
7E298:  PUSH.W          {R8-R11}
7E29C:  SUB             SP, SP, #4
7E29E:  VPUSH           {D8}
7E2A2:  SUB             SP, SP, #0x10
7E2A4:  MOV             R8, R0
7E2A6:  STR             R1, [R0,#0x58]
7E2A8:  BL              sub_85328
7E2AC:  LDRD.W          R5, R10, [R0]
7E2B0:  CMP             R5, R10
7E2B2:  BEQ             loc_7E2F8
7E2B4:  LDR             R0, =(off_114CE4 - 0x7E2C6)
7E2B6:  MOVW            R9, #0
7E2BA:  VLDR            S16, =0.1
7E2BE:  MOVT            R9, #0xBF80
7E2C2:  ADD             R0, PC; off_114CE4
7E2C4:  MOV.W           R6, #0xFFFFFFFF
7E2C8:  LDR.W           R11, [R0]; off_1ABF5C
7E2CC:  LDR             R0, [R5]
7E2CE:  LDR.W           R4, [R11]
7E2D2:  BL              sub_7DB44
7E2D6:  VLDR            S0, [R8,#0x58]
7E2DA:  VMUL.F32        S2, S0, S16
7E2DE:  VMOV            R3, S0
7E2E2:  VMOV            R2, S2
7E2E6:  MOVS            R1, #0
7E2E8:  STRD.W          R6, R6, [SP,#0x38+var_38]
7E2EC:  STR.W           R9, [SP,#0x38+var_30]
7E2F0:  BLX             R4
7E2F2:  ADDS            R5, #4
7E2F4:  CMP             R5, R10
7E2F6:  BNE             loc_7E2CC
7E2F8:  ADD             SP, SP, #0x10
7E2FA:  VPOP            {D8}
7E2FE:  ADD             SP, SP, #4
7E300:  POP.W           {R8-R11}
7E304:  POP             {R4-R7,PC}
