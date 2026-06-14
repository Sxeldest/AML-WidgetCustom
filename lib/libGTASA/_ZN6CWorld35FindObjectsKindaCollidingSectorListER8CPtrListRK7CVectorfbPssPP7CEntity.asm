; =========================================================
; Game Engine Function: _ZN6CWorld35FindObjectsKindaCollidingSectorListER8CPtrListRK7CVectorfbPssPP7CEntity
; Address            : 0x429814 - 0x4298E4
; =========================================================

429814:  PUSH            {R4-R7,LR}
429816:  ADD             R7, SP, #0xC
429818:  PUSH.W          {R8-R11}
42981C:  SUB             SP, SP, #4
42981E:  VPUSH           {D8}
429822:  SUB             SP, SP, #0x10
429824:  LDR             R5, [R0]
429826:  MOV             R8, R3
429828:  MOV             R9, R1
42982A:  CMP             R5, #0
42982C:  BEQ             loc_4298D6
42982E:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x42983A)
429830:  VMOV            S16, R2
429834:  MOV             R6, SP
429836:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
429838:  LDR.W           R11, [R0]; CWorld::ms_nCurrentScanCode ...
42983C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x429842)
42983E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
429840:  LDR.W           R10, [R0]; CModelInfo::ms_modelInfoPtrs ...
429844:  LDRD.W          R4, R5, [R5]
429848:  LDRH.W          R0, [R11]; CWorld::ms_nCurrentScanCode
42984C:  LDRH            R1, [R4,#0x30]
42984E:  CMP             R1, R0
429850:  BEQ             loc_4298D2
429852:  STRH            R0, [R4,#0x30]
429854:  MOV             R0, R6; this
429856:  MOV             R1, R4
429858:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
42985C:  MOV             R0, R6
42985E:  MOV             R1, R9
429860:  VLD1.32         {D16}, [R0@64]!
429864:  CMP.W           R8, #0
429868:  VLD1.32         {D17}, [R1]!
42986C:  VSUB.F32        D16, D17, D16
429870:  VLDR            S0, [R0]
429874:  VLDR            S2, [R1]
429878:  VSUB.F32        S0, S2, S0
42987C:  VMUL.F32        D1, D16, D16
429880:  VADD.F32        S2, S2, S3
429884:  VMUL.F32        S0, S0, S0
429888:  VADD.F32        S0, S2, S0
42988C:  IT NE
42988E:  VMOVNE.F32      S0, S2
429892:  LDRSH.W         R0, [R4,#0x26]
429896:  VSQRT.F32       S0, S0
42989A:  LDR.W           R0, [R10,R0,LSL#2]
42989E:  LDR             R0, [R0,#0x2C]
4298A0:  VLDR            S2, [R0,#0x24]
4298A4:  VADD.F32        S2, S2, S16
4298A8:  VCMPE.F32       S0, S2
4298AC:  VMRS            APSR_nzcv, FPSCR
4298B0:  BGE             loc_4298D2
4298B2:  LDR             R0, [R7,#arg_0]
4298B4:  LDR             R1, [R7,#arg_4]
4298B6:  LDRSH.W         R0, [R0]
4298BA:  CMP             R0, R1
4298BC:  BGE             loc_4298D2
4298BE:  LDR             R1, [R7,#arg_8]
4298C0:  CBZ             R1, loc_4298CC
4298C2:  STR.W           R4, [R1,R0,LSL#2]
4298C6:  LDR             R1, [R7,#arg_0]
4298C8:  LDRH            R0, [R1]
4298CA:  B               loc_4298CE
4298CC:  LDR             R1, [R7,#arg_0]
4298CE:  ADDS            R0, #1
4298D0:  STRH            R0, [R1]
4298D2:  CMP             R5, #0
4298D4:  BNE             loc_429844
4298D6:  ADD             SP, SP, #0x10
4298D8:  VPOP            {D8}
4298DC:  ADD             SP, SP, #4
4298DE:  POP.W           {R8-R11}
4298E2:  POP             {R4-R7,PC}
