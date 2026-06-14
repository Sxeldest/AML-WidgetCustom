; =========================================================
; Game Engine Function: _ZN6CLines15ImmediateLine2DEiiiihhhhhhhh
; Address            : 0x5ADDCC - 0x5ADE9C
; =========================================================

5ADDCC:  PUSH            {R4-R7,LR}
5ADDCE:  ADD             R7, SP, #0xC
5ADDD0:  PUSH.W          {R8}
5ADDD4:  MOV             R5, R1
5ADDD6:  MOV             R8, R0
5ADDD8:  MOVS            R0, #8
5ADDDA:  MOVS            R1, #1
5ADDDC:  MOV             R4, R3
5ADDDE:  MOV             R6, R2
5ADDE0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADDE4:  MOVS            R0, #6
5ADDE6:  MOVS            R1, #0
5ADDE8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADDEC:  MOVS            R0, #0xC
5ADDEE:  MOVS            R1, #1
5ADDF0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADDF4:  MOVS            R0, #0xA
5ADDF6:  MOVS            R1, #5
5ADDF8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADDFC:  MOVS            R0, #0xB
5ADDFE:  MOVS            R1, #6
5ADE00:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADE04:  MOVS            R0, #9
5ADE06:  MOVS            R1, #2
5ADE08:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADE0C:  MOVS            R0, #1
5ADE0E:  MOVS            R1, #0
5ADE10:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADE14:  LDR             R0, =(LinesVertexBuffer_ptr - 0x5ADE24)
5ADE16:  VMOV            S4, R5
5ADE1A:  LDR             R1, [R7,#arg_0]
5ADE1C:  VMOV            S6, R8
5ADE20:  ADD             R0, PC; LinesVertexBuffer_ptr
5ADE22:  VMOV            S0, R4
5ADE26:  VMOV            S2, R6
5ADE2A:  MOVS            R2, #0
5ADE2C:  LDR             R0, [R0]; LinesVertexBuffer
5ADE2E:  MOVS            R3, #1
5ADE30:  STRB            R1, [R0,#(byte_A41118 - 0xA41108)]
5ADE32:  LDR             R1, [R7,#arg_C]
5ADE34:  STRB            R1, [R0,#(byte_A4111B - 0xA41108)]
5ADE36:  LDR             R1, [R7,#arg_8]
5ADE38:  STRB            R1, [R0,#(byte_A4111A - 0xA41108)]
5ADE3A:  LDR             R1, [R7,#arg_10]
5ADE3C:  STRB.W          R1, [R0,#(byte_A41134 - 0xA41108)]
5ADE40:  LDR             R1, [R7,#arg_14]
5ADE42:  VCVT.F32.S32    S6, S6
5ADE46:  VCVT.F32.S32    S4, S4
5ADE4A:  STRB.W          R1, [R0,#(byte_A41135 - 0xA41108)]
5ADE4E:  LDR             R1, [R7,#arg_18]
5ADE50:  VCVT.F32.S32    S2, S2
5ADE54:  VCVT.F32.S32    S0, S0
5ADE58:  STRB.W          R1, [R0,#(byte_A41136 - 0xA41108)]
5ADE5C:  LDR             R1, [R7,#arg_1C]
5ADE5E:  STRB.W          R1, [R0,#(byte_A41137 - 0xA41108)]
5ADE62:  LDR             R1, [R7,#arg_4]
5ADE64:  VSTR            S6, [R0]
5ADE68:  VSTR            S4, [R0,#4]
5ADE6C:  VSTR            S2, [R0,#0x1C]
5ADE70:  VSTR            S0, [R0,#0x20]
5ADE74:  STRB            R1, [R0,#(byte_A41119 - 0xA41108)]
5ADE76:  MOVS            R1, #2
5ADE78:  BLX.W           j__Z23RwIm2DRenderLine_BUGFIXP14RwOpenGLVertexiii; RwIm2DRenderLine_BUGFIX(RwOpenGLVertex *,int,int,int)
5ADE7C:  MOVS            R0, #0xC
5ADE7E:  MOVS            R1, #0
5ADE80:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADE84:  MOVS            R0, #6
5ADE86:  MOVS            R1, #1
5ADE88:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5ADE8C:  MOVS            R0, #8
5ADE8E:  MOVS            R1, #1
5ADE90:  POP.W           {R8}
5ADE94:  POP.W           {R4-R7,LR}
5ADE98:  B.W             sub_192888
