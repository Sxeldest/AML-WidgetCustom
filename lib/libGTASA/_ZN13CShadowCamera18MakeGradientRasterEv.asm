; =========================================================
; Game Engine Function: _ZN13CShadowCamera18MakeGradientRasterEv
; Address            : 0x5B7634 - 0x5B7776
; =========================================================

5B7634:  PUSH            {R4-R7,LR}
5B7636:  ADD             R7, SP, #0xC
5B7638:  PUSH.W          {R8-R11}
5B763C:  SUB             SP, SP, #4
5B763E:  VPUSH           {D8-D12}
5B7642:  SUB             SP, SP, #0x40
5B7644:  MOV             R6, R0
5B7646:  LDR             R0, [R6]
5B7648:  CMP             R0, #0
5B764A:  BEQ.W           loc_5B7764
5B764E:  VLDR            S16, [R0,#0x80]
5B7652:  BLX.W           j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
5B7656:  MOV             R8, R0
5B7658:  LDR             R0, [R6]
5B765A:  LDR             R5, [R0,#0x60]
5B765C:  LDR             R4, [R5,#0x10]
5B765E:  CMP             R4, #1
5B7660:  BLT.W           loc_5B7764
5B7664:  LDR.W           R10, [R5,#0xC]
5B7668:  BLX.W           j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
5B766C:  CMP             R0, #0
5B766E:  BEQ             loc_5B7766
5B7670:  VMOV.F32        S0, #1.0
5B7674:  MOVS            R0, #1
5B7676:  MOVS            R1, #0
5B7678:  STRD.W          R6, R5, [SP,#0x88+var_88]
5B767C:  VMOV            S18, R8
5B7680:  MOV.W           R11, #0
5B7684:  VDIV.F32        S16, S0, S16
5B7688:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B768C:  MOVS            R0, #6
5B768E:  MOVS            R1, #0
5B7690:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7694:  MOVS            R0, #0xC
5B7696:  MOVS            R1, #0
5B7698:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B769C:  MOVS            R0, #0xB
5B769E:  MOVS            R1, #1
5B76A0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B76A4:  MOVS            R0, #0xA
5B76A6:  MOVS            R1, #0xA
5B76A8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B76AC:  MOVS            R0, #7
5B76AE:  MOVS            R1, #1
5B76B0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B76B4:  VMOV            S0, R4
5B76B8:  VLDR            S2, =64.0
5B76BC:  VLDR            S24, =128.0
5B76C0:  ADDS            R4, #1
5B76C2:  VCVT.F32.S32    S0, S0
5B76C6:  MOV.W           R8, #0x1010101
5B76CA:  MOV.W           R9, #0
5B76CE:  VDIV.F32        S20, S2, S0
5B76D2:  VMOV            S0, R10
5B76D6:  ADD.W           R10, SP, #0x88+var_80
5B76DA:  ADD.W           R5, R10, #0x2C ; ','
5B76DE:  ADD.W           R6, R10, #0x10
5B76E2:  VCVT.F32.S32    S22, S0
5B76E6:  VMOV            S0, R9
5B76EA:  MOVS            R1, #2
5B76EC:  MOVS            R2, #0
5B76EE:  MOVS            R3, #1
5B76F0:  VCVT.F32.S32    S0, S0
5B76F4:  VCVT.S32.F32    S2, S24
5B76F8:  STR.W           R11, [SP,#0x88+var_80]
5B76FC:  VSTR            S18, [SP,#0x88+var_78]
5B7700:  VSTR            S16, [SP,#0x88+var_74]
5B7704:  VSTR            S0, [SP,#0x88+var_7C]
5B7708:  VMOV            R0, S2
5B770C:  UXTB            R0, R0
5B770E:  MUL.W           R0, R0, R8
5B7712:  STR             R0, [R6]
5B7714:  VSTR            S0, [SP,#0x88+var_60]
5B7718:  VSTR            S22, [SP,#0x88+var_64]
5B771C:  VSTR            S18, [SP,#0x88+var_5C]
5B7720:  VSTR            S16, [SP,#0x88+var_58]
5B7724:  STR             R0, [R5]
5B7726:  MOV             R0, R10
5B7728:  BLX.W           j__Z23RwIm2DRenderLine_BUGFIXP14RwOpenGLVertexiii; RwIm2DRenderLine_BUGFIX(RwOpenGLVertex *,int,int,int)
5B772C:  VSUB.F32        S24, S24, S20
5B7730:  ADD.W           R9, R9, #1
5B7734:  CMP             R4, R9
5B7736:  BNE             loc_5B76E6
5B7738:  MOVS            R0, #6
5B773A:  MOVS            R1, #1
5B773C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7740:  MOVS            R0, #0xB
5B7742:  MOVS            R1, #6
5B7744:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7748:  MOVS            R0, #0xA
5B774A:  MOVS            R1, #5
5B774C:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7750:  MOVS            R0, #7
5B7752:  MOVS            R1, #2
5B7754:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5B7758:  LDR             R0, [SP,#0x88+var_88]
5B775A:  LDR             R0, [R0]
5B775C:  BLX.W           j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
5B7760:  LDR             R5, [SP,#0x88+var_84]
5B7762:  B               loc_5B7766
5B7764:  MOVS            R5, #0
5B7766:  MOV             R0, R5
5B7768:  ADD             SP, SP, #0x40 ; '@'
5B776A:  VPOP            {D8-D12}
5B776E:  ADD             SP, SP, #4
5B7770:  POP.W           {R8-R11}
5B7774:  POP             {R4-R7,PC}
