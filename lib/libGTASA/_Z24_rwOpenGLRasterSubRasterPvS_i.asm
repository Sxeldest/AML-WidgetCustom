; =========================================================
; Game Engine Function: _Z24_rwOpenGLRasterSubRasterPvS_i
; Address            : 0x1AEA7E - 0x1AEAB8
; =========================================================

1AEA7E:  PUSH            {R4,R6,R7,LR}
1AEA80:  ADD             R7, SP, #8
1AEA82:  MOV             R4, R0
1AEA84:  LDR             R0, [R1,#0x18]
1AEA86:  STR             R0, [R4,#0x18]
1AEA88:  LDR             R0, [R1,#0x14]
1AEA8A:  STR             R0, [R4,#0x14]
1AEA8C:  LDRB.W          R0, [R1,#0x20]
1AEA90:  STRB.W          R0, [R4,#0x20]
1AEA94:  ORR.W           R0, R0, #4
1AEA98:  LDRB.W          R1, [R1,#0x22]
1AEA9C:  CMP             R0, #4
1AEA9E:  STRB.W          R1, [R4,#0x22]
1AEAA2:  BNE             loc_1AEAB4
1AEAA4:  MOV             R0, R4
1AEAA6:  MOVS            R1, #0
1AEAA8:  MOVS            R2, #1
1AEAAA:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1AEAAE:  MOV             R0, R4
1AEAB0:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1AEAB4:  MOVS            R0, #1
1AEAB6:  POP             {R4,R6,R7,PC}
