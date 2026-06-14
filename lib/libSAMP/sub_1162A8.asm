; =========================================================
; Game Engine Function: sub_1162A8
; Address            : 0x1162A8 - 0x1163E4
; =========================================================

1162A8:  PUSH            {R4-R7,LR}
1162AA:  ADD             R7, SP, #0xC
1162AC:  PUSH.W          {R8}
1162B0:  VPUSH           {D8-D14}
1162B4:  SUB             SP, SP, #0x28
1162B6:  MOV             R4, R0
1162B8:  BL              sub_117684
1162BC:  LDR             R0, [R4]
1162BE:  LDR             R1, [R0,#0x18]
1162C0:  MOV             R0, R4
1162C2:  BLX             R1
1162C4:  MOV             R5, R0
1162C6:  LDR             R0, [R4]
1162C8:  LDR             R1, [R0,#0x18]
1162CA:  MOV             R0, R4
1162CC:  BLX             R1
1162CE:  MOV             R6, R0
1162D0:  LDR             R0, [R4]
1162D2:  MOV             R1, R4
1162D4:  LDR             R2, [R0,#0x5C]
1162D6:  ADD             R0, SP, #0x70+var_50
1162D8:  BLX             R2
1162DA:  LDR             R0, [R4]
1162DC:  MOV             R1, R4
1162DE:  VLDR            S16, [SP,#0x70+var_50]
1162E2:  LDR             R2, [R0,#0x58]
1162E4:  ADD             R0, SP, #0x70+var_58
1162E6:  BLX             R2
1162E8:  LDR             R0, [R4]
1162EA:  MOV             R1, R4
1162EC:  VLDR            S18, [SP,#0x70+var_58]
1162F0:  LDR             R2, [R0,#0x5C]
1162F2:  ADD             R0, SP, #0x70+var_60
1162F4:  BLX             R2
1162F6:  LDR             R0, [R4]
1162F8:  MOV             R1, R4
1162FA:  VLDR            S20, [SP,#0x70+var_5C]
1162FE:  LDR             R2, [R0,#0x58]
116300:  ADD             R0, SP, #0x70+var_68
116302:  BLX             R2
116304:  VMOV.F32        S0, #0.19531
116308:  LDR             R0, [R4]
11630A:  VMOV.F32        S2, #0.25
11630E:  VMOV            S4, R6
116312:  VMLA.F32        S16, S18, S0
116316:  VLDR            S0, [SP,#0x70+var_64]
11631A:  VMLA.F32        S20, S0, S2
11631E:  VLDR            S0, =100.0
116322:  VMOV            S2, R5
116326:  VMOV.F32        S6, S16
11632A:  VSTR            S16, [R4,#0x30]
11632E:  VSTR            S20, [R4,#0x3C]
116332:  VMLA.F32        S6, S2, S0
116336:  VMOV.F32        S2, S20
11633A:  VMLA.F32        S2, S4, S0
11633E:  VSTR            S6, [R4,#0x38]
116342:  VSTR            S2, [R4,#0x34]
116346:  LDR             R1, [R0,#0x18]
116348:  MOV             R0, R4
11634A:  BLX             R1
11634C:  MOV             R5, R0
11634E:  LDR             R0, [R4]
116350:  LDR             R1, [R0,#0x18]
116352:  MOV             R0, R4
116354:  BLX             R1
116356:  MOV             R6, R0
116358:  LDR             R0, [R4]
11635A:  ADD.W           R8, SP, #0x70+var_50
11635E:  MOV             R1, R4
116360:  LDR             R2, [R0,#0x5C]
116362:  MOV             R0, R8
116364:  BLX             R2
116366:  LDR             R0, [R4]
116368:  MOV             R1, R4
11636A:  VLDR            S16, [SP,#0x70+var_50]
11636E:  LDR             R2, [R0,#0x58]
116370:  ADD             R0, SP, #0x70+var_58
116372:  BLX             R2
116374:  LDR             R0, [R4]
116376:  MOV             R1, R4
116378:  VLDR            S18, [SP,#0x70+var_58]
11637C:  LDR             R2, [R0,#0x5C]
11637E:  ADD             R0, SP, #0x70+var_60
116380:  BLX             R2
116382:  LDR             R0, [R4]
116384:  VMOV            S0, R5
116388:  VLDR            S24, =165.0
11638C:  VMOV.F32        S20, #0.59375
116390:  VMOV.F32        S22, #-23.0
116394:  VLDR            S26, [SP,#0x70+var_5C]
116398:  LDR             R1, [R0,#0x18]
11639A:  MOV             R0, R4
11639C:  VMUL.F32        S28, S0, S24
1163A0:  BLX             R1
1163A2:  VMOV            S0, R0
1163A6:  MOV.W           R0, #0xFFFFFFFF
1163AA:  VMLA.F32        S16, S18, S20
1163AE:  STR             R0, [SP,#0x70+var_50]
1163B0:  VMLA.F32        S26, S0, S22
1163B4:  ADD.W           R0, R4, #0x28 ; '('
1163B8:  VMOV            R3, S28
1163BC:  STR.W           R8, [SP,#0x70+var_6C]
1163C0:  VMOV            S0, R6
1163C4:  VMUL.F32        S0, S0, S24
1163C8:  VMOV            R1, S16
1163CC:  VMOV            R2, S26
1163D0:  VSTR            S0, [SP,#0x70+var_70]
1163D4:  BL              sub_163176
1163D8:  ADD             SP, SP, #0x28 ; '('
1163DA:  VPOP            {D8-D14}
1163DE:  POP.W           {R8}
1163E2:  POP             {R4-R7,PC}
