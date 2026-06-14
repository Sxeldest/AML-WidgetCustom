; =========================================================
; Game Engine Function: sub_13D338
; Address            : 0x13D338 - 0x13D366
; =========================================================

13D338:  PUSH            {R7,LR}
13D33A:  MOV             R7, SP
13D33C:  SUB             SP, SP, #8
13D33E:  LDR             R1, [R0,#0x54]
13D340:  CBZ             R1, loc_13D362
13D342:  LDR             R1, [R1]
13D344:  VLDR            S0, [R1,#0xC]
13D348:  VLDR            S2, [R1,#0x10]
13D34C:  MOV             R1, SP
13D34E:  VCVT.F32.S32    S0, S0
13D352:  VCVT.F32.S32    S2, S2
13D356:  VSTR            S0, [SP,#0x10+var_10]
13D35A:  VSTR            S2, [SP,#0x10+var_C]
13D35E:  BL              sub_12BD38
13D362:  ADD             SP, SP, #8
13D364:  POP             {R7,PC}
