; =========================================================
; Game Engine Function: _Z36_rpSkinPrepareAtomicMatrixWorldSpaceP8RpAtomicP6RpSkinP16RpHAnimHierarchy
; Address            : 0x1C8888 - 0x1C896E
; =========================================================

1C8888:  PUSH            {R4-R7,LR}
1C888A:  ADD             R7, SP, #0xC
1C888C:  PUSH.W          {R8-R11}
1C8890:  SUB             SP, SP, #0x44
1C8892:  MOV             R8, R2
1C8894:  MOV             R4, R0
1C8896:  CMP.W           R8, #0
1C889A:  BEQ             loc_1C88E8
1C889C:  LDR             R0, =(_rpSkinGlobals_ptr - 0x1C88A2)
1C889E:  ADD             R0, PC; _rpSkinGlobals_ptr
1C88A0:  LDR             R0, [R0]; _rpSkinGlobals
1C88A2:  LDR.W           R10, [R0,#(dword_6B7280 - 0x6B7274)]
1C88A6:  MOV             R0, R1
1C88A8:  BLX             j_RpSkinGetSkinToBoneMatrices
1C88AC:  MOV             R11, R0
1C88AE:  LDR.W           R0, [R8]
1C88B2:  TST.W           R0, #2
1C88B6:  BNE             loc_1C88EE
1C88B8:  LSLS            R0, R0, #0x11
1C88BA:  BMI             loc_1C8924
1C88BC:  LDR.W           R0, [R8,#4]
1C88C0:  CMP             R0, #1
1C88C2:  BLT             loc_1C8964
1C88C4:  MOVS            R4, #0
1C88C6:  MOVS            R5, #0
1C88C8:  LDR.W           R2, [R8,#8]
1C88CC:  ADD.W           R0, R10, R4
1C88D0:  ADD.W           R1, R11, R4
1C88D4:  ADD             R2, R4
1C88D6:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C88DA:  LDR.W           R0, [R8,#4]
1C88DE:  ADDS            R5, #1
1C88E0:  ADDS            R4, #0x40 ; '@'
1C88E2:  CMP             R5, R0
1C88E4:  BLT             loc_1C88C8
1C88E6:  B               loc_1C8964
1C88E8:  MOV.W           R10, #0
1C88EC:  B               loc_1C8964
1C88EE:  LDR.W           R0, [R8,#4]
1C88F2:  CMP             R0, #1
1C88F4:  BLT             loc_1C8964
1C88F6:  MOVS            R4, #0
1C88F8:  MOVS            R6, #0xC
1C88FA:  MOVS            R5, #0
1C88FC:  LDR.W           R0, [R8,#0x10]
1C8900:  LDR             R0, [R0,R6]
1C8902:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
1C8906:  MOV             R2, R0
1C8908:  ADD.W           R0, R10, R4
1C890C:  ADD.W           R1, R11, R4
1C8910:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C8914:  LDR.W           R0, [R8,#4]
1C8918:  ADDS            R5, #1
1C891A:  ADDS            R6, #0x10
1C891C:  ADDS            R4, #0x40 ; '@'
1C891E:  CMP             R5, R0
1C8920:  BLT             loc_1C88FC
1C8922:  B               loc_1C8964
1C8924:  LDR             R0, [R4,#4]
1C8926:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
1C892A:  MOV             R5, R0
1C892C:  LDR.W           R0, [R8,#4]
1C8930:  CMP             R0, #1
1C8932:  BLT             loc_1C8964
1C8934:  ADD.W           R9, SP, #0x60+var_5C
1C8938:  MOVS            R4, #0
1C893A:  MOVS            R6, #0
1C893C:  LDR.W           R0, [R8,#8]
1C8940:  ADD.W           R1, R11, R4
1C8944:  ADDS            R2, R0, R4
1C8946:  MOV             R0, R9
1C8948:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C894C:  ADD.W           R0, R10, R4
1C8950:  MOV             R1, R9
1C8952:  MOV             R2, R5
1C8954:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C8958:  LDR.W           R0, [R8,#4]
1C895C:  ADDS            R6, #1
1C895E:  ADDS            R4, #0x40 ; '@'
1C8960:  CMP             R6, R0
1C8962:  BLT             loc_1C893C
1C8964:  MOV             R0, R10
1C8966:  ADD             SP, SP, #0x44 ; 'D'
1C8968:  POP.W           {R8-R11}
1C896C:  POP             {R4-R7,PC}
