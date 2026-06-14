; =========================================================
; Game Engine Function: _Z27_rpSkinSplitDataStreamWriteP8RwStreamPK6RpSkin
; Address            : 0x1C7964 - 0x1C79C2
; =========================================================

1C7964:  PUSH            {R4-R7,LR}
1C7966:  ADD             R7, SP, #0xC
1C7968:  PUSH.W          {R11}
1C796C:  MOV             R5, R1
1C796E:  ADD.W           R1, R5, #0x20 ; ' '
1C7972:  MOVS            R2, #4
1C7974:  MOV             R4, R0
1C7976:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C797A:  CBZ             R0, loc_1C79B8
1C797C:  ADD.W           R6, R5, #0x24 ; '$'
1C7980:  MOV             R0, R4
1C7982:  MOVS            R2, #4
1C7984:  MOV             R1, R6
1C7986:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C798A:  CBZ             R0, loc_1C79B8
1C798C:  ADD.W           R1, R5, #0x28 ; '('
1C7990:  MOV             R0, R4
1C7992:  MOVS            R2, #4
1C7994:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
1C7998:  CBZ             R0, loc_1C79B8
1C799A:  LDR             R0, [R6]
1C799C:  CBZ             R0, loc_1C79BA
1C799E:  LDR             R2, [R5]
1C79A0:  LDRD.W          R3, R1, [R5,#0x28]; void *
1C79A4:  ADD             R0, R3
1C79A6:  ADD.W           R2, R2, R0,LSL#1; size_t
1C79AA:  MOV             R0, R4; int
1C79AC:  BLX             j__Z13RwStreamWriteP8RwStreamPKvj; RwStreamWrite(RwStream *,void const*,uint)
1C79B0:  CMP             R0, #0
1C79B2:  IT EQ
1C79B4:  MOVEQ           R4, #0
1C79B6:  B               loc_1C79BA
1C79B8:  MOVS            R4, #0
1C79BA:  MOV             R0, R4
1C79BC:  POP.W           {R11}
1C79C0:  POP             {R4-R7,PC}
