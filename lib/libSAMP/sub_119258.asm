; =========================================================
; Game Engine Function: sub_119258
; Address            : 0x119258 - 0x1192E8
; =========================================================

119258:  PUSH            {R4-R7,LR}
11925A:  ADD             R7, SP, #0xC
11925C:  PUSH.W          {R11}
119260:  VPUSH           {D8-D11}
119264:  SUB             SP, SP, #0x20
119266:  MOV             R5, R0
119268:  LDR             R0, [R0]
11926A:  MOV             R4, R1
11926C:  MOV             R1, R5
11926E:  LDR             R2, [R0,#0x14]
119270:  ADD             R0, SP, #0x50+var_38
119272:  BLX             R2
119274:  LDR             R0, [R5]
119276:  MOV             R1, R5
119278:  VLDR            S16, [SP,#0x50+var_38]
11927C:  LDR             R2, [R0,#0x4C]
11927E:  ADD             R0, SP, #0x50+var_40
119280:  BLX             R2
119282:  LDR             R0, [R5]
119284:  MOV             R1, R5
119286:  VLDR            S18, [SP,#0x50+var_40]
11928A:  LDR             R2, [R0,#0x14]
11928C:  ADD             R0, SP, #0x50+var_38
11928E:  BLX             R2
119290:  LDR             R0, [R5]
119292:  MOV             R1, R5
119294:  VLDR            S20, [SP,#0x50+var_34]
119298:  LDR             R2, [R0,#0x4C]
11929A:  ADD             R0, SP, #0x50+var_40
11929C:  BLX             R2
11929E:  MOV             R6, R5
1192A0:  MOV             R1, R5
1192A2:  LDR.W           R0, [R6],#0x20
1192A6:  VLDR            S22, [SP,#0x50+var_3C]
1192AA:  LDR             R2, [R0,#0x4C]
1192AC:  ADD             R0, SP, #0x50+var_48
1192AE:  BLX             R2
1192B0:  VMOV.F32        S0, #0.5
1192B4:  VLDR            S4, =-0.8
1192B8:  VSUB.F32        S2, S16, S18
1192BC:  LDRD.W          R0, R1, [SP,#0x50+var_48]
1192C0:  VMLA.F32        S20, S22, S4
1192C4:  STRD.W          R0, R1, [SP,#0x50+var_50]; float
1192C8:  MOV             R0, R6; int
1192CA:  MOV             R1, R4; int
1192CC:  VMUL.F32        S0, S2, S0
1192D0:  VMOV            R3, S20; int
1192D4:  VMOV            R2, S0; int
1192D8:  BL              sub_114304
1192DC:  ADD             SP, SP, #0x20 ; ' '
1192DE:  VPOP            {D8-D11}
1192E2:  POP.W           {R11}
1192E6:  POP             {R4-R7,PC}
