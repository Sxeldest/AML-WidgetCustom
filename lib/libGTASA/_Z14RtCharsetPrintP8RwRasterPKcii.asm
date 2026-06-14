; =========================================================
; Game Engine Function: _Z14RtCharsetPrintP8RwRasterPKcii
; Address            : 0x1ECE88 - 0x1ED044
; =========================================================

1ECE88:  PUSH            {R4-R7,LR}
1ECE8A:  ADD             R7, SP, #0xC
1ECE8C:  PUSH.W          {R8-R11}
1ECE90:  SUB             SP, SP, #0x34
1ECE92:  MOV             R4, R1
1ECE94:  MOV             R11, R0
1ECE96:  MOV             R0, R4; char *
1ECE98:  MOV             R9, R3
1ECE9A:  MOV             R8, R2
1ECE9C:  BLX             strlen
1ECEA0:  MOV             R6, R0
1ECEA2:  CMP             R6, #0
1ECEA4:  BEQ.W           loc_1ED03A
1ECEA8:  LDR             R0, =(RwEngineInstance_ptr - 0x1ECEAE)
1ECEAA:  ADD             R0, PC; RwEngineInstance_ptr
1ECEAC:  LDR             R5, [R0]; RwEngineInstance
1ECEAE:  LDR             R0, [R5]
1ECEB0:  LDR.W           R1, [R0,#0x12C]
1ECEB4:  RSB.W           R0, R6, R6,LSL#3
1ECEB8:  LSLS            R0, R0, #4
1ECEBA:  BLX             R1
1ECEBC:  MOV             R10, R0
1ECEBE:  LDR             R0, [R5]
1ECEC0:  LDR.W           R1, [R0,#0x12C]
1ECEC4:  ADD.W           R0, R6, R6,LSL#1
1ECEC8:  LSLS            R0, R0, #2
1ECECA:  BLX             R1
1ECECC:  CMP.W           R10, #0
1ECED0:  MOV             R5, R0
1ECED2:  IT NE
1ECED4:  CMPNE           R5, #0
1ECED6:  BNE             loc_1ECF22
1ECED8:  CMP.W           R10, #0
1ECEDC:  BEQ             loc_1ECEEE
1ECEDE:  LDR             R0, =(RwEngineInstance_ptr - 0x1ECEE4)
1ECEE0:  ADD             R0, PC; RwEngineInstance_ptr
1ECEE2:  LDR             R0, [R0]; RwEngineInstance
1ECEE4:  LDR             R0, [R0]
1ECEE6:  LDR.W           R1, [R0,#0x130]
1ECEEA:  MOV             R0, R10
1ECEEC:  BLX             R1
1ECEEE:  CBZ             R5, loc_1ECF00
1ECEF0:  LDR             R0, =(RwEngineInstance_ptr - 0x1ECEF6)
1ECEF2:  ADD             R0, PC; RwEngineInstance_ptr
1ECEF4:  LDR             R0, [R0]; RwEngineInstance
1ECEF6:  LDR             R0, [R0]
1ECEF8:  LDR.W           R1, [R0,#0x130]
1ECEFC:  MOV             R0, R5
1ECEFE:  BLX             R1
1ECF00:  RSB.W           R0, R6, R6,LSL#5
1ECF04:  MOV.W           R11, #0
1ECF08:  STR.W           R11, [SP,#0x50+var_3C]
1ECF0C:  LSLS            R1, R0, #2
1ECF0E:  MOVS            R0, #0x80000013; int
1ECF14:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1ECF18:  STR             R0, [SP,#0x50+var_38]
1ECF1A:  ADD             R0, SP, #0x50+var_3C
1ECF1C:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1ECF20:  B               loc_1ED03A
1ECF22:  MOVS            R0, #0
1ECF24:  STRD.W          R9, R10, [SP,#0x50+var_50]
1ECF28:  STRD.W          R5, R0, [SP,#0x50+var_48]
1ECF2C:  MOV             R1, R6
1ECF2E:  STR             R0, [SP,#0x50+var_40]
1ECF30:  MOV             R0, R4
1ECF32:  MOV             R2, R11
1ECF34:  MOV             R3, R8
1ECF36:  BL              sub_1ECB84
1ECF3A:  MOV             R8, R0
1ECF3C:  CMP.W           R8, #0
1ECF40:  BLE             loc_1ED01C
1ECF42:  ADD             R1, SP, #0x50+var_3C
1ECF44:  MOVS            R0, #6
1ECF46:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1ECF4A:  ADD             R1, SP, #0x50+var_20
1ECF4C:  MOVS            R0, #8
1ECF4E:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1ECF52:  ADD             R1, SP, #0x50+var_24
1ECF54:  MOVS            R0, #0xA
1ECF56:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1ECF5A:  ADD             R1, SP, #0x50+var_28
1ECF5C:  MOVS            R0, #0xB
1ECF5E:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1ECF62:  ADD             R1, SP, #0x50+var_2C
1ECF64:  MOVS            R0, #1
1ECF66:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1ECF6A:  ADD             R1, SP, #0x50+var_30
1ECF6C:  MOVS            R0, #9
1ECF6E:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1ECF72:  ADD             R1, SP, #0x50+var_34
1ECF74:  MOVS            R0, #0x14
1ECF76:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1ECF7A:  MOVS            R0, #6
1ECF7C:  MOVS            R1, #0
1ECF7E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECF82:  MOVS            R0, #8
1ECF84:  MOVS            R1, #0
1ECF86:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECF8A:  MOVS            R0, #9
1ECF8C:  MOVS            R1, #1
1ECF8E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECF92:  MOVS            R0, #1
1ECF94:  MOV             R1, R11
1ECF96:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECF9A:  MOVS            R0, #0xA
1ECF9C:  MOVS            R1, #5
1ECF9E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFA2:  MOVS            R0, #0xB
1ECFA4:  MOVS            R1, #6
1ECFA6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFAA:  MOVS            R0, #0x14
1ECFAC:  MOVS            R1, #1
1ECFAE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFB2:  ADD.W           R0, R8, R8,LSL#1
1ECFB6:  MOV.W           R2, R8,LSL#2
1ECFBA:  MOV             R1, R10
1ECFBC:  MOV             R3, R5
1ECFBE:  LSLS            R0, R0, #1
1ECFC0:  STR             R0, [SP,#0x50+var_50]
1ECFC2:  MOVS            R0, #3
1ECFC4:  BLX             j__Z28RwIm2DRenderIndexedPrimitive15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
1ECFC8:  LDR             R1, [SP,#0x50+var_3C]
1ECFCA:  MOVS            R0, #6
1ECFCC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFD0:  LDR             R1, [SP,#0x50+var_20]
1ECFD2:  MOVS            R0, #8
1ECFD4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFD8:  LDR             R1, [SP,#0x50+var_24]
1ECFDA:  MOVS            R0, #0xA
1ECFDC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFE0:  LDR             R1, [SP,#0x50+var_28]
1ECFE2:  MOVS            R0, #0xB
1ECFE4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFE8:  LDR             R1, [SP,#0x50+var_2C]
1ECFEA:  MOVS            R0, #1
1ECFEC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFF0:  LDR             R1, [SP,#0x50+var_30]
1ECFF2:  MOVS            R0, #9
1ECFF4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECFF8:  LDR             R1, [SP,#0x50+var_34]
1ECFFA:  MOVS            R0, #0x14
1ECFFC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ED000:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED006)
1ED002:  ADD             R0, PC; RwEngineInstance_ptr
1ED004:  LDR             R4, [R0]; RwEngineInstance
1ED006:  LDR             R0, [R4]
1ED008:  LDR.W           R1, [R0,#0x130]
1ED00C:  MOV             R0, R5
1ED00E:  BLX             R1
1ED010:  LDR             R0, [R4]
1ED012:  LDR.W           R1, [R0,#0x130]
1ED016:  MOV             R0, R10
1ED018:  BLX             R1
1ED01A:  B               loc_1ED03A
1ED01C:  LDR             R0, =(RwEngineInstance_ptr - 0x1ED022)
1ED01E:  ADD             R0, PC; RwEngineInstance_ptr
1ED020:  LDR             R4, [R0]; RwEngineInstance
1ED022:  LDR             R0, [R4]
1ED024:  LDR.W           R1, [R0,#0x130]
1ED028:  MOV             R0, R5
1ED02A:  BLX             R1
1ED02C:  LDR             R0, [R4]
1ED02E:  LDR.W           R1, [R0,#0x130]
1ED032:  MOV             R0, R10
1ED034:  BLX             R1
1ED036:  MOV.W           R11, #0
1ED03A:  MOV             R0, R11
1ED03C:  ADD             SP, SP, #0x34 ; '4'
1ED03E:  POP.W           {R8-R11}
1ED042:  POP             {R4-R7,PC}
