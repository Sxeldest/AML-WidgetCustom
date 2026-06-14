; =========================================================
; Game Engine Function: _Z27_rwOpenGLRasterGetMipLevelsPvS_i
; Address            : 0x1AE7E8 - 0x1AE7FC
; =========================================================

1AE7E8:  PUSH            {R4,R6,R7,LR}
1AE7EA:  ADD             R7, SP, #8
1AE7EC:  MOV             R4, R0
1AE7EE:  LDRD.W          R0, R1, [R1,#0xC]; int
1AE7F2:  BLX             j__Z29_rwOpenGLDetermineMaxMipLevelii; _rwOpenGLDetermineMaxMipLevel(int,int)
1AE7F6:  STR             R0, [R4]
1AE7F8:  MOVS            R0, #1
1AE7FA:  POP             {R4,R6,R7,PC}
