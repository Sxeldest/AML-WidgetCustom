; =========================================================
; Game Engine Function: _ZN11CWaterLevel17ScanThroughBlocksEv
; Address            : 0x596628 - 0x59675E
; =========================================================

596628:  PUSH            {R7,LR}
59662A:  MOV             R7, SP
59662C:  SUB             SP, SP, #0x68
59662E:  LDR             R0, =(TheCamera_ptr - 0x596638)
596630:  MOVS            R2, #0
596632:  LDR             R1, =(_ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr - 0x59663A)
596634:  ADD             R0, PC; TheCamera_ptr
596636:  ADD             R1, PC; _ZN11CWaterLevel35m_NumBlocksOutsideWorldToBeRenderedE_ptr
596638:  LDR             R0, [R0]; TheCamera
59663A:  LDR             R1, [R1]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered ...
59663C:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
596640:  STR             R2, [R1]; CWaterLevel::m_NumBlocksOutsideWorldToBeRendered
596642:  VLDR            S0, [R0,#0x84]
596646:  VLDR            S2, [R0,#0x68]
59664A:  VLDR            S4, [R0,#0x6C]
59664E:  VNMUL.F32       S6, S0, S2
596652:  VMUL.F32        S8, S0, S4
596656:  VMUL.F32        S2, S0, S2
59665A:  VNMUL.F32       S4, S0, S4
59665E:  VSTR            S6, [SP,#0x70+var_44]
596662:  VSTR            S0, [SP,#0x70+var_3C]
596666:  VSTR            S2, [SP,#0x70+var_38]
59666A:  VSTR            S0, [SP,#0x70+var_30]
59666E:  VSTR            S0, [SP,#0x70+var_24]
596672:  VSTR            S2, [SP,#0x70+var_2C]
596676:  VSTR            S0, [SP,#0x70+var_18]
59667A:  VSTR            S6, [SP,#0x70+var_20]
59667E:  VSTR            S8, [SP,#0x70+var_40]
596682:  VSTR            S8, [SP,#0x70+var_34]
596686:  VSTR            S4, [SP,#0x70+var_28]
59668A:  VSTR            S4, [SP,#0x70+var_1C]
59668E:  STRD.W          R2, R2, [SP,#0x70+var_14]
596692:  STR             R2, [SP,#0x70+var_C]
596694:  MOVS            R2, #5
596696:  LDR             R0, [R0,#4]
596698:  ADD.W           R3, R0, #0x10
59669C:  ADD             R0, SP, #0x70+var_44
59669E:  MOV             R1, R0
5966A0:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
5966A4:  VLDR            S0, =500.0
5966A8:  VMOV.F32        S5, #6.0
5966AC:  VLDR            S2, [SP,#0x70+var_44]
5966B0:  MOVS            R1, #5
5966B2:  VLDR            S4, [SP,#0x70+var_40]
5966B6:  VDIV.F32        S2, S2, S0
5966BA:  LDR             R0, =(_ZN11CWaterLevel8BlockHitEii_ptr - 0x5966C0)
5966BC:  ADD             R0, PC; _ZN11CWaterLevel8BlockHitEii_ptr
5966BE:  LDR             R2, [R0]; CWaterLevel::BlockHit(int,int)
5966C0:  ADD             R0, SP, #0x70+var_6C
5966C2:  VADD.F32        S2, S2, S5
5966C6:  VLDR            S6, [SP,#0x70+var_38]
5966CA:  VLDR            S8, [SP,#0x70+var_34]
5966CE:  VLDR            S10, [SP,#0x70+var_2C]
5966D2:  VLDR            S12, [SP,#0x70+var_28]
5966D6:  VLDR            S14, [SP,#0x70+var_14]
5966DA:  VLDR            S1, [SP,#0x70+var_20]
5966DE:  VLDR            S3, [SP,#0x70+var_1C]
5966E2:  VSTR            S2, [SP,#0x70+var_6C]
5966E6:  VLDR            S2, [SP,#0x70+var_10]
5966EA:  VDIV.F32        S4, S4, S0
5966EE:  VDIV.F32        S6, S6, S0
5966F2:  VDIV.F32        S8, S8, S0
5966F6:  VDIV.F32        S10, S10, S0
5966FA:  VDIV.F32        S12, S12, S0
5966FE:  VDIV.F32        S14, S14, S0
596702:  VDIV.F32        S1, S1, S0
596706:  VDIV.F32        S3, S3, S0
59670A:  VDIV.F32        S0, S2, S0
59670E:  VADD.F32        S4, S4, S5
596712:  VADD.F32        S6, S6, S5
596716:  VADD.F32        S8, S8, S5
59671A:  VADD.F32        S10, S10, S5
59671E:  VADD.F32        S12, S12, S5
596722:  VADD.F32        S14, S14, S5
596726:  VADD.F32        S1, S1, S5
59672A:  VADD.F32        S3, S3, S5
59672E:  VSTR            S4, [SP,#0x70+var_68]
596732:  VADD.F32        S0, S0, S5
596736:  VSTR            S6, [SP,#0x70+var_64]
59673A:  VSTR            S8, [SP,#0x70+var_60]
59673E:  VSTR            S10, [SP,#0x70+var_5C]
596742:  VSTR            S12, [SP,#0x70+var_58]
596746:  VSTR            S1, [SP,#0x70+var_54]
59674A:  VSTR            S3, [SP,#0x70+var_50]
59674E:  VSTR            S14, [SP,#0x70+var_4C]
596752:  VSTR            S0, [SP,#0x70+var_48]
596756:  BLX.W           j__ZN10CWorldScan9ScanWorldEP5RwV2diPFviiE; CWorldScan::ScanWorld(RwV2d *,int,void (*)(int,int))
59675A:  ADD             SP, SP, #0x68 ; 'h'
59675C:  POP             {R7,PC}
