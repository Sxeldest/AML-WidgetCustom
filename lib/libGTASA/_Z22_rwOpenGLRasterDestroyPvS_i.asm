; =========================================================
; Game Engine Function: _Z22_rwOpenGLRasterDestroyPvS_i
; Address            : 0x1AE9F8 - 0x1AEA6A
; =========================================================

1AE9F8:  PUSH            {R4,R5,R7,LR}
1AE9FA:  ADD             R7, SP, #8
1AE9FC:  SUB             SP, SP, #8
1AE9FE:  LDR             R0, =(RasterExtOffset_ptr - 0x1AEA08)
1AEA00:  MOV             R4, R1
1AEA02:  ADD             R1, SP, #0x10+var_C
1AEA04:  ADD             R0, PC; RasterExtOffset_ptr
1AEA06:  LDR             R0, [R0]; RasterExtOffset
1AEA08:  LDR             R5, [R0]
1AEA0A:  MOVS            R0, #1
1AEA0C:  BLX             j__Z23_rwOpenGLGetRenderState13RwRenderStatePv; _rwOpenGLGetRenderState(RwRenderState,void *)
1AEA10:  LDR             R0, [SP,#0x10+var_C]
1AEA12:  ADD             R5, R4
1AEA14:  CMP             R0, R4
1AEA16:  BNE             loc_1AEA20
1AEA18:  MOVS            R0, #1
1AEA1A:  MOVS            R1, #0
1AEA1C:  BLX             j__Z23_rwOpenGLSetRenderState13RwRenderStatePv; _rwOpenGLSetRenderState(RwRenderState,void *)
1AEA20:  LDRB.W          R0, [R4,#0x20]
1AEA24:  CMP             R0, #5
1AEA26:  BNE             loc_1AEA32
1AEA28:  LDR             R0, [R5,#0x18]; this
1AEA2A:  CBZ             R0, loc_1AEA32
1AEA2C:  BLX             j__ZN14RQRenderTarget6DeleteEPS_; RQRenderTarget::Delete(RQRenderTarget*)
1AEA30:  B               loc_1AEA3E
1AEA32:  LDR             R0, [R5]; this
1AEA34:  CBZ             R0, loc_1AEA3E
1AEA36:  BLX             j__ZN9RQTexture6DeleteEPS_; RQTexture::Delete(RQTexture*)
1AEA3A:  MOVS            R0, #0
1AEA3C:  STR             R0, [R5]
1AEA3E:  LDR             R0, [R4]
1AEA40:  CMP             R0, R4
1AEA42:  BNE             loc_1AEA64
1AEA44:  LDR             R0, [R4,#4]
1AEA46:  CBZ             R0, loc_1AEA54
1AEA48:  LDR             R1, =(dgGGlobals_ptr - 0x1AEA4E)
1AEA4A:  ADD             R1, PC; dgGGlobals_ptr
1AEA4C:  LDR             R1, [R1]; dgGGlobals
1AEA4E:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1AEA50:  LDR             R1, [R1,#4]
1AEA52:  BLX             R1
1AEA54:  LDR             R0, [R4,#8]
1AEA56:  CBZ             R0, loc_1AEA64
1AEA58:  LDR             R1, =(dgGGlobals_ptr - 0x1AEA5E)
1AEA5A:  ADD             R1, PC; dgGGlobals_ptr
1AEA5C:  LDR             R1, [R1]; dgGGlobals
1AEA5E:  LDR             R1, [R1,#(dword_6B31F8 - 0x6B31F4)]
1AEA60:  LDR             R1, [R1,#4]
1AEA62:  BLX             R1
1AEA64:  MOVS            R0, #1
1AEA66:  ADD             SP, SP, #8
1AEA68:  POP             {R4,R5,R7,PC}
