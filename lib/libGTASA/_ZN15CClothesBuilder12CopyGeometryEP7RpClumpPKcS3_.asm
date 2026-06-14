; =========================================================
; Game Engine Function: _ZN15CClothesBuilder12CopyGeometryEP7RpClumpPKcS3_
; Address            : 0x45B8B0 - 0x45BAA4
; =========================================================

45B8B0:  PUSH            {R4-R7,LR}
45B8B2:  ADD             R7, SP, #0xC
45B8B4:  PUSH.W          {R8-R11}
45B8B8:  SUB             SP, SP, #0x2C
45B8BA:  MOV             R5, R0
45B8BC:  LDR             R0, =(_Z20FindAtomicFromNameCBP8RpAtomicPv_ptr - 0x45B8C6)
45B8BE:  MOV             R9, R2
45B8C0:  ADD             R2, SP, #0x48+var_24
45B8C2:  ADD             R0, PC; _Z20FindAtomicFromNameCBP8RpAtomicPv_ptr
45B8C4:  STR             R1, [SP,#0x48+var_24]
45B8C6:  MOV.W           R8, #0
45B8CA:  LDR             R6, [R0]; FindAtomicFromNameCB(RpAtomic *,void *)
45B8CC:  MOV             R0, R5
45B8CE:  STR.W           R8, [SP,#0x48+var_20]
45B8D2:  MOV             R1, R6
45B8D4:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
45B8D8:  ADD             R2, SP, #0x48+var_24
45B8DA:  LDR             R4, [SP,#0x48+var_20]
45B8DC:  MOV             R0, R5
45B8DE:  MOV             R1, R6
45B8E0:  STR             R4, [SP,#0x48+var_2C]
45B8E2:  STRD.W          R9, R8, [SP,#0x48+var_24]
45B8E6:  BLX             j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
45B8EA:  LDR             R5, [SP,#0x48+var_20]
45B8EC:  STR             R5, [SP,#0x48+var_28]
45B8EE:  STR             R4, [SP,#0x48+var_44]
45B8F0:  LDR.W           R8, [R4,#0x18]
45B8F4:  MOV             R0, R8
45B8F6:  LDR.W           R6, [R8,#0x60]
45B8FA:  BLX             j_RpSkinGeometryGetSkin
45B8FE:  MOV             R10, R0
45B900:  LDRD.W          R4, R0, [R6,#0x14]
45B904:  STR             R4, [SP,#0x48+var_24]
45B906:  STR             R0, [SP,#0x48+var_34]
45B908:  LDR.W           R0, [R8,#0x34]
45B90C:  STR             R0, [SP,#0x48+var_3C]
45B90E:  MOV             R0, R10
45B910:  BLX             j_RpSkinGetVertexBoneIndices
45B914:  MOV             R9, R0
45B916:  MOV             R0, R10
45B918:  BLX             j_RpSkinGetVertexBoneWeights
45B91C:  STR             R5, [SP,#0x48+var_40]
45B91E:  MOV             R6, R0
45B920:  LDR             R5, [R5,#0x18]
45B922:  MOV             R0, R5
45B924:  LDR.W           R10, [R5,#0x60]
45B928:  BLX             j_RpSkinGeometryGetSkin
45B92C:  LDRD.W          R11, R1, [R10,#0x14]
45B930:  STR.W           R11, [SP,#0x48+var_20]
45B934:  STR             R1, [SP,#0x48+var_30]
45B936:  LDR             R1, [R5,#0x34]
45B938:  MOV             R5, R0
45B93A:  STR             R1, [SP,#0x48+var_38]
45B93C:  BLX             j_RpSkinGetVertexBoneIndices
45B940:  MOV             R10, R0
45B942:  MOV             R0, R5
45B944:  BLX             j_RpSkinGetVertexBoneWeights
45B948:  MOV             R5, R0
45B94A:  MOV             R0, R8
45B94C:  MOVW            R1, #0xFFF
45B950:  BLX             j__Z14RpGeometryLockP10RpGeometryi; RpGeometryLock(RpGeometry *,int)
45B954:  LDR.W           R0, [R8,#0x14]
45B958:  CMP             R0, #1
45B95A:  BLT             loc_45B9FC
45B95C:  MOVS            R0, #0
45B95E:  LDR.W           R1, [R11]
45B962:  STR             R1, [R4]
45B964:  LDR.W           R1, [R11,#4]
45B968:  STR             R1, [R4,#4]
45B96A:  LDRD.W          R1, R2, [SP,#0x48+var_24]
45B96E:  LDR             R2, [R2,#8]
45B970:  STR             R2, [R1,#8]
45B972:  LDRD.W          R1, R2, [SP,#0x48+var_34]
45B976:  LDR             R3, [R2]
45B978:  STR             R3, [R1]
45B97A:  LDR             R3, [R2,#4]
45B97C:  STR             R3, [R1,#4]
45B97E:  LDR             R2, [R2,#8]
45B980:  STR             R2, [R1,#8]
45B982:  LDRD.W          R1, R2, [SP,#0x48+var_3C]
45B986:  LDR             R3, [R2]
45B988:  STR             R3, [R1]
45B98A:  ADD.W           R3, R9, R0,LSL#2
45B98E:  LDR             R2, [R2,#4]
45B990:  STR             R2, [R1,#4]
45B992:  LDRB.W          R1, [R10,R0,LSL#2]
45B996:  STRB.W          R1, [R9,R0,LSL#2]
45B99A:  LDR             R1, [R5]
45B99C:  STR             R1, [R6]
45B99E:  ADD.W           R1, R10, R0,LSL#2
45B9A2:  ADDS            R0, #1
45B9A4:  LDRB            R2, [R1,#1]
45B9A6:  STRB            R2, [R3,#1]
45B9A8:  LDR             R2, [R5,#4]
45B9AA:  STR             R2, [R6,#4]
45B9AC:  LDRB            R2, [R1,#2]
45B9AE:  STRB            R2, [R3,#2]
45B9B0:  LDR             R2, [R5,#8]
45B9B2:  STR             R2, [R6,#8]
45B9B4:  LDRB            R1, [R1,#3]
45B9B6:  STRB            R1, [R3,#3]
45B9B8:  LDR             R1, [R5,#0xC]
45B9BA:  ADDS            R5, #0x10
45B9BC:  STR             R1, [R6,#0xC]
45B9BE:  ADDS            R6, #0x10
45B9C0:  LDRD.W          R1, R2, [SP,#0x48+var_24]
45B9C4:  ADD.W           R11, R2, #0xC
45B9C8:  LDR             R2, [SP,#0x48+var_30]
45B9CA:  ADD.W           R4, R1, #0xC
45B9CE:  LDR             R1, [SP,#0x48+var_34]
45B9D0:  ADDS            R2, #0xC
45B9D2:  STR             R4, [SP,#0x48+var_24]
45B9D4:  ADDS            R1, #0xC
45B9D6:  STR             R1, [SP,#0x48+var_34]
45B9D8:  LDR             R1, [SP,#0x48+var_3C]
45B9DA:  STR             R2, [SP,#0x48+var_30]
45B9DC:  LDR             R2, [SP,#0x48+var_38]
45B9DE:  ADDS            R1, #8
45B9E0:  STR             R1, [SP,#0x48+var_3C]
45B9E2:  ADD.W           R1, R2, #8
45B9E6:  STR.W           R11, [SP,#0x48+var_20]
45B9EA:  STR             R1, [SP,#0x48+var_38]
45B9EC:  LDR.W           R1, [R8,#0x14]
45B9F0:  CMP             R0, R1
45B9F2:  BLT             loc_45B95E
45B9F4:  LDR             R0, [SP,#0x48+var_2C]
45B9F6:  STR             R0, [SP,#0x48+var_44]
45B9F8:  LDR             R0, [SP,#0x48+var_28]
45B9FA:  STR             R0, [SP,#0x48+var_40]
45B9FC:  MOV             R0, R8
45B9FE:  BLX             j__Z16RpGeometryUnlockP10RpGeometry; RpGeometryUnlock(RpGeometry *)
45BA02:  LDR             R0, [SP,#0x48+var_44]
45BA04:  LDR.W           R9, [R0,#0x18]
45BA08:  MOV             R0, R9
45BA0A:  LDR.W           R6, [R9,#0x60]
45BA0E:  BLX             j_RpSkinGeometryGetSkin
45BA12:  LDRD.W          R10, R1, [R6,#0x14]
45BA16:  MOV             R5, R0
45BA18:  MOV             R0, R1
45BA1A:  STR.W           R10, [SP,#0x48+var_24]
45BA1E:  STR             R0, [SP,#0x48+var_48]
45BA20:  STR             R1, [SP,#0x48+var_34]
45BA22:  LDR.W           R1, [R9,#0x34]
45BA26:  STR             R1, [SP,#0x48+var_3C]
45BA28:  MOV             R0, R1
45BA2A:  STR             R0, [SP,#0x48+var_44]
45BA2C:  MOV             R0, R5
45BA2E:  BLX             j_RpSkinGetVertexBoneIndices
45BA32:  MOV             R0, R5
45BA34:  BLX             j_RpSkinGetVertexBoneWeights
45BA38:  LDR             R0, [SP,#0x48+var_40]
45BA3A:  LDR             R5, [R0,#0x18]
45BA3C:  MOV             R0, R5
45BA3E:  LDR             R4, [R5,#0x60]
45BA40:  BLX             j_RpSkinGeometryGetSkin
45BA44:  LDRD.W          R8, R11, [R4,#0x14]
45BA48:  MOV             R6, R0
45BA4A:  STR.W           R8, [SP,#0x48+var_20]
45BA4E:  STR.W           R11, [SP,#0x48+var_30]
45BA52:  LDR             R5, [R5,#0x34]
45BA54:  STR             R5, [SP,#0x48+var_38]
45BA56:  BLX             j_RpSkinGetVertexBoneIndices
45BA5A:  MOV             R0, R6
45BA5C:  BLX             j_RpSkinGetVertexBoneWeights
45BA60:  LDR.W           R0, [R9,#0x14]
45BA64:  CMP             R0, #1
45BA66:  BLT             loc_45BA94
45BA68:  ADD.W           R1, R0, R0,LSL#1
45BA6C:  ADD.W           R2, R8, R1,LSL#2
45BA70:  STR             R2, [SP,#0x48+var_20]
45BA72:  ADD.W           R2, R10, R1,LSL#2
45BA76:  STR             R2, [SP,#0x48+var_24]
45BA78:  ADD.W           R2, R11, R1,LSL#2
45BA7C:  STR             R2, [SP,#0x48+var_30]
45BA7E:  LDR             R2, [SP,#0x48+var_48]
45BA80:  ADD.W           R1, R2, R1,LSL#2
45BA84:  STR             R1, [SP,#0x48+var_34]
45BA86:  ADD.W           R1, R5, R0,LSL#3
45BA8A:  STR             R1, [SP,#0x48+var_38]
45BA8C:  LDR             R1, [SP,#0x48+var_44]
45BA8E:  ADD.W           R0, R1, R0,LSL#3
45BA92:  STR             R0, [SP,#0x48+var_3C]
45BA94:  MOV             R0, R9
45BA96:  BLX             j__Z17_rpGeometryAddRefP10RpGeometry; _rpGeometryAddRef(RpGeometry *)
45BA9A:  MOV             R0, R9
45BA9C:  ADD             SP, SP, #0x2C ; ','
45BA9E:  POP.W           {R8-R11}
45BAA2:  POP             {R4-R7,PC}
