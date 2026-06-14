; =========================================================
; Game Engine Function: _Z27_rwOpenGLNativeTextureWritePvS_i
; Address            : 0x1AEB5C - 0x1AEC46
; =========================================================

1AEB5C:  PUSH            {R4-R7,LR}
1AEB5E:  ADD             R7, SP, #0xC
1AEB60:  PUSH.W          {R8}
1AEB64:  SUB             SP, SP, #0x88
1AEB66:  MOV             R4, R0
1AEB68:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AEB72)
1AEB6A:  MOV             R5, R1
1AEB6C:  LDR             R1, =(es2TextureType_ptr - 0x1AEB78)
1AEB6E:  ADD             R0, PC; __stack_chk_guard_ptr
1AEB70:  ADD.W           R8, SP, #0x98+var_58
1AEB74:  ADD             R1, PC; es2TextureType_ptr
1AEB76:  LDR             R0, [R0]; __stack_chk_guard
1AEB78:  LDR             R6, [R1]; es2TextureType
1AEB7A:  LDR             R0, [R0]
1AEB7C:  STR             R0, [SP,#0x98+var_14]
1AEB7E:  MOV             R0, R8
1AEB80:  LDR             R2, [R5]
1AEB82:  LDR             R1, [R6]
1AEB84:  BLX             j__Z17CreateTextureData12RwPlatformIDP8RwRaster; CreateTextureData(RwPlatformID,RwRaster *)
1AEB88:  MOV             R0, R8
1AEB8A:  ADD             R1, SP, #0x98+var_90
1AEB8C:  VLD1.64         {D16-D17}, [R0]!
1AEB90:  MOV             R3, #0x36003
1AEB98:  VST1.64         {D16-D17}, [R1]!
1AEB9C:  LDR             R0, [R0]
1AEB9E:  STR             R0, [R1]
1AEBA0:  LDR             R1, [SP,#0x98+var_84]
1AEBA2:  LDR             R0, [R6]
1AEBA4:  STR             R0, [SP,#0x98+var_78]
1AEBA6:  MOVW            R0, #0xFFFF
1AEBAA:  ADD.W           R2, R1, #0x74 ; 't'
1AEBAE:  STR             R0, [SP,#0x98+var_98]
1AEBB0:  MOV             R0, R4
1AEBB2:  MOVS            R1, #1
1AEBB4:  BLX             j__Z34_rwStreamWriteVersionedChunkHeaderP8RwStreamiijj; _rwStreamWriteVersionedChunkHeader(RwStream *,int,int,uint,uint)
1AEBB8:  CBZ             R0, loc_1AEC2A
1AEBBA:  LDR             R0, [R5,#0x50]
1AEBBC:  MOVS            R2, #0x20 ; ' '; size_t
1AEBBE:  UBFX.W          R1, R0, #8, #4
1AEBC2:  STR             R1, [SP,#0x98+var_70]
1AEBC4:  UBFX.W          R1, R0, #0xC, #4
1AEBC8:  STR             R1, [SP,#0x98+var_6C]
1AEBCA:  UXTB            R0, R0
1AEBCC:  ADD             R1, SP, #0x98+var_78; void *
1AEBCE:  STR             R0, [SP,#0x98+var_74]
1AEBD0:  MOV             R0, R4; int
1AEBD2:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1AEBD6:  CBZ             R0, loc_1AEC2A
1AEBD8:  LDR             R0, =(RwEngineInstance_ptr - 0x1AEBE2)
1AEBDA:  ADD.W           R1, R5, #0x10
1AEBDE:  ADD             R0, PC; RwEngineInstance_ptr
1AEBE0:  LDR             R6, [R0]; RwEngineInstance
1AEBE2:  LDR             R0, [R6]
1AEBE4:  LDR.W           R2, [R0,#0xF8]
1AEBE8:  MOV             R0, R8
1AEBEA:  BLX             R2
1AEBEC:  LDR             R0, [R6]
1AEBEE:  ADD.W           R1, R5, #0x30 ; '0'
1AEBF2:  LDR.W           R2, [R0,#0xF8]
1AEBF6:  ADD.W           R0, R8, #0x20 ; ' '
1AEBFA:  BLX             R2
1AEBFC:  MOV             R0, R4; int
1AEBFE:  MOV             R1, R8; void *
1AEC00:  MOVS            R2, #0x40 ; '@'; size_t
1AEC02:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1AEC06:  CBZ             R0, loc_1AEC2A
1AEC08:  ADD             R1, SP, #0x98+var_90; void *
1AEC0A:  MOV             R0, R4; int
1AEC0C:  MOVS            R2, #0x14; size_t
1AEC0E:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1AEC12:  CBZ             R0, loc_1AEC2A
1AEC14:  LDRD.W          R2, R1, [SP,#0x98+var_84]; size_t
1AEC18:  MOV             R0, R4; int
1AEC1A:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1AEC1E:  CBZ             R0, loc_1AEC2A
1AEC20:  LDR             R0, [SP,#0x98+p]; p
1AEC22:  BLX             free
1AEC26:  MOVS            R0, #1
1AEC28:  B               loc_1AEC2C
1AEC2A:  MOVS            R0, #0
1AEC2C:  LDR             R1, =(__stack_chk_guard_ptr - 0x1AEC34)
1AEC2E:  LDR             R2, [SP,#0x98+var_14]
1AEC30:  ADD             R1, PC; __stack_chk_guard_ptr
1AEC32:  LDR             R1, [R1]; __stack_chk_guard
1AEC34:  LDR             R1, [R1]
1AEC36:  SUBS            R1, R1, R2
1AEC38:  ITTT EQ
1AEC3A:  ADDEQ           SP, SP, #0x88
1AEC3C:  POPEQ.W         {R8}
1AEC40:  POPEQ           {R4-R7,PC}
1AEC42:  BLX             __stack_chk_fail
