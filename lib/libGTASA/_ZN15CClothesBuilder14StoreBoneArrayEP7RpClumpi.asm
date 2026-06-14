; =========================================================
; Game Engine Function: _ZN15CClothesBuilder14StoreBoneArrayEP7RpClumpi
; Address            : 0x459D48 - 0x459DBA
; =========================================================

459D48:  PUSH            {R4-R7,LR}
459D4A:  ADD             R7, SP, #0xC
459D4C:  PUSH.W          {R11}
459D50:  SUB             SP, SP, #8
459D52:  MOV             R6, R1
459D54:  LDR             R1, =(_Z20FindAtomicFromNameCBP8RpAtomicPv_ptr - 0x459D5E)
459D56:  LDR             R2, =(aNormal_1 - 0x459D60); "normal"
459D58:  MOVS            R5, #0
459D5A:  ADD             R1, PC; _Z20FindAtomicFromNameCBP8RpAtomicPv_ptr
459D5C:  ADD             R2, PC; "normal"
459D5E:  STRD.W          R2, R5, [SP,#0x18+var_18]
459D62:  LDR             R1, [R1]; FindAtomicFromNameCB(RpAtomic *,void *)
459D64:  MOV             R2, SP
459D66:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
459D6A:  LDR             R0, [SP,#0x18+var_14]
459D6C:  BLX             j_RpSkinAtomicGetHAnimHierarchy
459D70:  LDR             R1, [R0,#4]
459D72:  CMP             R1, #1
459D74:  BLT             loc_459DA0
459D76:  LDR             R1, =(gBoneIndices_ptr - 0x459D7E)
459D78:  MOVS            R3, #0
459D7A:  ADD             R1, PC; gBoneIndices_ptr
459D7C:  LDR             R1, [R1]; gBoneIndices
459D7E:  ADD.W           R2, R1, R6,LSL#7
459D82:  MOV.W           R1, #0xFFFFFFFF
459D86:  LDR             R5, [R0,#0x10]
459D88:  LDR.W           R5, [R5,R3,LSL#3]
459D8C:  STRH            R5, [R2,R3]
459D8E:  ADDS            R5, R1, #2
459D90:  ADDS            R3, #2
459D92:  LDR             R4, [R0,#4]
459D94:  ADDS            R1, #1
459D96:  CMP             R5, R4
459D98:  BLT             loc_459D86
459D9A:  CMP             R1, #0x3E ; '>'
459D9C:  BGT             loc_459DB2
459D9E:  ADDS            R5, R1, #1
459DA0:  LDR             R0, =(gBoneIndices_ptr - 0x459DAA)
459DA2:  MOVW            R1, #0xFFFF
459DA6:  ADD             R0, PC; gBoneIndices_ptr
459DA8:  LDR             R0, [R0]; gBoneIndices
459DAA:  ADD.W           R0, R0, R6,LSL#7
459DAE:  STRH.W          R1, [R0,R5,LSL#1]
459DB2:  ADD             SP, SP, #8
459DB4:  POP.W           {R11}
459DB8:  POP             {R4-R7,PC}
