; =========================================================
; Game Engine Function: _ZN12CPostEffects12ColourFilterE6RwRGBAS0_
; Address            : 0x5B3F28 - 0x5B405E
; =========================================================

5B3F28:  PUSH            {R4-R7,LR}
5B3F2A:  ADD             R7, SP, #0xC
5B3F2C:  PUSH.W          {R8}
5B3F30:  SUB             SP, SP, #8
5B3F32:  MOV             R4, R1
5B3F34:  MOV             R5, R0
5B3F36:  MOVS            R0, #9
5B3F38:  MOVS            R1, #1
5B3F3A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F3E:  MOVS            R0, #0xE
5B3F40:  MOVS            R1, #0
5B3F42:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F46:  MOVS            R0, #6
5B3F48:  MOVS            R1, #0
5B3F4A:  MOV.W           R8, #6
5B3F4E:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F52:  MOVS            R0, #8
5B3F54:  MOVS            R1, #0
5B3F56:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F5A:  LDR             R0, =(_ZN12CPostEffects18pRasterFrontBufferE_ptr - 0x5B3F60)
5B3F5C:  ADD             R0, PC; _ZN12CPostEffects18pRasterFrontBufferE_ptr
5B3F5E:  LDR             R0, [R0]; CPostEffects::pRasterFrontBuffer ...
5B3F60:  LDR             R1, [R0]; CPostEffects::pRasterFrontBuffer
5B3F62:  MOVS            R0, #1
5B3F64:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F68:  MOVS            R0, #0xC
5B3F6A:  MOVS            R1, #1
5B3F6C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F70:  MOVS            R0, #0xA
5B3F72:  MOVS            R1, #5
5B3F74:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F78:  MOVS            R0, #0xB
5B3F7A:  MOVS            R1, #2
5B3F7C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B3F80:  LDR             R6, =(dword_A4785C - 0x5B3F8A)
5B3F82:  LSRS            R0, R5, #8
5B3F84:  MOVS            R2, #4
5B3F86:  ADD             R6, PC; dword_A4785C
5B3F88:  STRB            R0, [R6,#(byte_A4786D - 0xA4785C)]
5B3F8A:  MOV             R1, R6
5B3F8C:  STRB.W          R0, [R6,#(byte_A47889 - 0xA4785C)]
5B3F90:  STRB.W          R0, [R6,#(byte_A478A5 - 0xA4785C)]
5B3F94:  STRB.W          R0, [R6,#(byte_A478C1 - 0xA4785C)]
5B3F98:  LSRS            R0, R5, #0x10
5B3F9A:  STRB            R0, [R6,#(byte_A4786E - 0xA4785C)]
5B3F9C:  STRB.W          R0, [R6,#(byte_A4788A - 0xA4785C)]
5B3FA0:  STRB.W          R0, [R6,#(byte_A478A6 - 0xA4785C)]
5B3FA4:  STRB.W          R0, [R6,#(byte_A478C2 - 0xA4785C)]
5B3FA8:  LSRS            R0, R5, #0x18
5B3FAA:  STRB            R5, [R6,#(byte_A4786C - 0xA4785C)]
5B3FAC:  STRB.W          R5, [R6,#(byte_A47888 - 0xA4785C)]
5B3FB0:  STRB.W          R5, [R6,#(byte_A478A4 - 0xA4785C)]
5B3FB4:  STRB.W          R5, [R6,#(byte_A478C0 - 0xA4785C)]
5B3FB8:  LDR             R5, =(unk_6B22BE - 0x5B3FC0)
5B3FBA:  STRB            R0, [R6,#(byte_A4786F - 0xA4785C)]
5B3FBC:  ADD             R5, PC; unk_6B22BE
5B3FBE:  STRB.W          R0, [R6,#(byte_A4788B - 0xA4785C)]
5B3FC2:  STRB.W          R0, [R6,#(byte_A478A7 - 0xA4785C)]
5B3FC6:  STRB.W          R0, [R6,#(byte_A478C3 - 0xA4785C)]
5B3FCA:  MOVS            R0, #3
5B3FCC:  MOV             R3, R5
5B3FCE:  STR.W           R8, [SP,#0x18+var_18]
5B3FD2:  BLX.W           j__Z28RwIm2DRenderIndexedPrimitive15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5B3FD6:  LSRS            R0, R4, #8
5B3FD8:  LSRS            R1, R4, #0x10
5B3FDA:  LSRS            R2, R4, #0x18
5B3FDC:  STRB            R4, [R6,#(byte_A4786C - 0xA4785C)]
5B3FDE:  STRB            R0, [R6,#(byte_A4786D - 0xA4785C)]
5B3FE0:  MOV             R3, R5
5B3FE2:  STRB            R1, [R6,#(byte_A4786E - 0xA4785C)]
5B3FE4:  STRB            R2, [R6,#(byte_A4786F - 0xA4785C)]
5B3FE6:  STRB.W          R4, [R6,#(byte_A47888 - 0xA4785C)]
5B3FEA:  STRB.W          R2, [R6,#(byte_A4788B - 0xA4785C)]
5B3FEE:  STRB.W          R1, [R6,#(byte_A4788A - 0xA4785C)]
5B3FF2:  STRB.W          R0, [R6,#(byte_A47889 - 0xA4785C)]
5B3FF6:  STRB.W          R0, [R6,#(byte_A478A5 - 0xA4785C)]
5B3FFA:  STRB.W          R4, [R6,#(byte_A478A4 - 0xA4785C)]
5B3FFE:  STRB.W          R1, [R6,#(byte_A478A6 - 0xA4785C)]
5B4002:  STRB.W          R2, [R6,#(byte_A478A7 - 0xA4785C)]
5B4006:  STRB.W          R0, [R6,#(byte_A478C1 - 0xA4785C)]
5B400A:  MOVS            R0, #3
5B400C:  STRB.W          R4, [R6,#(byte_A478C0 - 0xA4785C)]
5B4010:  STRB.W          R1, [R6,#(byte_A478C2 - 0xA4785C)]
5B4014:  MOV             R1, R6
5B4016:  STRB.W          R2, [R6,#(byte_A478C3 - 0xA4785C)]
5B401A:  MOVS            R2, #4
5B401C:  STR.W           R8, [SP,#0x18+var_18]
5B4020:  BLX.W           j__Z28RwIm2DRenderIndexedPrimitive15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
5B4024:  MOVS            R0, #9
5B4026:  MOVS            R1, #2
5B4028:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B402C:  MOVS            R0, #6
5B402E:  MOVS            R1, #1
5B4030:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4034:  MOVS            R0, #8
5B4036:  MOVS            R1, #1
5B4038:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B403C:  MOVS            R0, #1
5B403E:  MOVS            R1, #0
5B4040:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B4044:  MOVS            R0, #0xA
5B4046:  MOVS            R1, #5
5B4048:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B404C:  MOVS            R0, #0xB
5B404E:  MOVS            R1, #6
5B4050:  ADD             SP, SP, #8
5B4052:  POP.W           {R8}
5B4056:  POP.W           {R4-R7,LR}
5B405A:  B.W             sub_192888
