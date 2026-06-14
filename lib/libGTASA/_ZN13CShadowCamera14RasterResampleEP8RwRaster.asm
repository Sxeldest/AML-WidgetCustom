; =========================================================
; Game Engine Function: _ZN13CShadowCamera14RasterResampleEP8RwRaster
; Address            : 0x5B7990 - 0x5B7A9C
; =========================================================

5B7990:  PUSH            {R4-R7,LR}
5B7992:  ADD             R7, SP, #0xC
5B7994:  PUSH.W          {R8}
5B7998:  VPUSH           {D8-D11}
5B799C:  SUB             SP, SP, #0x70
5B799E:  MOV             R5, R0
5B79A0:  MOV             R6, R1
5B79A2:  LDR             R0, [R5]
5B79A4:  CMP             R0, #0
5B79A6:  BEQ             loc_5B7A8C
5B79A8:  LDR             R4, [R0,#0x60]
5B79AA:  VLDR            S0, [R4,#0xC]
5B79AE:  VCVT.F32.S32    S16, S0
5B79B2:  VLDR            S18, [R0,#0x80]
5B79B6:  BLX.W           j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
5B79BA:  CMP             R0, #0
5B79BC:  BEQ             loc_5B7A8E
5B79BE:  MOVS            R0, #0xA
5B79C0:  MOVS            R1, #2
5B79C2:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B79C6:  MOVS            R0, #0xB
5B79C8:  MOVS            R1, #1
5B79CA:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B79CE:  MOVS            R0, #6
5B79D0:  MOVS            R1, #0
5B79D2:  MOV.W           R8, #0
5B79D6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B79DA:  MOVS            R0, #9
5B79DC:  MOVS            R1, #2
5B79DE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B79E2:  MOVS            R0, #1
5B79E4:  MOV             R1, R6
5B79E6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B79EA:  VMOV.F32        S20, #1.0
5B79EE:  VLDR            S0, =0.0
5B79F2:  VDIV.F32        S22, S0, S16
5B79F6:  VDIV.F32        S18, S20, S18
5B79FA:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B79FE:  VADD.F32        S0, S22, S20
5B7A02:  MOV.W           R1, #0xFFFFFFFF
5B7A06:  STRD.W          R8, R8, [SP,#0xA0+var_A0]
5B7A0A:  MOVS            R2, #4
5B7A0C:  STR             R0, [SP,#0xA0+var_98]
5B7A0E:  STR             R1, [SP,#0xA0+var_90]
5B7A10:  STR.W           R8, [SP,#0xA0+var_84]
5B7A14:  STR             R0, [SP,#0xA0+var_7C]
5B7A16:  VSTR            S16, [SP,#0xA0+var_80]
5B7A1A:  STR             R1, [SP,#0xA0+var_74]
5B7A1C:  STR.W           R8, [SP,#0xA0+var_64]
5B7A20:  VSTR            S16, [SP,#0xA0+var_68]
5B7A24:  VSTR            S22, [SP,#0xA0+var_8C]
5B7A28:  VSTR            S22, [SP,#0xA0+var_88]
5B7A2C:  VSTR            S22, [SP,#0xA0+var_70]
5B7A30:  VSTR            S18, [SP,#0xA0+var_94]
5B7A34:  VSTR            S18, [SP,#0xA0+var_78]
5B7A38:  VSTR            S0, [SP,#0xA0+var_6C]
5B7A3C:  STR             R0, [SP,#0xA0+var_60]
5B7A3E:  STR             R1, [SP,#0xA0+var_58]
5B7A40:  VSTR            S22, [SP,#0xA0+var_50]
5B7A44:  VSTR            S18, [SP,#0xA0+var_5C]
5B7A48:  VSTR            S0, [SP,#0xA0+var_54]
5B7A4C:  VSTR            S16, [SP,#0xA0+var_4C]
5B7A50:  STR             R0, [SP,#0xA0+var_44]
5B7A52:  MOVS            R0, #4
5B7A54:  VSTR            S16, [SP,#0xA0+var_48]
5B7A58:  STR             R1, [SP,#0xA0+var_3C]
5B7A5A:  MOV             R1, SP
5B7A5C:  VSTR            S18, [SP,#0xA0+var_40]
5B7A60:  VSTR            S0, [SP,#0xA0+var_38]
5B7A64:  VSTR            S0, [SP,#0xA0+var_34]
5B7A68:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5B7A6C:  MOVS            R0, #6
5B7A6E:  MOVS            R1, #1
5B7A70:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7A74:  MOVS            R0, #0xA
5B7A76:  MOVS            R1, #5
5B7A78:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7A7C:  MOVS            R0, #0xB
5B7A7E:  MOVS            R1, #6
5B7A80:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7A84:  LDR             R0, [R5]
5B7A86:  BLX.W           j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
5B7A8A:  B               loc_5B7A8E
5B7A8C:  MOVS            R4, #0
5B7A8E:  MOV             R0, R4
5B7A90:  ADD             SP, SP, #0x70 ; 'p'
5B7A92:  VPOP            {D8-D11}
5B7A96:  POP.W           {R8}
5B7A9A:  POP             {R4-R7,PC}
