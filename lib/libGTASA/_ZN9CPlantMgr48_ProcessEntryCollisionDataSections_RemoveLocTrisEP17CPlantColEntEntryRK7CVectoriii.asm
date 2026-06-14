; =========================================================
; Game Engine Function: _ZN9CPlantMgr48_ProcessEntryCollisionDataSections_RemoveLocTrisEP17CPlantColEntEntryRK7CVectoriii
; Address            : 0x2CE4E8 - 0x2CE71A
; =========================================================

2CE4E8:  PUSH            {R4-R7,LR}
2CE4EA:  ADD             R7, SP, #0xC
2CE4EC:  PUSH.W          {R8-R11}
2CE4F0:  SUB             SP, SP, #4
2CE4F2:  VPUSH           {D8-D9}
2CE4F6:  MOV             R6, R0
2CE4F8:  MOV             R5, R3
2CE4FA:  LDR             R0, [R6]; this
2CE4FC:  MOV             R4, R2
2CE4FE:  MOV             R9, R1
2CE500:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2CE504:  LDR.W           R10, [R7,#arg_0]
2CE508:  CMP             R5, R10
2CE50A:  BGT.W           loc_2CE70E
2CE50E:  LDR             R0, =(g_procObjMan_ptr - 0x2CE51C)
2CE510:  VMOV.F32        S16, #0.5
2CE514:  VLDR            S18, =10000.0
2CE518:  ADD             R0, PC; g_procObjMan_ptr
2CE51A:  LDR.W           R8, [R0]; g_procObjMan
2CE51E:  LDR             R0, [R6,#4]
2CE520:  MOV             R11, R5
2CE522:  LDR.W           R5, [R0,R11,LSL#2]
2CE526:  CBZ             R5, loc_2CE54C
2CE528:  LDRB.W          R0, [R5,#0x48]
2CE52C:  AND.W           R0, R0, #6
2CE530:  CMP             R0, #2
2CE532:  BNE             loc_2CE54C
2CE534:  MOV             R0, R8; this
2CE536:  MOV             R1, R5; CPlantLocTri *
2CE538:  BLX             j__ZN15ProcObjectMan_c20ProcessTriangleAddedEP12CPlantLocTri; ProcObjectMan_c::ProcessTriangleAdded(CPlantLocTri *)
2CE53C:  CMP             R0, #0
2CE53E:  ITTT NE
2CE540:  LDRBNE.W        R0, [R5,#0x48]
2CE544:  ORRNE.W         R0, R0, #4
2CE548:  STRBNE.W        R0, [R5,#0x48]
2CE54C:  CMP.W           R4, #0xFAFAFAFA
2CE550:  ITT NE
2CE552:  ANDNE.W         R0, R11, #7
2CE556:  CMPNE           R0, R4
2CE558:  BNE.W           loc_2CE704
2CE55C:  LDR             R0, [R6,#4]
2CE55E:  LDR.W           R0, [R0,R11,LSL#2]; this
2CE562:  CMP             R0, #0
2CE564:  BEQ.W           loc_2CE704
2CE568:  VLDR            S6, [R0]
2CE56C:  VLDR            S0, [R9]
2CE570:  VLDR            S8, [R0,#4]
2CE574:  VLDR            S4, [R9,#4]
2CE578:  VSUB.F32        S12, S0, S6
2CE57C:  VLDR            S6, [R0,#0x18]
2CE580:  VLDR            S10, [R0,#0x1C]
2CE584:  VSUB.F32        S14, S4, S8
2CE588:  VSUB.F32        S6, S0, S6
2CE58C:  VLDR            S1, [R0,#8]
2CE590:  VSUB.F32        S10, S4, S10
2CE594:  VLDR            S2, [R9,#8]
2CE598:  VLDR            S3, [R0,#0x20]
2CE59C:  VSUB.F32        S1, S2, S1
2CE5A0:  VSUB.F32        S8, S2, S3
2CE5A4:  VADD.F32        S7, S12, S6
2CE5A8:  VADD.F32        S5, S14, S10
2CE5AC:  VADD.F32        S3, S1, S8
2CE5B0:  VMUL.F32        S7, S7, S16
2CE5B4:  VMUL.F32        S5, S5, S16
2CE5B8:  VMUL.F32        S3, S3, S16
2CE5BC:  VMUL.F32        S7, S7, S7
2CE5C0:  VMUL.F32        S5, S5, S5
2CE5C4:  VMUL.F32        S3, S3, S3
2CE5C8:  VADD.F32        S5, S7, S5
2CE5CC:  VADD.F32        S3, S5, S3
2CE5D0:  VCMPE.F32       S3, S18
2CE5D4:  VMRS            APSR_nzcv, FPSCR
2CE5D8:  BLT.W           loc_2CE704
2CE5DC:  VLDR            S3, [R0,#0xC]
2CE5E0:  VLDR            S5, [R0,#0x10]
2CE5E4:  VSUB.F32        S3, S0, S3
2CE5E8:  VLDR            S9, [R0,#0x14]
2CE5EC:  VSUB.F32        S7, S4, S5
2CE5F0:  VSUB.F32        S5, S2, S9
2CE5F4:  VADD.F32        S11, S3, S6
2CE5F8:  VADD.F32        S9, S7, S10
2CE5FC:  VADD.F32        S13, S5, S8
2CE600:  VMUL.F32        S11, S11, S16
2CE604:  VMUL.F32        S9, S9, S16
2CE608:  VMUL.F32        S13, S13, S16
2CE60C:  VMUL.F32        S11, S11, S11
2CE610:  VMUL.F32        S9, S9, S9
2CE614:  VMUL.F32        S13, S13, S13
2CE618:  VADD.F32        S9, S11, S9
2CE61C:  VADD.F32        S9, S9, S13
2CE620:  VCMPE.F32       S9, S18
2CE624:  VMRS            APSR_nzcv, FPSCR
2CE628:  BLT             loc_2CE704
2CE62A:  VADD.F32        S9, S14, S7
2CE62E:  VADD.F32        S11, S12, S3
2CE632:  VADD.F32        S13, S1, S5
2CE636:  VMUL.F32        S9, S9, S16
2CE63A:  VMUL.F32        S11, S11, S16
2CE63E:  VMUL.F32        S13, S13, S16
2CE642:  VMUL.F32        S9, S9, S9
2CE646:  VMUL.F32        S11, S11, S11
2CE64A:  VMUL.F32        S13, S13, S13
2CE64E:  VADD.F32        S9, S11, S9
2CE652:  VADD.F32        S9, S9, S13
2CE656:  VCMPE.F32       S9, S18
2CE65A:  VMRS            APSR_nzcv, FPSCR
2CE65E:  BLT             loc_2CE704
2CE660:  VMUL.F32        S14, S14, S14
2CE664:  VMUL.F32        S12, S12, S12
2CE668:  VMUL.F32        S1, S1, S1
2CE66C:  VADD.F32        S12, S12, S14
2CE670:  VADD.F32        S12, S12, S1
2CE674:  VCMPE.F32       S12, S18
2CE678:  VMRS            APSR_nzcv, FPSCR
2CE67C:  ITTTT GE
2CE67E:  VMULGE.F32      S12, S7, S7
2CE682:  VMULGE.F32      S14, S3, S3
2CE686:  VMULGE.F32      S1, S5, S5
2CE68A:  VADDGE.F32      S12, S14, S12
2CE68E:  ITTT GE
2CE690:  VADDGE.F32      S12, S12, S1
2CE694:  VCMPEGE.F32     S12, S18
2CE698:  VMRSGE          APSR_nzcv, FPSCR
2CE69C:  BLT             loc_2CE704
2CE69E:  VMUL.F32        S10, S10, S10
2CE6A2:  VMUL.F32        S6, S6, S6
2CE6A6:  VMUL.F32        S8, S8, S8
2CE6AA:  VADD.F32        S6, S6, S10
2CE6AE:  VADD.F32        S6, S6, S8
2CE6B2:  VCMPE.F32       S6, S18
2CE6B6:  VMRS            APSR_nzcv, FPSCR
2CE6BA:  ITTTT GE
2CE6BC:  VLDRGE          S6, [R0,#0x24]
2CE6C0:  VLDRGE          S8, [R0,#0x28]
2CE6C4:  VLDRGE          S10, [R0,#0x2C]
2CE6C8:  VSUBGE.F32      S4, S4, S8
2CE6CC:  ITTTT GE
2CE6CE:  VMULGE.F32      S4, S4, S4
2CE6D2:  VSUBGE.F32      S0, S0, S6
2CE6D6:  VMULGE.F32      S0, S0, S0
2CE6DA:  VSUBGE.F32      S2, S2, S10
2CE6DE:  ITTTT GE
2CE6E0:  VMULGE.F32      S2, S2, S2
2CE6E4:  VADDGE.F32      S0, S0, S4
2CE6E8:  VADDGE.F32      S0, S0, S2
2CE6EC:  VCMPEGE.F32     S0, S18
2CE6F0:  IT GE
2CE6F2:  VMRSGE          APSR_nzcv, FPSCR
2CE6F6:  BLT             loc_2CE704
2CE6F8:  BLX             j__ZN12CPlantLocTri7ReleaseEv; CPlantLocTri::Release(void)
2CE6FC:  LDR             R0, [R6,#4]
2CE6FE:  MOVS            R1, #0
2CE700:  STR.W           R1, [R0,R11,LSL#2]
2CE704:  ADD.W           R5, R11, #1
2CE708:  CMP             R11, R10
2CE70A:  BLT.W           loc_2CE51E
2CE70E:  VPOP            {D8-D9}
2CE712:  ADD             SP, SP, #4
2CE714:  POP.W           {R8-R11}
2CE718:  POP             {R4-R7,PC}
