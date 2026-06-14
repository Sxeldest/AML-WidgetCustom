; =========================================================
; Game Engine Function: _ZN15CClothesBuilder29BuildBoneIndexConversionTableEPhP16RpHAnimHierarchyi
; Address            : 0x45BAA8 - 0x45BAE8
; =========================================================

45BAA8:  PUSH            {R4-R7,LR}
45BAAA:  ADD             R7, SP, #0xC
45BAAC:  PUSH.W          {R8}
45BAB0:  MOV             R5, R0
45BAB2:  LDR             R0, =(gBoneIndices_ptr - 0x45BABC)
45BAB4:  MOV             R8, R1
45BAB6:  MOVS            R4, #0
45BAB8:  ADD             R0, PC; gBoneIndices_ptr
45BABA:  LDR             R0, [R0]; gBoneIndices
45BABC:  ADD.W           R6, R0, R2,LSL#7
45BAC0:  LDRSH.W         R1, [R6,R4,LSL#1]
45BAC4:  ADDS            R0, R1, #1
45BAC6:  BEQ             loc_45BAE2
45BAC8:  MOV             R0, R8
45BACA:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
45BACE:  UXTB            R1, R0
45BAD0:  CMP             R1, #0xFF
45BAD2:  IT EQ
45BAD4:  MOVEQ           R0, #0
45BAD6:  CMP             R4, #0x3F ; '?'
45BAD8:  STRB            R0, [R5,R4]
45BADA:  ADD.W           R0, R4, #1
45BADE:  MOV             R4, R0
45BAE0:  BLT             loc_45BAC0
45BAE2:  POP.W           {R8}
45BAE6:  POP             {R4-R7,PC}
