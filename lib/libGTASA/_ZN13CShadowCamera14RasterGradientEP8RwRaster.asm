; =========================================================
; Game Engine Function: _ZN13CShadowCamera14RasterGradientEP8RwRaster
; Address            : 0x5B7AAA - 0x5B7B9A
; =========================================================

5B7AAA:  PUSH            {R4-R7,LR}
5B7AAC:  ADD             R7, SP, #0xC
5B7AAE:  PUSH.W          {R8}
5B7AB2:  VPUSH           {D8-D9}
5B7AB6:  SUB             SP, SP, #0x70
5B7AB8:  MOV             R5, R0
5B7ABA:  MOV             R4, R1
5B7ABC:  LDR             R0, [R5]
5B7ABE:  VLDR            S0, [R4,#0xC]
5B7AC2:  LDR.W           R8, [R0,#0x60]
5B7AC6:  VCVT.F32.S32    S16, S0
5B7ACA:  VLDR            S18, [R0,#0x80]
5B7ACE:  STR             R4, [R0,#0x60]
5B7AD0:  LDR             R0, [R5]
5B7AD2:  BLX.W           j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
5B7AD6:  CMP             R0, #0
5B7AD8:  BEQ             loc_5B7B86
5B7ADA:  MOVS            R0, #0xA
5B7ADC:  MOVS            R1, #1
5B7ADE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7AE2:  MOVS            R0, #0xB
5B7AE4:  MOVS            R1, #3
5B7AE6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7AEA:  MOVS            R0, #6
5B7AEC:  MOVS            R1, #0
5B7AEE:  MOVS            R6, #0
5B7AF0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7AF4:  MOVS            R0, #9
5B7AF6:  MOVS            R1, #2
5B7AF8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7AFC:  MOVS            R0, #1
5B7AFE:  MOV             R1, R8
5B7B00:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7B04:  VMOV.F32        S0, #1.0
5B7B08:  VDIV.F32        S18, S0, S18
5B7B0C:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B7B10:  MOV.W           R1, #0xFFFFFFFF
5B7B14:  MOV.W           R2, #0x3F800000
5B7B18:  ADD             R3, SP, #0x90+var_48
5B7B1A:  STRD.W          R6, R6, [SP,#0x90+var_90]
5B7B1E:  STR             R0, [SP,#0x90+var_88]
5B7B20:  STRD.W          R1, R6, [SP,#0x90+var_80]
5B7B24:  STRD.W          R6, R6, [SP,#0x90+var_78]
5B7B28:  STR             R0, [SP,#0x90+var_6C]
5B7B2A:  VSTR            S16, [SP,#0x90+var_70]
5B7B2E:  STRD.W          R1, R6, [SP,#0x90+var_64]
5B7B32:  STR             R2, [SP,#0x90+var_5C]
5B7B34:  STR             R6, [SP,#0x90+var_54]
5B7B36:  VSTR            S16, [SP,#0x90+var_58]
5B7B3A:  VSTR            S18, [SP,#0x90+var_84]
5B7B3E:  VSTR            S18, [SP,#0x90+var_68]
5B7B42:  STR             R0, [SP,#0x90+var_50]
5B7B44:  STM             R3!, {R1,R2,R6}
5B7B46:  VSTR            S18, [SP,#0x90+var_4C]
5B7B4A:  VSTR            S16, [SP,#0x90+var_3C]
5B7B4E:  STR             R0, [SP,#0x90+var_34]
5B7B50:  MOVS            R0, #4
5B7B52:  VSTR            S16, [SP,#0x90+var_38]
5B7B56:  STR             R1, [SP,#0x90+var_2C]
5B7B58:  MOV             R1, SP
5B7B5A:  VSTR            S18, [SP,#0x90+var_30]
5B7B5E:  STRD.W          R2, R2, [SP,#0x90+var_28]
5B7B62:  MOVS            R2, #4
5B7B64:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5B7B68:  MOVS            R0, #6
5B7B6A:  MOVS            R1, #1
5B7B6C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7B70:  MOVS            R0, #0xA
5B7B72:  MOVS            R1, #5
5B7B74:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7B78:  MOVS            R0, #0xB
5B7B7A:  MOVS            R1, #6
5B7B7C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7B80:  LDR             R0, [R5]
5B7B82:  BLX.W           j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
5B7B86:  LDR             R0, [R5]
5B7B88:  STR.W           R8, [R0,#0x60]
5B7B8C:  MOV             R0, R4
5B7B8E:  ADD             SP, SP, #0x70 ; 'p'
5B7B90:  VPOP            {D8-D9}
5B7B94:  POP.W           {R8}
5B7B98:  POP             {R4-R7,PC}
