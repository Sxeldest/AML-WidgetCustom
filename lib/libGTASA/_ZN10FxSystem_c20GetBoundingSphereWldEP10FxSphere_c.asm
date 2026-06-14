; =========================================================
; Game Engine Function: _ZN10FxSystem_c20GetBoundingSphereWldEP10FxSphere_c
; Address            : 0x36E794 - 0x36E836
; =========================================================

36E794:  PUSH            {R4-R7,LR}
36E796:  ADD             R7, SP, #0xC
36E798:  PUSH.W          {R8}
36E79C:  MOV             R5, R0
36E79E:  MOV             R8, R1
36E7A0:  LDR             R0, [R5,#0x78]
36E7A2:  CBZ             R0, loc_36E7CE
36E7A4:  LDR             R0, =(g_fxMan_ptr - 0x36E7AA)
36E7A6:  ADD             R0, PC; g_fxMan_ptr
36E7A8:  LDR             R0, [R0]; g_fxMan ; this
36E7AA:  BLX             j__ZN11FxManager_c16FxRwMatrixCreateEv; FxManager_c::FxRwMatrixCreate(void)
36E7AE:  ADD.W           R4, R5, #0x14
36E7B2:  MOV             R6, R0
36E7B4:  MOV             R0, R4
36E7B6:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E7BA:  LDR             R0, [R5,#0xC]
36E7BC:  CBZ             R0, loc_36E7D2
36E7BE:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E7C2:  LDR             R2, [R5,#0xC]
36E7C4:  MOV             R0, R6
36E7C6:  MOV             R1, R4
36E7C8:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
36E7CC:  B               loc_36E806
36E7CE:  MOVS            R4, #0
36E7D0:  B               loc_36E82E
36E7D2:  MOV             R0, R4
36E7D4:  ADD.W           R1, R4, #0x20 ; ' '
36E7D8:  VLD1.32         {D16-D17}, [R0]!
36E7DC:  VLD1.32         {D20-D21}, [R0]
36E7E0:  ADD.W           R0, R4, #0x30 ; '0'
36E7E4:  VLD1.32         {D22-D23}, [R0]
36E7E8:  ADD.W           R0, R6, #0x30 ; '0'
36E7EC:  VLD1.32         {D18-D19}, [R1]
36E7F0:  VST1.32         {D22-D23}, [R0]
36E7F4:  ADD.W           R0, R6, #0x20 ; ' '
36E7F8:  VST1.32         {D18-D19}, [R0]
36E7FC:  MOV             R0, R6
36E7FE:  VST1.32         {D16-D17}, [R0]!
36E802:  VST1.32         {D20-D21}, [R0]
36E806:  MOV             R0, R6
36E808:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
36E80C:  LDR             R1, [R5,#0x78]
36E80E:  MOV             R0, R8
36E810:  MOVS            R2, #1
36E812:  MOV             R3, R6
36E814:  MOVS            R4, #1
36E816:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
36E81A:  LDR             R0, =(g_fxMan_ptr - 0x36E822)
36E81C:  LDR             R1, [R5,#0x78]
36E81E:  ADD             R0, PC; g_fxMan_ptr
36E820:  LDR             R0, [R0]; g_fxMan
36E822:  LDR             R1, [R1,#0xC]
36E824:  STR.W           R1, [R8,#0xC]
36E828:  MOV             R1, R6
36E82A:  BLX             j__ZN11FxManager_c17FxRwMatrixDestroyEP11RwMatrixTag; FxManager_c::FxRwMatrixDestroy(RwMatrixTag *)
36E82E:  MOV             R0, R4
36E830:  POP.W           {R8}
36E834:  POP             {R4-R7,PC}
