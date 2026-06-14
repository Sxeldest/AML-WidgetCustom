; =========================================================
; Game Engine Function: _Z20RtCharsetBufferFlushv
; Address            : 0x1EC960 - 0x1ECA4C
; =========================================================

1EC960:  LDR             R0, =(_rtgBuffer_ptr - 0x1EC966)
1EC962:  ADD             R0, PC; _rtgBuffer_ptr
1EC964:  LDR             R0, [R0]; _rtgBuffer
1EC966:  LDR             R0, [R0,#(dword_6BD51C - 0x6BD514)]
1EC968:  CMP             R0, #0
1EC96A:  BEQ             loc_1ECA3C
1EC96C:  PUSH            {R4,R6,R7,LR}
1EC96E:  ADD             R7, SP, #0x10+var_8
1EC970:  SUB             SP, SP, #0x20 ; ' '
1EC972:  ADD             R1, SP, #0x30+var_14
1EC974:  MOVS            R0, #6
1EC976:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1EC97A:  ADD             R1, SP, #0x30+var_18
1EC97C:  MOVS            R0, #8
1EC97E:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1EC982:  ADD             R1, SP, #0x30+var_1C
1EC984:  MOVS            R0, #0xA
1EC986:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1EC98A:  ADD             R1, SP, #0x30+var_20
1EC98C:  MOVS            R0, #0xB
1EC98E:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1EC992:  ADD             R1, SP, #0x30+var_24
1EC994:  MOVS            R0, #1
1EC996:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1EC99A:  ADD             R1, SP, #0x30+var_28
1EC99C:  MOVS            R0, #9
1EC99E:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1EC9A2:  ADD             R1, SP, #0x30+var_2C
1EC9A4:  MOVS            R0, #0x14
1EC9A6:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
1EC9AA:  MOVS            R0, #6
1EC9AC:  MOVS            R1, #0
1EC9AE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1EC9B2:  MOVS            R0, #8
1EC9B4:  MOVS            R1, #0
1EC9B6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1EC9BA:  MOVS            R0, #9
1EC9BC:  MOVS            R1, #1
1EC9BE:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1EC9C2:  LDR             R0, =(_rtgBuffer_ptr - 0x1EC9C8)
1EC9C4:  ADD             R0, PC; _rtgBuffer_ptr
1EC9C6:  LDR             R4, [R0]; _rtgBuffer
1EC9C8:  MOVS            R0, #1
1EC9CA:  LDR             R1, [R4,#(dword_6BD518 - 0x6BD514)]
1EC9CC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1EC9D0:  MOVS            R0, #0xA
1EC9D2:  MOVS            R1, #5
1EC9D4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1EC9D8:  MOVS            R0, #0xB
1EC9DA:  MOVS            R1, #6
1EC9DC:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1EC9E0:  MOVS            R0, #0x14
1EC9E2:  MOVS            R1, #1
1EC9E4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1EC9E8:  ADD.W           R3, R4, #8
1EC9EC:  LDM             R3, {R0,R1,R3}
1EC9EE:  ADD.W           R2, R0, R0,LSL#1
1EC9F2:  LSLS            R2, R2, #1
1EC9F4:  STR             R2, [SP,#0x30+var_30]
1EC9F6:  LSLS            R2, R0, #2
1EC9F8:  MOVS            R0, #3
1EC9FA:  BLX             j__Z28RwIm2DRenderIndexedPrimitive15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
1EC9FE:  LDR             R1, [SP,#0x30+var_14]
1ECA00:  MOVS            R0, #6
1ECA02:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECA06:  LDR             R1, [SP,#0x30+var_18]
1ECA08:  MOVS            R0, #8
1ECA0A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECA0E:  LDR             R1, [SP,#0x30+var_1C]
1ECA10:  MOVS            R0, #0xA
1ECA12:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECA16:  LDR             R1, [SP,#0x30+var_20]
1ECA18:  MOVS            R0, #0xB
1ECA1A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECA1E:  LDR             R1, [SP,#0x30+var_24]
1ECA20:  MOVS            R0, #1
1ECA22:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECA26:  LDR             R1, [SP,#0x30+var_28]
1ECA28:  MOVS            R0, #9
1ECA2A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECA2E:  LDR             R1, [SP,#0x30+var_2C]
1ECA30:  MOVS            R0, #0x14
1ECA32:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
1ECA36:  ADD             SP, SP, #0x20 ; ' '
1ECA38:  POP.W           {R4,R6,R7,LR}
1ECA3C:  LDR             R0, =(_rtgBuffer_ptr - 0x1ECA44)
1ECA3E:  MOVS            R1, #0
1ECA40:  ADD             R0, PC; _rtgBuffer_ptr
1ECA42:  LDR             R0, [R0]; _rtgBuffer
1ECA44:  STRD.W          R1, R1, [R0,#(dword_6BD518 - 0x6BD514)]
1ECA48:  MOVS            R0, #1
1ECA4A:  BX              LR
