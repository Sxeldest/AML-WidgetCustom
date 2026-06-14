; =========================================================
; Game Engine Function: sub_11841C
; Address            : 0x11841C - 0x1184CA
; =========================================================

11841C:  PUSH            {R4-R7,LR}
11841E:  ADD             R7, SP, #0xC
118420:  PUSH.W          {R11}
118424:  VPUSH           {D8-D12}
118428:  SUB             SP, SP, #0x18; float
11842A:  MOV             R5, R0
11842C:  LDR             R0, [R0]
11842E:  MOV             R4, R1
118430:  MOV             R1, R5
118432:  LDR             R2, [R0,#0x14]
118434:  ADD             R0, SP, #0x50+var_40
118436:  BLX             R2
118438:  LDR             R0, [R5]
11843A:  MOV             R1, R5
11843C:  VLDR            S16, [SP,#0x50+var_40]
118440:  LDR             R2, [R0,#0x4C]
118442:  ADD             R0, SP, #0x50+var_48
118444:  BLX             R2
118446:  LDR             R0, [R5]
118448:  MOV             R1, R5
11844A:  VLDR            S18, [SP,#0x50+var_48]
11844E:  LDR             R2, [R0,#0x14]
118450:  ADD             R0, SP, #0x50+var_40
118452:  BLX             R2
118454:  LDR             R0, [R5]
118456:  MOV             R1, R5
118458:  VLDR            S20, [SP,#0x50+var_3C]
11845C:  LDR             R2, [R0,#0x4C]
11845E:  ADD             R0, SP, #0x50+var_48
118460:  BLX             R2
118462:  LDR             R0, [R5]
118464:  MOV             R1, R5
118466:  VLDR            S22, [SP,#0x50+var_44]
11846A:  LDR             R2, [R0,#0x4C]
11846C:  ADD             R0, SP, #0x50+var_40
11846E:  BLX             R2
118470:  MOV             R6, R5
118472:  MOV             R1, R5
118474:  LDR.W           R0, [R6],#0x20
118478:  VLDR            S24, [SP,#0x50+var_40]
11847C:  LDR             R2, [R0,#0x4C]
11847E:  ADD             R0, SP, #0x50+var_48
118480:  BLX             R2
118482:  VLDR            S0, =0.8
118486:  VMOV.F32        S4, #0.625
11848A:  VMOV.F32        S2, #0.5
11848E:  MOV             R0, R6; int
118490:  VMLS.F32        S16, S18, S0
118494:  MOV             R1, R4; int
118496:  VMUL.F32        S0, S24, S0
11849A:  VMLS.F32        S20, S22, S4
11849E:  VSTR            S0, [SP,#0x50+var_50]
1184A2:  VMUL.F32        S2, S16, S2
1184A6:  VMOV            R3, S20; int
1184AA:  VMOV            R2, S2; int
1184AE:  VLDR            S2, [SP,#0x50+var_44]
1184B2:  VMUL.F32        S2, S2, S4
1184B6:  VSTR            S2, [SP,#0x50+var_4C]
1184BA:  BL              sub_113A44
1184BE:  ADD             SP, SP, #0x18
1184C0:  VPOP            {D8-D12}
1184C4:  POP.W           {R11}
1184C8:  POP             {R4-R7,PC}
