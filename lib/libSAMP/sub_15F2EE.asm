; =========================================================
; Game Engine Function: sub_15F2EE
; Address            : 0x15F2EE - 0x15F4F0
; =========================================================

15F2EE:  PUSH            {R4-R7,LR}
15F2F0:  ADD             R7, SP, #0xC
15F2F2:  PUSH.W          {R8-R11}
15F2F6:  SUB             SP, SP, #0xC
15F2F8:  LDR             R4, [R2]
15F2FA:  MOV             R5, R0
15F2FC:  MOVW            R0, #0xE995
15F300:  MOV             R9, R1
15F302:  MOVT            R0, #0x5BD1
15F306:  MOVW            R2, #0xA654
15F30A:  MUL.W           R1, R4, R0
15F30E:  MOVT            R2, #0x6F47
15F312:  LDR.W           R8, [R9,#4]
15F316:  CMP.W           R8, #0
15F31A:  EOR.W           R1, R1, R1,LSR#24
15F31E:  MUL.W           R1, R0, R1
15F322:  EOR.W           R1, R1, R2
15F326:  EOR.W           R1, R1, R1,LSR#13
15F32A:  MUL.W           R0, R1, R0
15F32E:  EOR.W           R11, R0, R0,LSR#15
15F332:  BEQ             loc_15F36E
15F334:  MOV.W           R0, #0x55555555
15F338:  MOV.W           R1, #0x33333333
15F33C:  AND.W           R0, R0, R8,LSR#1
15F340:  STR             R5, [SP,#0x28+var_20]
15F342:  SUB.W           R0, R8, R0
15F346:  AND.W           R1, R1, R0,LSR#2
15F34A:  BIC.W           R0, R0, #0xCCCCCCCC
15F34E:  ADD             R0, R1
15F350:  MOV.W           R1, #0x1010101
15F354:  ADD.W           R0, R0, R0,LSR#4
15F358:  BIC.W           R0, R0, #0xF0F0F0F0
15F35C:  MULS            R0, R1
15F35E:  LSRS            R5, R0, #0x18
15F360:  CMP             R5, #1
15F362:  BHI             loc_15F370
15F364:  SUB.W           R0, R8, #1
15F368:  AND.W           R10, R11, R0
15F36C:  B               loc_15F380
15F36E:  B               loc_15F3CE
15F370:  CMP             R11, R8
15F372:  MOV             R10, R11
15F374:  BCC             loc_15F380
15F376:  MOV             R0, R11
15F378:  MOV             R1, R8
15F37A:  BLX             sub_221798
15F37E:  MOV             R10, R1
15F380:  LDR.W           R0, [R9]
15F384:  LDR.W           R6, [R0,R10,LSL#2]
15F388:  CBZ             R6, loc_15F3CC
15F38A:  SUB.W           R1, R8, #1
15F38E:  STR             R5, [SP,#0x28+var_24]
15F390:  LDR             R6, [R6]
15F392:  CBZ             R6, loc_15F3CC
15F394:  LDR             R0, [R6,#4]
15F396:  CMP             R0, R11
15F398:  BEQ             loc_15F3C0
15F39A:  CMP             R5, #1
15F39C:  BHI             loc_15F3A2
15F39E:  ANDS            R0, R1
15F3A0:  B               loc_15F3BC
15F3A2:  CMP             R0, R8
15F3A4:  BCC             loc_15F3BC
15F3A6:  MOV             R5, R10
15F3A8:  MOV             R10, R9
15F3AA:  MOV             R9, R1
15F3AC:  MOV             R1, R8
15F3AE:  BLX             sub_221798
15F3B2:  MOV             R0, R1
15F3B4:  MOV             R1, R9
15F3B6:  MOV             R9, R10
15F3B8:  MOV             R10, R5
15F3BA:  LDR             R5, [SP,#0x28+var_24]
15F3BC:  CMP             R0, R10
15F3BE:  BNE             loc_15F3CC
15F3C0:  LDR             R0, [R6,#8]
15F3C2:  CMP             R0, R4
15F3C4:  BNE             loc_15F390
15F3C6:  MOVS            R0, #0
15F3C8:  LDR             R5, [SP,#0x28+var_20]
15F3CA:  B               loc_15F4E4
15F3CC:  LDR             R5, [SP,#0x28+var_20]
15F3CE:  MOVS            R0, #0x28 ; '('; unsigned int
15F3D0:  LDR             R4, [R7,#arg_0]
15F3D2:  BLX             j__Znwj; operator new(uint)
15F3D6:  LDR.W           R1, [R9,#0xC]
15F3DA:  MOV             R6, R0
15F3DC:  LDR             R2, [R4]
15F3DE:  MOVS            R0, #0
15F3E0:  ADDS            R1, #1
15F3E2:  VMOV.I32        Q8, #0
15F3E6:  STRH            R0, [R6,#0x14]
15F3E8:  ADD.W           R3, R6, #0x18
15F3EC:  VMOV            S2, R1
15F3F0:  VLDR            S0, [R9,#0x10]
15F3F4:  LDR             R1, [R2]
15F3F6:  CMP.W           R8, #0
15F3FA:  VCVT.F32.U32    S2, S2
15F3FE:  STR.W           R11, [R6,#4]
15F402:  VST1.32         {D16-D17}, [R3]
15F406:  STR             R0, [R6]
15F408:  STRD.W          R1, R0, [R6,#8]
15F40C:  BEQ             loc_15F428
15F40E:  VMOV            S4, R8
15F412:  VCVT.F32.U32    S4, S4
15F416:  VMUL.F32        S4, S0, S4
15F41A:  VCMP.F32        S4, S2
15F41E:  VMRS            APSR_nzcv, FPSCR
15F422:  BMI             loc_15F428
15F424:  MOV             R11, R10
15F426:  B               loc_15F490
15F428:  MOV             R10, R5
15F42A:  MOV.W           R4, R8,LSL#1
15F42E:  CMP.W           R8, #3
15F432:  BCC             loc_15F442
15F434:  SUB.W           R0, R8, #1
15F438:  ANDS.W          R5, R8, R0
15F43C:  IT NE
15F43E:  MOVNE           R5, #1
15F440:  B               loc_15F444
15F442:  MOVS            R5, #1
15F444:  VDIV.F32        S0, S2, S0
15F448:  VMOV            R0, S0; x
15F44C:  BLX             ceilf
15F450:  VMOV            S0, R0
15F454:  ORR.W           R1, R5, R4
15F458:  VCVT.U32.F32    S0, S0
15F45C:  VMOV            R0, S0
15F460:  CMP             R1, R0
15F462:  IT CC
15F464:  MOVCC           R1, R0; this
15F466:  MOV             R0, R9; int
15F468:  BL              sub_15F4FA
15F46C:  LDR.W           R8, [R9,#4]
15F470:  MOV             R5, R10
15F472:  SUB.W           R0, R8, #1
15F476:  TST.W           R8, R0
15F47A:  BNE             loc_15F482
15F47C:  AND.W           R11, R11, R0
15F480:  B               loc_15F490
15F482:  CMP             R11, R8
15F484:  BCC             loc_15F490
15F486:  MOV             R0, R11
15F488:  MOV             R1, R8
15F48A:  BLX             sub_221798
15F48E:  MOV             R11, R1
15F490:  LDR.W           R0, [R9]
15F494:  LDR.W           R1, [R0,R11,LSL#2]
15F498:  CBZ             R1, loc_15F4A2
15F49A:  LDR             R0, [R1]
15F49C:  STR             R0, [R6]
15F49E:  STR             R6, [R1]
15F4A0:  B               loc_15F4D8
15F4A2:  MOV             R1, R9
15F4A4:  LDR.W           R2, [R1,#8]!
15F4A8:  STR             R2, [R6]
15F4AA:  STR             R6, [R1]
15F4AC:  STR.W           R1, [R0,R11,LSL#2]
15F4B0:  LDR             R0, [R6]
15F4B2:  CBZ             R0, loc_15F4D8
15F4B4:  LDR             R0, [R0,#4]
15F4B6:  SUB.W           R1, R8, #1
15F4BA:  TST.W           R8, R1
15F4BE:  BNE             loc_15F4C4
15F4C0:  ANDS            R0, R1
15F4C2:  B               loc_15F4D0
15F4C4:  CMP             R0, R8
15F4C6:  BCC             loc_15F4D0
15F4C8:  MOV             R1, R8
15F4CA:  BLX             sub_221798
15F4CE:  MOV             R0, R1
15F4D0:  LDR.W           R1, [R9]
15F4D4:  STR.W           R6, [R1,R0,LSL#2]
15F4D8:  LDR.W           R0, [R9,#0xC]
15F4DC:  ADDS            R0, #1
15F4DE:  STR.W           R0, [R9,#0xC]
15F4E2:  MOVS            R0, #1
15F4E4:  STRB            R0, [R5,#4]
15F4E6:  STR             R6, [R5]
15F4E8:  ADD             SP, SP, #0xC
15F4EA:  POP.W           {R8-R11}
15F4EE:  POP             {R4-R7,PC}
