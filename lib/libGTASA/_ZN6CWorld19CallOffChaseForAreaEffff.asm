; =========================================================
; Game Engine Function: _ZN6CWorld19CallOffChaseForAreaEffff
; Address            : 0x42C424 - 0x42C59A
; =========================================================

42C424:  PUSH            {R4-R7,LR}
42C426:  ADD             R7, SP, #0xC
42C428:  PUSH.W          {R8-R11}
42C42C:  SUB             SP, SP, #4
42C42E:  VPUSH           {D8-D15}
42C432:  SUB             SP, SP, #0x30; float
42C434:  VMOV.F32        S0, #-10.0
42C438:  VLDR            S26, =50.0
42C43C:  VMOV            S2, R0
42C440:  VLDR            S28, =60.0
42C444:  ADD.W           R12, SP, #0x90+var_7C
42C448:  VMOV            S4, R1
42C44C:  STM.W           R12, {R0-R2}
42C450:  VMOV            S20, R3
42C454:  VADD.F32        S16, S2, S0
42C458:  VADD.F32        S18, S4, S0
42C45C:  VMOV            S0, R2
42C460:  VDIV.F32        S2, S16, S26
42C464:  VADD.F32        S2, S2, S28
42C468:  VMOV            R0, S2; x
42C46C:  VMOV.F32        S2, #10.0
42C470:  VADD.F32        S22, S0, S2
42C474:  VADD.F32        S24, S20, S2
42C478:  BLX             floorf
42C47C:  VDIV.F32        S0, S18, S26
42C480:  MOV             R8, R0
42C482:  VADD.F32        S0, S0, S28
42C486:  VMOV            R0, S0; x
42C48A:  BLX             floorf
42C48E:  VDIV.F32        S0, S24, S26
42C492:  LDR             R4, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42C498)
42C494:  ADD             R4, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42C496:  VADD.F32        S0, S0, S28
42C49A:  VDIV.F32        S2, S22, S26
42C49E:  VMOV            R1, S0
42C4A2:  VADD.F32        S2, S2, S28
42C4A6:  VMOV            S30, R0
42C4AA:  VMOV            S28, R8
42C4AE:  VMOV            R9, S2
42C4B2:  MOV             R0, R1; x
42C4B4:  BLX             floorf
42C4B8:  VMOV            S26, R0
42C4BC:  MOV             R0, R9; x
42C4BE:  BLX             floorf
42C4C2:  VCVT.S32.F32    S2, S26
42C4C6:  VMOV            S0, R0
42C4CA:  LDR             R0, [R4]; CWorld::ms_nCurrentScanCode ...
42C4CC:  VCVT.S32.F32    S26, S0
42C4D0:  VCVT.S32.F32    S0, S30
42C4D4:  LDRH            R0, [R0]; this
42C4D6:  VCVT.S32.F32    S28, S28
42C4DA:  VMOV            R1, S2
42C4DE:  STR             R1, [SP,#0x90+var_70]
42C4E0:  VMOV            R1, S0
42C4E4:  STR             R1, [SP,#0x90+var_68]
42C4E6:  MOVW            R1, #0xFFFF
42C4EA:  CMP             R0, R1
42C4EC:  BEQ             loc_42C4F2
42C4EE:  ADDS            R0, #1
42C4F0:  B               loc_42C4F8
42C4F2:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
42C4F6:  MOVS            R0, #1
42C4F8:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42C4FE)
42C4FA:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
42C4FC:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
42C4FE:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
42C500:  LDR             R0, [SP,#0x90+var_70]
42C502:  LDR             R1, [SP,#0x90+var_68]
42C504:  CMP             R1, R0
42C506:  BGT             loc_42C58C
42C508:  VMOV            R0, S28
42C50C:  LDR.W           R9, [SP,#0x90+var_74]
42C510:  VMOV            R11, S26
42C514:  STR             R0, [SP,#0x90+var_6C]
42C516:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x42C520)
42C518:  LDRD.W          R8, R6, [SP,#0x90+var_7C]
42C51C:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
42C51E:  LDR             R5, [R0]; CWorld::ms_aRepeatSectors ...
42C520:  LDR             R0, [SP,#0x90+var_6C]
42C522:  CMP             R0, R11
42C524:  BGT             loc_42C57C
42C526:  LDR             R0, [SP,#0x90+var_68]
42C528:  LDR.W           R10, [SP,#0x90+var_6C]
42C52C:  LSLS            R0, R0, #4
42C52E:  UXTB            R0, R0
42C530:  STR             R0, [SP,#0x90+var_64]
42C532:  LDR             R1, [SP,#0x90+var_64]
42C534:  AND.W           R0, R10, #0xF
42C538:  MOV             R2, R6; float
42C53A:  MOV             R3, R9; float
42C53C:  ORRS            R0, R1
42C53E:  MOV             R1, R8; CPtrList *
42C540:  VSTR            S20, [SP,#0x90+var_90]
42C544:  ADD.W           R0, R0, R0,LSL#1
42C548:  VSTR            S16, [SP,#0x90+var_8C]
42C54C:  VSTR            S18, [SP,#0x90+var_88]
42C550:  ADD.W           R4, R5, R0,LSL#2
42C554:  VSTR            S22, [SP,#0x90+var_84]
42C558:  VSTR            S24, [SP,#0x90+var_80]
42C55C:  MOV             R0, R4; this
42C55E:  BLX             j__ZN6CWorld37CallOffChaseForAreaSectorListVehiclesER8CPtrListffffffff; CWorld::CallOffChaseForAreaSectorListVehicles(CPtrList &,float,float,float,float,float,float,float,float)
42C562:  ADDS            R0, R4, #4; this
42C564:  MOV             R1, R8; CPtrList *
42C566:  MOV             R2, R6; float
42C568:  MOV             R3, R9; float
42C56A:  VSTR            S20, [SP,#0x90+var_90]
42C56E:  BLX             j__ZN6CWorld33CallOffChaseForAreaSectorListPedsER8CPtrListffffffff; CWorld::CallOffChaseForAreaSectorListPeds(CPtrList &,float,float,float,float,float,float,float,float)
42C572:  ADD.W           R0, R10, #1
42C576:  CMP             R10, R11
42C578:  MOV             R10, R0
42C57A:  BLT             loc_42C532
42C57C:  LDR             R0, [SP,#0x90+var_68]
42C57E:  LDR             R1, [SP,#0x90+var_70]
42C580:  MOV             R2, R0
42C582:  CMP             R2, R1
42C584:  ADD.W           R0, R2, #1
42C588:  STR             R0, [SP,#0x90+var_68]
42C58A:  BLT             loc_42C520
42C58C:  ADD             SP, SP, #0x30 ; '0'
42C58E:  VPOP            {D8-D15}
42C592:  ADD             SP, SP, #4
42C594:  POP.W           {R8-R11}
42C598:  POP             {R4-R7,PC}
