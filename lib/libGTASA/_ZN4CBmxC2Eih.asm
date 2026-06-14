; =========================================================
; Game Engine Function: _ZN4CBmxC2Eih
; Address            : 0x568964 - 0x568AB4
; =========================================================

568964:  PUSH            {R4-R7,LR}; Alternative name is 'CBmx::CBmx(int, unsigned char)'
568966:  ADD             R7, SP, #0xC
568968:  PUSH.W          {R8-R11}
56896C:  SUB             SP, SP, #4
56896E:  VPUSH           {D8}
568972:  SUB             SP, SP, #0x40
568974:  MOV             R5, R1
568976:  MOV             R11, R0
568978:  BLX             j__ZN5CBikeC2Eih; CBike::CBike(int,uchar)
56897C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x568984)
56897E:  LDR             R1, =(_ZTV4CBmx_ptr - 0x568986)
568980:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
568982:  ADD             R1, PC; _ZTV4CBmx_ptr
568984:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
568986:  LDR             R1, [R1]; `vtable for'CBmx ...
568988:  ADDS            R1, #8
56898A:  STR.W           R1, [R11]
56898E:  LDR.W           R0, [R0,R5,LSL#2]
568992:  MOVS            R1, #0xA
568994:  STR.W           R1, [R11,#0x5A4]
568998:  LDR             R1, [R0]
56899A:  LDR             R1, [R1,#0x3C]
56899C:  BLX             R1
56899E:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x5689AE)
5689A0:  VMOV.I32        Q8, #0
5689A4:  MOV             R9, SP
5689A6:  ADD.W           R8, R9, #0x30 ; '0'
5689AA:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
5689AC:  ADD.W           R10, R9, #0x20 ; ' '
5689B0:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
5689B2:  ADD.W           R0, R1, R0,LSL#5
5689B6:  ADDW            R1, R11, #0x828
5689BA:  LDR             R0, [R0,#0x1C]
5689BC:  VST1.32         {D16-D17}, [R1]
5689C0:  MOVS            R1, #0
5689C2:  STRH.W          R1, [R11,#0x7C8]
5689C6:  STRB.W          R1, [R11,#0x848]
5689CA:  STR.W           R1, [R11,#0x838]
5689CE:  STR.W           R1, [R11,#0x83C]
5689D2:  SUBS            R1, R0, #7
5689D4:  CMP             R1, #2
5689D6:  IT HI
5689D8:  MOVHI           R0, #7
5689DA:  STR.W           R0, [R11,#0x654]
5689DE:  LDR.W           R6, [R11,#0x5C4]
5689E2:  ADD.W           R0, R6, #0x10
5689E6:  VLD1.32         {D16-D17}, [R0]
5689EA:  ADD.W           R0, R6, #0x20 ; ' '
5689EE:  VLD1.32         {D18-D19}, [R0]
5689F2:  ADD.W           R0, R6, #0x30 ; '0'
5689F6:  VLD1.32         {D20-D21}, [R0]
5689FA:  ADD.W           R0, R6, #0x40 ; '@'
5689FE:  VLD1.32         {D22-D23}, [R0]
568A02:  MOV             R0, R9
568A04:  VST1.64         {D22-D23}, [R8]
568A08:  VST1.64         {D20-D21}, [R10]
568A0C:  VST1.64         {D16-D17}, [R0]!
568A10:  VST1.64         {D18-D19}, [R0]
568A14:  LDR             R4, [R6,#4]
568A16:  CBZ             R4, loc_568A32
568A18:  MOV             R5, SP
568A1A:  ADD.W           R1, R4, #0x10
568A1E:  MOV             R0, R5
568A20:  MOVS            R2, #2
568A22:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
568A26:  LDR             R4, [R4,#4]
568A28:  CMP             R4, R6
568A2A:  IT EQ
568A2C:  MOVEQ           R4, #0
568A2E:  CMP             R4, #0
568A30:  BNE             loc_568A1A
568A32:  LDR.W           R6, [R11,#0x5C8]
568A36:  VLDR            S16, [SP,#0x68+var_34]
568A3A:  ADD.W           R0, R6, #0x10
568A3E:  VLD1.32         {D16-D17}, [R0]
568A42:  ADD.W           R0, R6, #0x20 ; ' '
568A46:  VLD1.32         {D18-D19}, [R0]
568A4A:  ADD.W           R0, R6, #0x40 ; '@'
568A4E:  VLD1.32         {D20-D21}, [R0]
568A52:  ADD.W           R0, R6, #0x30 ; '0'
568A56:  VLD1.32         {D22-D23}, [R0]
568A5A:  VST1.64         {D22-D23}, [R10]
568A5E:  VST1.64         {D20-D21}, [R8]
568A62:  VST1.64         {D16-D17}, [R9]!
568A66:  VST1.64         {D18-D19}, [R9]
568A6A:  LDR             R4, [R6,#4]
568A6C:  CBZ             R4, loc_568A88
568A6E:  MOV             R5, SP
568A70:  ADD.W           R1, R4, #0x10
568A74:  MOV             R0, R5
568A76:  MOVS            R2, #2
568A78:  BLX             j__Z17RwMatrixTransformP11RwMatrixTagPKS_15RwOpCombineType; RwMatrixTransform(RwMatrixTag *,RwMatrixTag const*,RwOpCombineType)
568A7C:  LDR             R4, [R4,#4]
568A7E:  CMP             R4, R6
568A80:  IT EQ
568A82:  MOVEQ           R4, #0
568A84:  CMP             R4, #0
568A86:  BNE             loc_568A70
568A88:  VLDR            S0, [SP,#0x68+var_34]
568A8C:  ADD.W           R0, R11, #0x840
568A90:  VSUB.F32        S0, S16, S0
568A94:  VDIV.F32        S2, S16, S0
568A98:  VSTR            S0, [R0]
568A9C:  ADDW            R0, R11, #0x844
568AA0:  VSTR            S2, [R0]
568AA4:  MOV             R0, R11
568AA6:  ADD             SP, SP, #0x40 ; '@'
568AA8:  VPOP            {D8}
568AAC:  ADD             SP, SP, #4
568AAE:  POP.W           {R8-R11}
568AB2:  POP             {R4-R7,PC}
