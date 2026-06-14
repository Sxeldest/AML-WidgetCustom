; =========================================================
; Game Engine Function: sub_118588
; Address            : 0x118588 - 0x1185D4
; =========================================================

118588:  PUSH            {R4-R7,LR}
11858A:  ADD             R7, SP, #0xC
11858C:  PUSH.W          {R11}
118590:  VPUSH           {D8}
118594:  MOV             R6, R0
118596:  LDR             R0, [R1]
118598:  MOV             R5, R1
11859A:  MOV             R4, R2
11859C:  VLDR            S16, [R2]
1185A0:  LDR             R1, [R0,#4]
1185A2:  MOV             R0, R5
1185A4:  BLX             R1
1185A6:  VMOV            S0, R0
1185AA:  LDR             R0, [R5]
1185AC:  VMUL.F32        S0, S16, S0
1185B0:  VLDR            S16, [R4,#4]
1185B4:  LDR             R1, [R0,#4]
1185B6:  MOV             R0, R5
1185B8:  VSTR            S0, [R6]
1185BC:  BLX             R1
1185BE:  VMOV            S0, R0
1185C2:  VMUL.F32        S0, S16, S0
1185C6:  VSTR            S0, [R6,#4]
1185CA:  VPOP            {D8}
1185CE:  POP.W           {R11}
1185D2:  POP             {R4-R7,PC}
