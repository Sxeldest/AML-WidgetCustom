; =========================================================
; Game Engine Function: _Z19IsVecIn2dAngledAreaR7CVectorfffff
; Address            : 0x33E3B8 - 0x33E572
; =========================================================

33E3B8:  PUSH            {R4-R7,LR}
33E3BA:  ADD             R7, SP, #0xC
33E3BC:  PUSH.W          {R8-R11}
33E3C0:  SUB             SP, SP, #4
33E3C2:  VPUSH           {D8-D12}; float
33E3C6:  SUB             SP, SP, #0x10; float
33E3C8:  VLDR            S16, [R7,#arg_0]
33E3CC:  MOV             R9, R3
33E3CE:  MOV             R10, R2
33E3D0:  MOV             R11, R1
33E3D2:  VMOV            R8, S16
33E3D6:  MOV             R4, R0
33E3D8:  MOV             R0, R11; this
33E3DA:  MOV             R1, R10; float
33E3DC:  MOV             R2, R9; float
33E3DE:  MOV             R3, R8; float
33E3E0:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
33E3E4:  VLDR            S0, =1.5708
33E3E8:  VMOV            S2, R0
33E3EC:  VADD.F32        S0, S2, S0
33E3F0:  VCMPE.F32       S0, #0.0
33E3F4:  VMRS            APSR_nzcv, FPSCR
33E3F8:  BGE             loc_33E40C
33E3FA:  VLDR            S2, =6.2832
33E3FE:  VADD.F32        S0, S0, S2
33E402:  VCMPE.F32       S0, #0.0
33E406:  VMRS            APSR_nzcv, FPSCR
33E40A:  BLT             loc_33E3FE
33E40C:  VLDR            S2, =6.2832
33E410:  VMOV            S18, R9
33E414:  VMOV            S20, R10
33E418:  VLDR            S24, [R7,#arg_4]
33E41C:  VCMPE.F32       S0, S2
33E420:  VMOV            S22, R11
33E424:  VMRS            APSR_nzcv, FPSCR
33E428:  BLE             loc_33E43C
33E42A:  VLDR            S4, =-6.2832
33E42E:  VADD.F32        S0, S0, S4
33E432:  VCMPE.F32       S0, S2
33E436:  VMRS            APSR_nzcv, FPSCR
33E43A:  BGT             loc_33E42E
33E43C:  VMOV            R5, S0
33E440:  MOV             R0, R5; x
33E442:  BLX             sinf
33E446:  MOV             R6, R0
33E448:  MOV             R0, R5; x
33E44A:  BLX             cosf
33E44E:  VSUB.F32        S14, S16, S20
33E452:  VLDR            S10, [R4]
33E456:  VSUB.F32        S4, S18, S22
33E45A:  VMOV            S0, R0
33E45E:  VMOV            S2, R6
33E462:  VMUL.F32        S0, S0, S24
33E466:  VMUL.F32        S2, S2, S24
33E46A:  VSUB.F32        S10, S10, S22
33E46E:  VMUL.F32        S6, S14, S14
33E472:  VMUL.F32        S8, S4, S4
33E476:  VADD.F32        S6, S8, S6
33E47A:  VLDR            S8, [R4,#4]
33E47E:  VSUB.F32        S8, S8, S20
33E482:  VSQRT.F32       S12, S6
33E486:  VCMPE.F32       S6, #0.0
33E48A:  VMRS            APSR_nzcv, FPSCR
33E48E:  BLE             loc_33E4A2
33E490:  VMOV.F32        S6, #1.0
33E494:  VDIV.F32        S6, S6, S12
33E498:  VMUL.F32        S14, S14, S6
33E49C:  VMUL.F32        S1, S4, S6
33E4A0:  B               loc_33E4A6
33E4A2:  VMOV.F32        S1, #1.0
33E4A6:  VMUL.F32        S14, S8, S14
33E4AA:  MOVS            R4, #0
33E4AC:  VMUL.F32        S1, S10, S1
33E4B0:  VSUB.F32        S4, S20, S0
33E4B4:  VADD.F32        S6, S2, S22
33E4B8:  VADD.F32        S14, S1, S14
33E4BC:  VCMPE.F32       S14, #0.0
33E4C0:  VMRS            APSR_nzcv, FPSCR
33E4C4:  BLT             loc_33E534
33E4C6:  VCMPE.F32       S14, S12
33E4CA:  VMRS            APSR_nzcv, FPSCR
33E4CE:  BGT             loc_33E534
33E4D0:  VSUB.F32        S12, S4, S20
33E4D4:  VSUB.F32        S1, S6, S22
33E4D8:  VMUL.F32        S14, S12, S12
33E4DC:  VMUL.F32        S3, S1, S1
33E4E0:  VADD.F32        S3, S3, S14
33E4E4:  VSQRT.F32       S14, S3
33E4E8:  VCMPE.F32       S3, #0.0
33E4EC:  VMRS            APSR_nzcv, FPSCR
33E4F0:  BLE             loc_33E504
33E4F2:  VMOV.F32        S3, #1.0
33E4F6:  VDIV.F32        S3, S3, S14
33E4FA:  VMUL.F32        S12, S12, S3
33E4FE:  VMUL.F32        S1, S1, S3
33E502:  B               loc_33E508
33E504:  VMOV.F32        S1, #1.0
33E508:  VMUL.F32        S10, S10, S1
33E50C:  MOVS            R1, #0
33E50E:  VMUL.F32        S8, S8, S12
33E512:  MOVS            R0, #0
33E514:  VADD.F32        S8, S8, S10
33E518:  VCMPE.F32       S8, S14
33E51C:  VMRS            APSR_nzcv, FPSCR
33E520:  VCMPE.F32       S8, #0.0
33E524:  IT LE
33E526:  MOVLE           R1, #1
33E528:  VMRS            APSR_nzcv, FPSCR
33E52C:  IT GE
33E52E:  MOVGE           R0, #1
33E530:  AND.W           R4, R1, R0
33E534:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x33E53A)
33E536:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
33E538:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
33E53A:  LDRB            R0, [R0]; CTheScripts::DbgFlag
33E53C:  CBZ             R0, loc_33E562
33E53E:  VADD.F32        S2, S2, S18
33E542:  MOV             R0, R11; this
33E544:  VSUB.F32        S0, S16, S0
33E548:  MOV             R1, R10; float
33E54A:  MOV             R2, R9; float
33E54C:  MOV             R3, R8; float
33E54E:  VSTR            S2, [SP,#0x58+var_58]
33E552:  VSTR            S0, [SP,#0x58+var_54]
33E556:  VSTR            S6, [SP,#0x58+var_50]
33E55A:  VSTR            S4, [SP,#0x58+var_4C]
33E55E:  BLX             j__ZN11CTheScripts21DrawDebugAngledSquareEffffffff; CTheScripts::DrawDebugAngledSquare(float,float,float,float,float,float,float,float)
33E562:  MOV             R0, R4
33E564:  ADD             SP, SP, #0x10
33E566:  VPOP            {D8-D12}
33E56A:  ADD             SP, SP, #4
33E56C:  POP.W           {R8-R11}
33E570:  POP             {R4-R7,PC}
