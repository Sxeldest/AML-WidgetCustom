; =========================================================
; Game Engine Function: _ZN13CShadowCamera12InvertRasterEv
; Address            : 0x5B7338 - 0x5B7412
; =========================================================

5B7338:  PUSH            {R4,R5,R7,LR}
5B733A:  ADD             R7, SP, #8
5B733C:  VPUSH           {D8-D11}
5B7340:  SUB             SP, SP, #0x70
5B7342:  VMOV.F32        S0, #1.0
5B7346:  LDR             R0, [R0]
5B7348:  VMOV.F32        S18, #10.0
5B734C:  MOVS            R5, #0xC1200000
5B7352:  VLDR            S2, [R0,#0x80]
5B7356:  LDR             R0, [R0,#0x60]
5B7358:  VDIV.F32        S16, S0, S2
5B735C:  VLDR            S2, [R0,#0x10]
5B7360:  VLDR            S0, [R0,#0xC]
5B7364:  VCVT.F32.S32    S2, S2
5B7368:  VCVT.F32.S32    S20, S0
5B736C:  STRD.W          R5, R5, [SP,#0x98+var_98]
5B7370:  VADD.F32        S22, S2, S18
5B7374:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B7378:  MOV.W           R4, #0xFFFFFFFF
5B737C:  STR             R0, [SP,#0x98+var_90]
5B737E:  STR             R4, [SP,#0x98+var_88]
5B7380:  VADD.F32        S18, S20, S18
5B7384:  STR             R5, [SP,#0x98+var_7C]
5B7386:  VSTR            S22, [SP,#0x98+var_78]
5B738A:  VSTR            S16, [SP,#0x98+var_8C]
5B738E:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B7392:  STR             R4, [SP,#0x98+var_6C]
5B7394:  VSTR            S16, [SP,#0x98+var_70]
5B7398:  STR             R0, [SP,#0x98+var_74]
5B739A:  VSTR            S18, [SP,#0x98+var_60]
5B739E:  STR             R5, [SP,#0x98+var_5C]
5B73A0:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B73A4:  STR             R0, [SP,#0x98+var_58]
5B73A6:  VSTR            S16, [SP,#0x98+var_54]
5B73AA:  STR             R4, [SP,#0x98+var_50]
5B73AC:  VSTR            S18, [SP,#0x98+var_44]
5B73B0:  VSTR            S22, [SP,#0x98+var_40]
5B73B4:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B73B8:  STR             R0, [SP,#0x98+var_3C]
5B73BA:  MOVS            R0, #6
5B73BC:  MOVS            R1, #0
5B73BE:  VSTR            S16, [SP,#0x98+var_38]
5B73C2:  STR             R4, [SP,#0x98+var_34]
5B73C4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B73C8:  MOVS            R0, #1
5B73CA:  MOVS            R1, #0
5B73CC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B73D0:  MOVS            R0, #0xC
5B73D2:  MOVS            R1, #1
5B73D4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B73D8:  MOVS            R0, #0xA
5B73DA:  MOVS            R1, #0xA
5B73DC:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B73E0:  MOVS            R0, #0xB
5B73E2:  MOVS            R1, #1
5B73E4:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B73E8:  MOV             R1, SP
5B73EA:  MOVS            R0, #4
5B73EC:  MOVS            R2, #4
5B73EE:  BLX.W           j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
5B73F2:  MOVS            R0, #6
5B73F4:  MOVS            R1, #1
5B73F6:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B73FA:  MOVS            R0, #0xA
5B73FC:  MOVS            R1, #5
5B73FE:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7402:  MOVS            R0, #0xB
5B7404:  MOVS            R1, #6
5B7406:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B740A:  ADD             SP, SP, #0x70 ; 'p'
5B740C:  VPOP            {D8-D11}
5B7410:  POP             {R4,R5,R7,PC}
