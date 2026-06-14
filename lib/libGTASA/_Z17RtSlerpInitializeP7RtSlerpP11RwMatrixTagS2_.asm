; =========================================================
; Game Engine Function: _Z17RtSlerpInitializeP7RtSlerpP11RwMatrixTagS2_
; Address            : 0x2116F4 - 0x2117E2
; =========================================================

2116F4:  PUSH            {R4,R5,R7,LR}
2116F6:  ADD             R7, SP, #8
2116F8:  SUB             SP, SP, #0x50
2116FA:  MOV             R4, R0
2116FC:  MOV.W           R0, #0x3F800000
211700:  MOVS            R3, #0
211702:  STR             R0, [SP,#0x58+var_40]
211704:  STR             R0, [SP,#0x58+var_2C]
211706:  STR             R3, [SP,#0x58+var_44]
211708:  STR             R3, [SP,#0x58+var_4C]
21170A:  STRD.W          R0, R3, [SP,#0x58+var_54]
21170E:  MOV.W           R0, #0xFFFFFFFF
211712:  STR             R3, [SP,#0x58+var_3C]
211714:  STRD.W          R3, R3, [SP,#0x58+var_34]
211718:  STRD.W          R3, R3, [SP,#0x58+var_20]
21171C:  STR             R0, [SP,#0x58+var_48]
21171E:  STR             R3, [SP,#0x58+var_24]
211720:  LDR             R0, [R4]
211722:  TST.W           R0, #1
211726:  BNE             loc_211766
211728:  MOV             R0, R1
21172A:  LDR             R3, [R4,#4]
21172C:  VLD1.32         {D16-D17}, [R0]!
211730:  ADD.W           R5, R1, #0x20 ; ' '
211734:  VLD1.32         {D20-D21}, [R0]
211738:  ADD.W           R0, R1, #0x30 ; '0'
21173C:  VLD1.32         {D22-D23}, [R0]
211740:  ADD.W           R0, R3, #0x30 ; '0'
211744:  VLD1.32         {D18-D19}, [R5]
211748:  VST1.32         {D22-D23}, [R0]
21174C:  ADD.W           R0, R3, #0x20 ; ' '
211750:  VST1.32         {D18-D19}, [R0]
211754:  VST1.32         {D16-D17}, [R3]!
211758:  VST1.32         {D20-D21}, [R3]
21175C:  LDR             R0, [R4]
21175E:  LSLS            R0, R0, #0x1E
211760:  BPL             loc_21176C
211762:  STR             R2, [R4,#8]
211764:  B               loc_2117A0
211766:  STR             R1, [R4,#4]
211768:  LSLS            R0, R0, #0x1E
21176A:  BMI             loc_211762
21176C:  MOV             R0, R2
21176E:  LDR             R1, [R4,#8]
211770:  VLD1.32         {D16-D17}, [R0]!
211774:  ADD.W           R3, R2, #0x20 ; ' '
211778:  VLD1.32         {D20-D21}, [R0]
21177C:  ADD.W           R0, R2, #0x30 ; '0'
211780:  VLD1.32         {D22-D23}, [R0]
211784:  ADD.W           R0, R1, #0x30 ; '0'
211788:  VLD1.32         {D18-D19}, [R3]
21178C:  VST1.32         {D22-D23}, [R0]
211790:  ADD.W           R0, R1, #0x20 ; ' '
211794:  VST1.32         {D18-D19}, [R0]
211798:  VST1.32         {D16-D17}, [R1]!
21179C:  VST1.32         {D20-D21}, [R1]
2117A0:  ADD             R5, SP, #0x58+var_54
2117A2:  LDR             R1, [R4,#4]
2117A4:  MOV             R0, R5
2117A6:  BLX             j__Z14RwMatrixInvertP11RwMatrixTagPKS_; RwMatrixInvert(RwMatrixTag *,RwMatrixTag const*)
2117AA:  LDR             R1, [R4,#8]
2117AC:  MOV             R0, R5
2117AE:  MOVS            R2, #2
2117B0:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
2117B4:  ADD.W           R1, R4, #0xC
2117B8:  ADD.W           R2, R4, #0x18
2117BC:  ADD             R3, SP, #0x58+var_14
2117BE:  MOV             R0, R5
2117C0:  BLX             j__Z19RwMatrixQueryRotatePK11RwMatrixTagP5RwV3dPfS3_; RwMatrixQueryRotate(RwMatrixTag const*,RwV3d *,float *,RwV3d *)
2117C4:  VMOV.F32        S0, #2.0
2117C8:  VLDR            S2, [R4,#0x18]
2117CC:  MOVS            R0, #0
2117CE:  VCMPE.F32       S2, S0
2117D2:  VMRS            APSR_nzcv, FPSCR
2117D6:  IT LT
2117D8:  MOVLT           R0, #1
2117DA:  STR             R0, [R4,#0x1C]
2117DC:  MOV             R0, R4
2117DE:  ADD             SP, SP, #0x50 ; 'P'
2117E0:  POP             {R4,R5,R7,PC}
