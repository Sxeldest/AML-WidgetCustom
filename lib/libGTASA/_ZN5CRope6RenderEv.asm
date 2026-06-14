; =========================================================
; Game Engine Function: _ZN5CRope6RenderEv
; Address            : 0x413E7C - 0x413FCC
; =========================================================

413E7C:  PUSH            {R4-R7,LR}
413E7E:  ADD             R7, SP, #0xC
413E80:  PUSH.W          {R11}
413E84:  MOV             R6, R0
413E86:  LDR             R0, =(TheCamera_ptr - 0x413E92)
413E88:  MOVS            R2, #0
413E8A:  ADD.W           R1, R6, #0xC0; CVector *
413E8E:  ADD             R0, PC; TheCamera_ptr
413E90:  MOVT            R2, #0x41A0; float
413E94:  LDR             R0, [R0]; TheCamera ; this
413E96:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
413E9A:  CMP             R0, #1
413E9C:  BNE.W           loc_413FC6
413EA0:  LDR             R0, =(TheCamera_ptr - 0x413EAA)
413EA2:  VLDR            D16, [R6]
413EA6:  ADD             R0, PC; TheCamera_ptr
413EA8:  VLDR            S2, =120.0
413EAC:  LDR             R0, [R0]; TheCamera
413EAE:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
413EB0:  ADD.W           R2, R1, #0x30 ; '0'
413EB4:  CMP             R1, #0
413EB6:  IT EQ
413EB8:  ADDEQ           R2, R0, #4
413EBA:  VLDR            D17, [R2]
413EBE:  VSUB.F32        D16, D17, D16
413EC2:  VMUL.F32        D0, D16, D16
413EC6:  VADD.F32        S0, S0, S1
413ECA:  VSQRT.F32       S0, S0
413ECE:  VCMPE.F32       S0, S2
413ED2:  VMRS            APSR_nzcv, FPSCR
413ED6:  BGE             loc_413FC6
413ED8:  BLX             j__Z12DefinedStatev; DefinedState(void)
413EDC:  LDR             R0, =(TempVertexBuffer_ptr - 0x413EEA)
413EDE:  MOVS            R1, #0
413EE0:  LDR             R3, =(TempVertexBuffer_ptr - 0x413EEC)
413EE2:  MOV.W           R12, #0x80000000
413EE6:  ADD             R0, PC; TempVertexBuffer_ptr
413EE8:  ADD             R3, PC; TempVertexBuffer_ptr
413EEA:  LDR             R0, [R0]; TempVertexBuffer
413EEC:  LDR             R3, [R3]; TempVertexBuffer
413EEE:  ADDS            R0, #0x18
413EF0:  STR.W           R12, [R0]
413EF4:  ADDS            R4, R6, R1
413EF6:  LDR             R2, [R6,R1]
413EF8:  LDRD.W          R5, R4, [R4,#4]
413EFC:  STR.W           R2, [R0,#-0x18]
413F00:  ADD.W           R2, R1, R1,LSL#1
413F04:  ADD             R2, R3
413F06:  ADDS            R1, #0xC
413F08:  ADDS            R0, #0x24 ; '$'
413F0A:  CMP.W           R1, #0x180
413F0E:  STRD.W          R5, R4, [R2,#4]
413F12:  BNE             loc_413EF0
413F14:  MOVS            R0, #8
413F16:  MOVS            R1, #1
413F18:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
413F1C:  MOVS            R0, #0xC
413F1E:  MOVS            R1, #1
413F20:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
413F24:  MOVS            R0, #0xA
413F26:  MOVS            R1, #5
413F28:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
413F2C:  MOVS            R0, #0xB
413F2E:  MOVS            R1, #6
413F30:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
413F34:  MOVS            R0, #9
413F36:  MOVS            R1, #2
413F38:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
413F3C:  MOVS            R0, #1
413F3E:  MOVS            R1, #0
413F40:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
413F44:  LDR             R0, =(TempVertexBuffer_ptr - 0x413F50)
413F46:  MOVS            R1, #0x20 ; ' '
413F48:  MOVS            R2, #0
413F4A:  MOVS            R3, #0
413F4C:  ADD             R0, PC; TempVertexBuffer_ptr
413F4E:  LDR             R0, [R0]; TempVertexBuffer
413F50:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
413F54:  CBZ             R0, loc_413F68
413F56:  LDR             R0, =(RopeIndices_ptr - 0x413F5E)
413F58:  MOVS            R2, #0x3E ; '>'
413F5A:  ADD             R0, PC; RopeIndices_ptr
413F5C:  LDR             R1, [R0]; RopeIndices
413F5E:  MOVS            R0, #1
413F60:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
413F64:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
413F68:  LDRB.W          R0, [R6,#0x325]
413F6C:  CMP             R0, #6
413F6E:  BNE             loc_413FC6
413F70:  LDR             R0, =(TempVertexBuffer_ptr - 0x413F7A)
413F72:  MOV.W           R1, #0x80000000
413F76:  ADD             R0, PC; TempVertexBuffer_ptr
413F78:  LDR             R0, [R0]; TempVertexBuffer
413F7A:  STR             R1, [R0,#(dword_A5A1F0 - 0xA5A1D8)]
413F7C:  LDM             R6, {R2,R3,R6}
413F7E:  STM.W           R0, {R2,R3,R6}
413F82:  MOVW            R2, #0x547B
413F86:  MOVS            R3, #0
413F88:  STR             R1, [R0,#(dword_A5A214 - 0xA5A1D8)]
413F8A:  MOV             R1, #0x44650CCD
413F92:  MOVT            R2, #0x4431
413F96:  MOVT            R3, #0x4254
413F9A:  STRD.W          R2, R1, [R0,#(dword_A5A1FC - 0xA5A1D8)]
413F9E:  STR             R3, [R0,#(dword_A5A204 - 0xA5A1D8)]
413FA0:  MOVS            R1, #2
413FA2:  MOVS            R2, #0
413FA4:  MOVS            R3, #0
413FA6:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
413FAA:  CBZ             R0, loc_413FC6
413FAC:  LDR             R0, =(RopeIndices_ptr - 0x413FB4)
413FAE:  MOVS            R2, #2
413FB0:  ADD             R0, PC; RopeIndices_ptr
413FB2:  LDR             R1, [R0]; RopeIndices
413FB4:  MOVS            R0, #1
413FB6:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
413FBA:  POP.W           {R11}
413FBE:  POP.W           {R4-R7,LR}
413FC2:  B.W             sub_18D7C4
413FC6:  POP.W           {R11}
413FCA:  POP             {R4-R7,PC}
