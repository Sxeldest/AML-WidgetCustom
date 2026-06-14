; =========================================================
; Game Engine Function: _ZN14CRunningScript24ObjectInAreaCheckCommandEi
; Address            : 0x34D3FC - 0x34D6AA
; =========================================================

34D3FC:  PUSH            {R4-R7,LR}
34D3FE:  ADD             R7, SP, #0xC
34D400:  PUSH.W          {R11}
34D404:  VPUSH           {D8-D15}
34D408:  SUB             SP, SP, #0x20; float
34D40A:  MOV             R4, R0
34D40C:  MOV             R6, R1
34D40E:  MOVW            R0, #0x4EA
34D412:  CMP             R6, R0
34D414:  ITE NE
34D416:  MOVNE           R1, #6
34D418:  MOVEQ           R1, #8; __int16
34D41A:  MOV             R0, R4; this
34D41C:  BLX             j__ZN14CRunningScript17CollectParametersEs; CRunningScript::CollectParameters(short)
34D420:  LDR             R0, =(ScriptParams_ptr - 0x34D426)
34D422:  ADD             R0, PC; ScriptParams_ptr
34D424:  LDR             R0, [R0]; ScriptParams
34D426:  LDR             R1, [R0]
34D428:  CMP             R1, #0
34D42A:  BLT             loc_34D44C
34D42C:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x34D436)
34D42E:  UXTB            R3, R1
34D430:  LSRS            R1, R1, #8
34D432:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
34D434:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
34D436:  LDR             R0, [R0]; CPools::ms_pObjectPool
34D438:  LDR             R2, [R0,#4]
34D43A:  LDRB            R2, [R2,R1]
34D43C:  CMP             R2, R3
34D43E:  BNE             loc_34D44C
34D440:  MOV.W           R2, #0x1A4
34D444:  LDR             R0, [R0]
34D446:  MLA.W           R0, R1, R2, R0
34D44A:  B               loc_34D44E
34D44C:  MOVS            R0, #0
34D44E:  LDR             R1, =(ScriptParams_ptr - 0x34D45A)
34D450:  MOVW            R12, #0x4EA
34D454:  CMP             R6, R12
34D456:  ADD             R1, PC; ScriptParams_ptr
34D458:  LDR             R2, [R1]; ScriptParams
34D45A:  VLDR            S4, [R2,#4]
34D45E:  VLDR            S6, [R2,#8]
34D462:  VLDR            S8, [R2,#0xC]
34D466:  VLDR            S10, [R2,#0x10]
34D46A:  BNE             loc_34D490
34D46C:  LDR             R2, =(ScriptParams_ptr - 0x34D472)
34D46E:  ADD             R2, PC; ScriptParams_ptr
34D470:  LDR             R2, [R2]; ScriptParams
34D472:  ADD.W           R3, R2, #0x1C
34D476:  VLDR            S0, [R2,#0x18]
34D47A:  VLDR            S12, [R2,#0x14]
34D47E:  VMAX.F32        D1, D4, D0
34D482:  VMIN.F32        D0, D4, D0
34D486:  VMOV            D4, D5
34D48A:  VMOV            D5, D6
34D48E:  B               loc_34D494
34D490:  ADD.W           R3, R2, #0x14
34D494:  LDR             R1, [R0,#0x14]
34D496:  VMAX.F32        D9, D2, D4
34D49A:  VMAX.F32        D8, D3, D5
34D49E:  MOVS            R5, #0
34D4A0:  ADD.W           R2, R1, #0x30 ; '0'
34D4A4:  CMP             R1, #0
34D4A6:  IT EQ
34D4A8:  ADDEQ           R2, R0, #4
34D4AA:  VMIN.F32        D10, D3, D5
34D4AE:  VLDR            S6, [R2]
34D4B2:  VMIN.F32        D11, D2, D4
34D4B6:  MOVS            R1, #0
34D4B8:  VLDR            S4, [R2,#4]
34D4BC:  VCMPE.F32       S6, S18
34D4C0:  LDR             R0, [R3]
34D4C2:  VMRS            APSR_nzcv, FPSCR
34D4C6:  VCMPE.F32       S6, S22
34D4CA:  IT GT
34D4CC:  MOVGT           R1, #1
34D4CE:  VMRS            APSR_nzcv, FPSCR
34D4D2:  IT LT
34D4D4:  MOVLT           R5, #1
34D4D6:  CMP             R6, R12
34D4D8:  ORR.W           R3, R5, R1
34D4DC:  MOV.W           R1, #0
34D4E0:  BNE             loc_34D50E
34D4E2:  CBNZ            R3, loc_34D52C
34D4E4:  VCMPE.F32       S4, S20
34D4E8:  VMRS            APSR_nzcv, FPSCR
34D4EC:  BLT             loc_34D52C
34D4EE:  VCMPE.F32       S4, S16
34D4F2:  VMRS            APSR_nzcv, FPSCR
34D4F6:  BGT             loc_34D52C
34D4F8:  VLDR            S4, [R2,#8]
34D4FC:  MOVS            R2, #0
34D4FE:  MOVS            R1, #0
34D500:  VCMPE.F32       S4, S0
34D504:  VMRS            APSR_nzcv, FPSCR
34D508:  VCMPE.F32       S4, S2
34D50C:  B               loc_34D51E
34D50E:  CBNZ            R3, loc_34D52C
34D510:  VCMPE.F32       S4, S20
34D514:  MOVS            R2, #0
34D516:  VMRS            APSR_nzcv, FPSCR
34D51A:  VCMPE.F32       S4, S16
34D51E:  IT GE
34D520:  MOVGE           R2, #1
34D522:  VMRS            APSR_nzcv, FPSCR
34D526:  IT LE
34D528:  MOVLE           R1, #1
34D52A:  ANDS            R1, R2
34D52C:  LDRB.W          R3, [R4,#0xF2]
34D530:  LDRH.W          R2, [R4,#0xF0]; float
34D534:  CMP             R3, #0
34D536:  IT NE
34D538:  MOVNE           R3, #1
34D53A:  CMP             R2, #0
34D53C:  EOR.W           R1, R1, R3
34D540:  BEQ             loc_34D572
34D542:  CMP             R2, #8
34D544:  BHI             loc_34D554
34D546:  LDRB.W          R3, [R4,#0xE5]
34D54A:  SUBS            R2, #1
34D54C:  STRH.W          R2, [R4,#0xF0]
34D550:  ANDS            R1, R3
34D552:  B               loc_34D572
34D554:  SUB.W           R3, R2, #0x15
34D558:  UXTH            R3, R3
34D55A:  CMP             R3, #7
34D55C:  BHI             loc_34D576
34D55E:  LDRB.W          R3, [R4,#0xE5]
34D562:  SUBS            R5, R2, #1
34D564:  CMP             R2, #0x15
34D566:  ORR.W           R1, R1, R3
34D56A:  IT EQ
34D56C:  MOVEQ           R5, #0
34D56E:  STRH.W          R5, [R4,#0xF0]
34D572:  STRB.W          R1, [R4,#0xE5]
34D576:  CMP             R0, #0
34D578:  BEQ             loc_34D678
34D57A:  MOVW            R0, #0x4EA
34D57E:  CMP             R6, R0
34D580:  BNE             loc_34D60A
34D582:  VMAX.F32        D12, D10, D8
34D586:  LDR             R0, [R4,#0x14]
34D588:  VMIN.F32        D2, D10, D8
34D58C:  VMAX.F32        D8, D11, D9
34D590:  ADD             R4, R0
34D592:  VMIN.F32        D4, D11, D9
34D596:  VADD.F32        S0, S0, S2
34D59A:  VLDR            S2, =-100.0
34D59E:  VMOV.F32        S6, #0.5
34D5A2:  VADD.F32        S4, S4, S24
34D5A6:  VADD.F32        S8, S8, S16
34D5AA:  VMUL.F32        S0, S0, S6
34D5AE:  VMUL.F32        S20, S4, S6
34D5B2:  VMUL.F32        S18, S8, S6
34D5B6:  VCMPE.F32       S0, S2
34D5BA:  VMRS            APSR_nzcv, FPSCR
34D5BE:  VSTR            S20, [SP,#0x70+var_58]
34D5C2:  VSTR            S18, [SP,#0x70+var_5C]
34D5C6:  BGT             loc_34D5E0
34D5C8:  VMOV            R0, S18; this
34D5CC:  VMOV            R1, S20; float
34D5D0:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34D5D4:  VMOV.F32        S0, #2.0
34D5D8:  VMOV            S2, R0
34D5DC:  VADD.F32        S0, S2, S0
34D5E0:  VSUB.F32        S2, S20, S24
34D5E4:  MOVS            R0, #0
34D5E6:  VSUB.F32        S4, S16, S18
34D5EA:  ADD             R3, SP, #0x70+var_5C; int
34D5EC:  VSTR            S0, [SP,#0x70+var_54]
34D5F0:  MOVS            R1, #2; int
34D5F2:  STR             R0, [SP,#0x70+var_60]
34D5F4:  MOVS            R2, #0; int
34D5F6:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34D5FA:  MOV             R0, R4; this
34D5FC:  VSTR            S2, [SP,#0x70+var_64]
34D600:  VSTR            S4, [SP,#0x70+var_70]
34D604:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34D608:  B               loc_34D69E
34D60A:  VMAX.F32        D12, D11, D9
34D60E:  LDR             R5, [R4,#0x14]
34D610:  VMIN.F32        D0, D11, D9
34D614:  VMAX.F32        D13, D10, D8
34D618:  VMIN.F32        D2, D10, D8
34D61C:  VMOV.F32        S2, #0.5
34D620:  VADD.F32        S0, S0, S24
34D624:  VADD.F32        S4, S4, S26
34D628:  VMUL.F32        S28, S0, S2
34D62C:  VMUL.F32        S30, S4, S2
34D630:  VMOV            R0, S28; this
34D634:  VMOV            R1, S30; float
34D638:  VSTR            S30, [SP,#0x70+var_58]
34D63C:  VSTR            S28, [SP,#0x70+var_5C]
34D640:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
34D644:  VMOV.F32        S0, #2.0
34D648:  ADD             R3, SP, #0x70+var_5C; int
34D64A:  VMOV            S2, R0
34D64E:  MOVS            R0, #0
34D650:  VSUB.F32        S4, S24, S28
34D654:  STR             R0, [SP,#0x70+var_60]
34D656:  MOVS            R1, #2; int
34D658:  MOVS            R2, #0; int
34D65A:  VADD.F32        S0, S2, S0
34D65E:  VSUB.F32        S2, S30, S26
34D662:  VSTR            S0, [SP,#0x70+var_54]
34D666:  VSTR            S2, [SP,#0x70+var_64]
34D66A:  STRD.W          R0, R0, [SP,#0x70+var_6C]; int
34D66E:  ADDS            R0, R5, R4; this
34D670:  VSTR            S4, [SP,#0x70+var_70]
34D674:  BLX             j__ZN8CShadows21RenderIndicatorShadowEjhP9RwTextureP7CVectorffffs; CShadows::RenderIndicatorShadow(uint,uchar,RwTexture *,CVector *,float,float,float,float,short)
34D678:  MOVW            R0, #0x4EA
34D67C:  CMP             R6, R0
34D67E:  BEQ             loc_34D69E
34D680:  LDR             R0, =(_ZN11CTheScripts7DbgFlagE_ptr - 0x34D686)
34D682:  ADD             R0, PC; _ZN11CTheScripts7DbgFlagE_ptr
34D684:  LDR             R0, [R0]; CTheScripts::DbgFlag ...
34D686:  LDRB            R0, [R0]; CTheScripts::DbgFlag
34D688:  CBZ             R0, loc_34D69E
34D68A:  VMOV            R0, S22; this
34D68E:  VMOV            R1, S20; float
34D692:  VMOV            R2, S18; float
34D696:  VMOV            R3, S16; float
34D69A:  BLX             j__ZN11CTheScripts15DrawDebugSquareEffff; CTheScripts::DrawDebugSquare(float,float,float,float)
34D69E:  ADD             SP, SP, #0x20 ; ' '
34D6A0:  VPOP            {D8-D15}
34D6A4:  POP.W           {R11}
34D6A8:  POP             {R4-R7,PC}
