; =========================================================
; Game Engine Function: _Z26_rwOpenGLNativeTextureReadPvS_i
; Address            : 0x1AEC58 - 0x1AED60
; =========================================================

1AEC58:  PUSH            {R4-R7,LR}
1AEC5A:  ADD             R7, SP, #0xC
1AEC5C:  PUSH.W          {R8}
1AEC60:  SUB             SP, SP, #0x70
1AEC62:  MOV             R5, R0
1AEC64:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AEC6E)
1AEC66:  ADD             R2, SP, #0x80+var_58
1AEC68:  ADD             R3, SP, #0x80+var_5C
1AEC6A:  ADD             R0, PC; __stack_chk_guard_ptr
1AEC6C:  MOV             R4, R1
1AEC6E:  MOVS            R1, #1
1AEC70:  LDR             R0, [R0]; __stack_chk_guard
1AEC72:  LDR             R0, [R0]
1AEC74:  STR             R0, [SP,#0x80+var_14]
1AEC76:  MOV             R0, R5; int
1AEC78:  BLX             j__Z17RwStreamFindChunkP8RwStreamjPjS1_; RwStreamFindChunk(RwStream *,uint,uint *,uint *)
1AEC7C:  CMP             R0, #0
1AEC7E:  BEQ             loc_1AED42
1AEC80:  LDR             R0, [SP,#0x80+var_5C]
1AEC82:  MOVW            R1, #0x2003
1AEC86:  SUB.W           R0, R0, #0x34000
1AEC8A:  CMP             R0, R1
1AEC8C:  BHI             loc_1AED42
1AEC8E:  ADD             R6, SP, #0x80+var_7C
1AEC90:  MOV             R0, R5; int
1AEC92:  MOVS            R2, #4; size_t
1AEC94:  MOV             R1, R6; void *
1AEC96:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1AEC9A:  CMP             R0, #4
1AEC9C:  BNE             loc_1AED42
1AEC9E:  LDR             R0, [SP,#0x80+var_7C]
1AECA0:  CMP             R0, #5
1AECA2:  BEQ             loc_1AECB8
1AECA4:  CMP             R0, #9
1AECA6:  BEQ             loc_1AECC4
1AECA8:  CMP             R0, #8
1AECAA:  BNE             loc_1AECD0
1AECAC:  MOV             R0, R5; void *
1AECAE:  MOV             R1, R4; void *
1AECB0:  BLX             j__Z30_rwOpenGLNativeTextureReadD3D8PvS_; _rwOpenGLNativeTextureReadD3D8(void *,void *)
1AECB4:  MOV             R6, R0
1AECB6:  B               loc_1AED44
1AECB8:  MOV             R0, R5; void *
1AECBA:  MOV             R1, R4; void *
1AECBC:  BLX             j__Z30_rwOpenGLNativeTextureReadXBOXPvS_; _rwOpenGLNativeTextureReadXBOX(void *,void *)
1AECC0:  MOV             R6, R0
1AECC2:  B               loc_1AED44
1AECC4:  MOV             R0, R5; void *
1AECC6:  MOV             R1, R4; void *
1AECC8:  BLX             j__Z30_rwOpenGLNativeTextureReadD3D9PvS_; _rwOpenGLNativeTextureReadD3D9(void *,void *)
1AECCC:  MOV             R6, R0
1AECCE:  B               loc_1AED44
1AECD0:  ADDS            R1, R6, #4; void *
1AECD2:  MOV             R0, R5; int
1AECD4:  MOVS            R2, #0x1C; size_t
1AECD6:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1AECDA:  CMP             R0, #0x1C
1AECDC:  BNE             loc_1AED42
1AECDE:  ADD.W           R8, SP, #0x80+var_54
1AECE2:  MOV             R0, R5; int
1AECE4:  MOVS            R2, #0x40 ; '@'; size_t
1AECE6:  MOV             R1, R8; void *
1AECE8:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1AECEC:  CMP             R0, #0x40 ; '@'
1AECEE:  BNE             loc_1AED42
1AECF0:  LDR             R0, [SP,#0x80+var_7C]; int
1AECF2:  MOV             R1, R5; int
1AECF4:  MOVS            R2, #0
1AECF6:  MOVS            R6, #0
1AECF8:  BLX             j__Z21ReadTextureDataRasterjP8RwStreami; ReadTextureDataRaster(uint,RwStream *,int)
1AECFC:  MOV             R5, R0
1AECFE:  CBZ             R5, loc_1AED44
1AED00:  MOV             R0, R5
1AED02:  BLX             j__Z15RwTextureCreateP8RwRaster; RwTextureCreate(RwRaster *)
1AED06:  MOV             R6, R0
1AED08:  CBZ             R6, loc_1AED3C
1AED0A:  LDR             R0, [R6,#0x50]
1AED0C:  MOVW            R3, #0xFFFF
1AED10:  LDRD.W          R1, R2, [SP,#0x80+var_74]
1AED14:  BICS            R0, R3
1AED16:  BFI.W           R0, R1, #8, #4
1AED1A:  MOV             R1, R8
1AED1C:  BFI.W           R0, R2, #0xC, #4
1AED20:  ORR.W           R0, R0, #6
1AED24:  STR             R0, [R6,#0x50]
1AED26:  MOV             R0, R6
1AED28:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
1AED2C:  ADD.W           R1, R8, #0x20 ; ' '
1AED30:  MOV             R0, R6
1AED32:  BLX             j__Z20RwTextureSetMaskNameP9RwTexturePKc; RwTextureSetMaskName(RwTexture *,char const*)
1AED36:  STR             R6, [R4]
1AED38:  MOVS            R6, #1
1AED3A:  B               loc_1AED44
1AED3C:  MOV             R0, R5
1AED3E:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1AED42:  MOVS            R6, #0
1AED44:  LDR             R0, =(__stack_chk_guard_ptr - 0x1AED4C)
1AED46:  LDR             R1, [SP,#0x80+var_14]
1AED48:  ADD             R0, PC; __stack_chk_guard_ptr
1AED4A:  LDR             R0, [R0]; __stack_chk_guard
1AED4C:  LDR             R0, [R0]
1AED4E:  SUBS            R0, R0, R1
1AED50:  ITTTT EQ
1AED52:  MOVEQ           R0, R6
1AED54:  ADDEQ           SP, SP, #0x70 ; 'p'
1AED56:  POPEQ.W         {R8}
1AED5A:  POPEQ           {R4-R7,PC}
1AED5C:  BLX             __stack_chk_fail
