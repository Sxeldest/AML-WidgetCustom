; =========================================================
; Game Engine Function: _ZN11CPlaneTrail6RenderEf
; Address            : 0x5A6B80 - 0x5A6CA0
; =========================================================

5A6B80:  PUSH            {R4-R7,LR}
5A6B82:  ADD             R7, SP, #0xC
5A6B84:  PUSH.W          {R8-R11}
5A6B88:  SUB             SP, SP, #4
5A6B8A:  VLDR            S0, =110.0
5A6B8E:  VMOV            S2, R1
5A6B92:  VMUL.F32        S0, S2, S0
5A6B96:  VCVT.S32.F32    S0, S0
5A6B9A:  VMOV            R1, S0
5A6B9E:  CMP             R1, #0
5A6BA0:  BEQ             loc_5A6C98
5A6BA2:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5A6BB2)
5A6BA4:  VCVT.F32.S32    S0, S0
5A6BA8:  LDR             R3, =(TempVertexBuffer_ptr - 0x5A6BB6)
5A6BAA:  VMOV.F32        S6, #1.0
5A6BAE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5A6BB0:  ADDS            R0, #0xC0
5A6BB2:  ADD             R3, PC; TempVertexBuffer_ptr
5A6BB4:  VLDR            S2, =30000.0
5A6BB8:  LDR             R2, [R1]; CTimer::m_snTimeInMilliseconds ...
5A6BBA:  MOV             R1, #0xFFFFFF40
5A6BBE:  LDR.W           R9, [R3]; TempVertexBuffer
5A6BC2:  MOVW            R8, #0x7531
5A6BC6:  VLDR            S4, =10000.0
5A6BCA:  MOVS            R6, #0
5A6BCC:  LDR.W           R11, [R2]; CTimer::m_snTimeInMilliseconds
5A6BD0:  MOV.W           R10, #0
5A6BD4:  LDR             R5, [R0,R6]
5A6BD6:  SUB.W           R3, R11, R5
5A6BDA:  CMP             R3, R8
5A6BDC:  BCC             loc_5A6BE4
5A6BDE:  MOVS            R2, #0
5A6BE0:  STR             R2, [R0,R6]
5A6BE2:  B               loc_5A6C38
5A6BE4:  CBZ             R5, loc_5A6C38
5A6BE6:  VMOV            S8, R3
5A6BEA:  ADD.W           R5, R10, R10,LSL#3
5A6BEE:  MOV             R2, #0xFFFFFF
5A6BF2:  ADD.W           LR, R6, R6,LSL#1
5A6BF6:  VCVT.F32.U32    S8, S8
5A6BFA:  ADD.W           R4, R9, R5,LSL#2
5A6BFE:  ADD.W           R10, R10, #1
5A6C02:  VSUB.F32        S8, S2, S8
5A6C06:  VDIV.F32        S8, S8, S4
5A6C0A:  VMIN.F32        D4, D4, D3
5A6C0E:  VMUL.F32        S8, S8, S0
5A6C12:  VCVT.S32.F32    S8, S8
5A6C16:  VMOV            R3, S8
5A6C1A:  ORR.W           R3, R2, R3,LSL#24
5A6C1E:  ADDS            R2, R0, R1
5A6C20:  STR             R3, [R4,#0x18]
5A6C22:  LDR.W           R12, [R2,#8]
5A6C26:  ADD.W           R2, R0, LR
5A6C2A:  LDR             R3, [R0,R1]
5A6C2C:  LDR.W           R2, [R2,#-0xBC]
5A6C30:  STR.W           R3, [R9,R5,LSL#2]
5A6C34:  STRD.W          R2, R12, [R4,#4]
5A6C38:  ADDS            R6, #4
5A6C3A:  ADDS            R1, #0xC
5A6C3C:  BNE             loc_5A6BD4
5A6C3E:  CMP.W           R10, #2
5A6C42:  BLT             loc_5A6C98
5A6C44:  MOVS            R0, #0xC
5A6C46:  MOVS            R1, #1
5A6C48:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A6C4C:  MOVS            R0, #0xA
5A6C4E:  MOVS            R1, #5
5A6C50:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A6C54:  MOVS            R0, #0xB
5A6C56:  MOVS            R1, #6
5A6C58:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A6C5C:  MOVS            R0, #1
5A6C5E:  MOVS            R1, #0
5A6C60:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5A6C64:  LDR             R0, =(TempVertexBuffer_ptr - 0x5A6C70)
5A6C66:  MOV             R1, R10
5A6C68:  MOVS            R2, #0
5A6C6A:  MOVS            R3, #0x18
5A6C6C:  ADD             R0, PC; TempVertexBuffer_ptr
5A6C6E:  LDR             R0, [R0]; TempVertexBuffer
5A6C70:  BLX.W           j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
5A6C74:  CBZ             R0, loc_5A6C98
5A6C76:  LDR             R0, =(TrailIndices_ptr - 0x5A6C84)
5A6C78:  MOV             R1, #0xFFFFFFFE
5A6C7C:  ADD.W           R2, R1, R10,LSL#1
5A6C80:  ADD             R0, PC; TrailIndices_ptr
5A6C82:  LDR             R1, [R0]; TrailIndices
5A6C84:  MOVS            R0, #1
5A6C86:  BLX.W           j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
5A6C8A:  ADD             SP, SP, #4
5A6C8C:  POP.W           {R8-R11}
5A6C90:  POP.W           {R4-R7,LR}
5A6C94:  B.W             sub_18D7C4
5A6C98:  ADD             SP, SP, #4
5A6C9A:  POP.W           {R8-R11}
5A6C9E:  POP             {R4-R7,PC}
