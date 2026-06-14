; =========================================================
; Game Engine Function: sub_14F534
; Address            : 0x14F534 - 0x14F5FC
; =========================================================

14F534:  PUSH            {R4-R7,LR}
14F536:  ADD             R7, SP, #0xC
14F538:  PUSH.W          {R8-R11}
14F53C:  SUB             SP, SP, #4
14F53E:  VPUSH           {D8-D9}
14F542:  SUB             SP, SP, #8
14F544:  MOV             R5, R0
14F546:  MOV.W           R0, #0x2400
14F54A:  LDR             R6, [R5,R0]
14F54C:  ADD.W           R0, R5, #0x2400
14F550:  STR             R0, [SP,#0x38+var_38]
14F552:  LDR             R4, [R0,#4]
14F554:  CMP             R6, R4
14F556:  BEQ             loc_14F5EC
14F558:  VLDR            S0, [R7,#arg_0]
14F55C:  VMOV            S2, R3
14F560:  MOVW            R0, #0xFFFF
14F564:  MOV             R9, R1
14F566:  VCVT.F32.S32    S16, S2
14F56A:  MOV.W           R11, #0
14F56E:  VCVT.F32.S32    S18, S0
14F572:  STR             R0, [SP,#0x38+var_34]
14F574:  LDRH.W          R10, [R6]
14F578:  LDR.W           R8, [R5,R10,LSL#2]
14F57C:  CMP.W           R8, #0
14F580:  BEQ             loc_14F5D6
14F582:  LDRB.W          R0, [R8,#0x9AC]
14F586:  STR.W           R11, [R8,#0x9DC]
14F58A:  STRB.W          R11, [R8,#0x9D8]
14F58E:  CBZ             R0, loc_14F5D6
14F590:  LDRB.W          R0, [R8,#0x9C4]
14F594:  CBZ             R0, loc_14F5D6
14F596:  VMOV            R0, S16
14F59A:  ADDW            R2, R8, #0x9C8
14F59E:  VMOV            R1, S18
14F5A2:  BL              sub_108D80
14F5A6:  CBZ             R0, loc_14F5D6
14F5A8:  SUB.W           R0, R9, #2
14F5AC:  CMP             R0, #2
14F5AE:  BCS             loc_14F5C2
14F5B0:  LDR             R0, [SP,#0x38+var_38]
14F5B2:  MOVS            R1, #1
14F5B4:  STRB.W          R1, [R8,#0x9D8]
14F5B8:  MOVW            R1, #0xFFFF
14F5BC:  STR             R1, [SP,#0x38+var_34]
14F5BE:  LDR             R0, [R0,#0xC]
14F5C0:  B               loc_14F5D2
14F5C2:  CMP.W           R9, #1
14F5C6:  BNE             loc_14F5D6
14F5C8:  MOVS            R0, #0
14F5CA:  STR.W           R10, [SP,#0x38+var_34]
14F5CE:  STRB.W          R0, [R8,#0x9D8]
14F5D2:  STR.W           R0, [R8,#0x9DC]
14F5D6:  ADDS            R6, #2
14F5D8:  CMP             R6, R4
14F5DA:  BNE             loc_14F574
14F5DC:  LDR             R0, [SP,#0x38+var_34]
14F5DE:  UXTH            R1, R0
14F5E0:  MOVW            R0, #0xFFFF
14F5E4:  CMP             R1, R0
14F5E6:  IT NE
14F5E8:  BLNE            sub_14F4C0
14F5EC:  MOVS            R0, #1
14F5EE:  ADD             SP, SP, #8
14F5F0:  VPOP            {D8-D9}
14F5F4:  ADD             SP, SP, #4
14F5F6:  POP.W           {R8-R11}
14F5FA:  POP             {R4-R7,PC}
