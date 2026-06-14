; =========================================================
; Game Engine Function: sub_8C564
; Address            : 0x8C564 - 0x8C622
; =========================================================

8C564:  PUSH            {R4-R7,LR}
8C566:  ADD             R7, SP, #0xC
8C568:  PUSH.W          {R11}
8C56C:  LDR             R6, =(dword_1ACF68 - 0x8C574)
8C56E:  MOV             R4, R0
8C570:  ADD             R6, PC; dword_1ACF68
8C572:  LDR             R5, [R6]
8C574:  BL              sub_8C628
8C578:  LDR             R0, [R6]
8C57A:  MOVW            R1, #0x19D0
8C57E:  LDR             R2, [R4,#0x48]
8C580:  LDR             R3, [R0,R1]
8C582:  ADD             R1, R0
8C584:  MOVW            R0, #0x19B8
8C588:  ADD             R0, R5
8C58A:  SUBS            R6, R3, R2
8C58C:  IT NE
8C58E:  MOVNE           R6, #1
8C590:  CMP             R3, R2
8C592:  STRB            R6, [R1,#0xC]
8C594:  BEQ             loc_8C5A4
8C596:  MOVS            R3, #0
8C598:  CMP             R2, #0
8C59A:  STRH            R3, [R1,#0xE]
8C59C:  STR             R3, [R1,#8]
8C59E:  IT NE
8C5A0:  STRDNE.W        R2, R3, [R1,#0x38]
8C5A4:  MOVS            R3, #0
8C5A6:  STRD.W          R3, R3, [R1,#0x14]
8C5AA:  STR             R2, [R1]
8C5AC:  STR             R4, [R1,#0x24]
8C5AE:  STRB            R3, [R1,#0xD]
8C5B0:  STRB            R3, [R1,#0x10]
8C5B2:  CBZ             R2, loc_8C5D2
8C5B4:  LDR.W           R3, [R1,#0xEC]
8C5B8:  STR             R2, [R1,#4]
8C5BA:  CMP             R3, R2
8C5BC:  BEQ             loc_8C5CE
8C5BE:  LDR.W           R3, [R1,#0xF8]
8C5C2:  CMP             R3, R2
8C5C4:  BEQ             loc_8C5CE
8C5C6:  LDR.W           R3, [R1,#0xFC]
8C5CA:  CMP             R3, R2
8C5CC:  BNE             loc_8C614
8C5CE:  MOVS            R3, #2
8C5D0:  STR             R3, [R1,#0x28]
8C5D2:  LDR.W           R1, [R4,#0x2FC]
8C5D6:  VLDR            S0, [R5,#0xE0]
8C5DA:  VLDR            S2, [R5,#0xE4]
8C5DE:  VLDR            S4, [R1,#0xC]
8C5E2:  VLDR            S6, [R1,#0x10]
8C5E6:  MOVS            R1, #1
8C5E8:  VSUB.F32        S0, S0, S4
8C5EC:  STRB.W          R1, [R0,#0x15E]
8C5F0:  VSUB.F32        S2, S2, S6
8C5F4:  VSTR            S0, [R0,#0x34]
8C5F8:  VSTR            S2, [R0,#0x38]
8C5FC:  LDRB            R1, [R4,#8]
8C5FE:  LSLS            R1, R1, #0x1D
8C600:  ITTTT PL
8C602:  LDRPL.W         R1, [R4,#0x2FC]
8C606:  LDRBPL          R1, [R1,#8]
8C608:  MOVSPL.W        R1, R1,LSL#29
8C60C:  STRPL           R4, [R0]
8C60E:  POP.W           {R11}
8C612:  POP             {R4-R7,PC}
8C614:  LDR.W           R6, [R1,#0x100]
8C618:  MOVS            R3, #1
8C61A:  CMP             R6, R2
8C61C:  IT EQ
8C61E:  MOVEQ           R3, #2
8C620:  B               loc_8C5D0
