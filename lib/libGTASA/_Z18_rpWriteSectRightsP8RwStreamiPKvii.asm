; =========================================================
; Game Engine Function: _Z18_rpWriteSectRightsP8RwStreamiPKvii
; Address            : 0x2126B4 - 0x2126EA
; =========================================================

2126B4:  PUSH            {R4,R5,R7,LR}
2126B6:  ADD             R7, SP, #8
2126B8:  MOV             R5, R2
2126BA:  MOV             R4, R0
2126BC:  LDR.W           R0, [R5,#0x84]
2126C0:  MOVS            R2, #4
2126C2:  ADD.W           R1, R0, #0x2C ; ','
2126C6:  MOV             R0, R4
2126C8:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
2126CC:  CBZ             R0, loc_2126E6
2126CE:  LDR.W           R0, [R5,#0x84]
2126D2:  MOVS            R2, #4
2126D4:  ADD.W           R1, R0, #0x30 ; '0'
2126D8:  MOV             R0, R4
2126DA:  BLX             j__Z18RwStreamWriteInt32P8RwStreamPKij; RwStreamWriteInt32(RwStream *,int const*,uint)
2126DE:  CMP             R0, #0
2126E0:  IT NE
2126E2:  MOVNE           R0, R4
2126E4:  POP             {R4,R5,R7,PC}
2126E6:  MOVS            R0, #0
2126E8:  POP             {R4,R5,R7,PC}
