; =========================================================
; Game Engine Function: _ZN8CTrailer9ProcessAIERj
; Address            : 0x57B408 - 0x57B4F6
; =========================================================

57B408:  PUSH            {R4,R5,R7,LR}
57B40A:  ADD             R7, SP, #8
57B40C:  VPUSH           {D8}
57B410:  MOV             R5, R0
57B412:  BLX             j__ZN11CAutomobile9ProcessAIERj; CAutomobile::ProcessAI(uint &)
57B416:  MOV             R4, R0
57B418:  LDRB.W          R0, [R5,#0x3A]
57B41C:  AND.W           R0, R0, #0xF8
57B420:  CMP             R0, #0x50 ; 'P'
57B422:  BEQ             loc_57B454
57B424:  CMP             R0, #0x20 ; ' '
57B426:  BNE             loc_57B4EE
57B428:  VMOV.F32        S2, #0.5
57B42C:  ADD.W           R0, R5, #0xA00
57B430:  VLDR            S0, [R0]
57B434:  VCMPE.F32       S0, S2
57B438:  VMRS            APSR_nzcv, FPSCR
57B43C:  BGT             loc_57B44C
57B43E:  VLDR            S2, =-1000.0
57B442:  VCMP.F32        S0, S2
57B446:  VMRS            APSR_nzcv, FPSCR
57B44A:  BNE             loc_57B4EE
57B44C:  MOV             R0, R5; this
57B44E:  BLX             j__ZN8CTrailer14ScanForTowLinkEv; CTrailer::ScanForTowLink(void)
57B452:  B               loc_57B4EE
57B454:  LDR.W           R0, [R5,#0x4D0]
57B458:  CMP             R0, #0
57B45A:  BEQ             loc_57B4EE
57B45C:  ADD.W           R1, R5, #0xA00
57B460:  VLDR            S0, =-1000.0
57B464:  VLDR            S2, [R1]
57B468:  VCMP.F32        S2, S0
57B46C:  VMRS            APSR_nzcv, FPSCR
57B470:  BNE             loc_57B488
57B472:  LDR             R1, [R0,#0x14]
57B474:  CBZ             R1, loc_57B492
57B476:  LDRD.W          R0, R1, [R1,#0x10]; x
57B47A:  EOR.W           R0, R0, #0x80000000; y
57B47E:  BLX             atan2f
57B482:  VMOV            S16, R0
57B486:  B               loc_57B496
57B488:  LDR.W           R0, [R0,#0x4A4]
57B48C:  STR.W           R0, [R5,#0x4A4]
57B490:  B               loc_57B4EE
57B492:  VLDR            S16, [R0,#0x10]
57B496:  LDR             R0, [R5,#0x14]
57B498:  CBZ             R0, loc_57B4AC
57B49A:  LDRD.W          R2, R1, [R0,#0x10]; x
57B49E:  EOR.W           R0, R2, #0x80000000; y
57B4A2:  BLX             atan2f
57B4A6:  VMOV            S0, R0
57B4AA:  B               loc_57B4B0
57B4AC:  VLDR            S0, [R5,#0x10]
57B4B0:  VLDR            S2, =3.1416
57B4B4:  VADD.F32        S2, S0, S2
57B4B8:  VCMPE.F32       S16, S2
57B4BC:  VMRS            APSR_nzcv, FPSCR
57B4C0:  BLE             loc_57B4C8
57B4C2:  VLDR            S2, =-6.2832
57B4C6:  B               loc_57B4DE
57B4C8:  VLDR            S2, =-3.1416
57B4CC:  VADD.F32        S2, S0, S2
57B4D0:  VCMPE.F32       S16, S2
57B4D4:  VMRS            APSR_nzcv, FPSCR
57B4D8:  BGE             loc_57B4E2
57B4DA:  VLDR            S2, =6.2832
57B4DE:  VADD.F32        S16, S16, S2
57B4E2:  VSUB.F32        S0, S16, S0
57B4E6:  ADD.W           R0, R5, #0x498
57B4EA:  VSTR            S0, [R0]
57B4EE:  MOV             R0, R4
57B4F0:  VPOP            {D8}
57B4F4:  POP             {R4,R5,R7,PC}
