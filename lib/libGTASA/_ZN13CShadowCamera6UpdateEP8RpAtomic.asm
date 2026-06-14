; =========================================================
; Game Engine Function: _ZN13CShadowCamera6UpdateEP8RpAtomic
; Address            : 0x5B75B4 - 0x5B762E
; =========================================================

5B75B4:  PUSH            {R4-R7,LR}
5B75B6:  ADD             R7, SP, #0xC
5B75B8:  PUSH.W          {R8-R10}
5B75BC:  SUB             SP, SP, #8
5B75BE:  ADD             R6, SP, #0x20+var_1C
5B75C0:  MOV             R4, R0
5B75C2:  MOVS            R0, #0
5B75C4:  MOV             R10, R1
5B75C6:  STR             R0, [SP,#0x20+var_20]; unsigned __int8
5B75C8:  MOV             R0, R6; this
5B75CA:  MOVS            R1, #0xFF; unsigned __int8
5B75CC:  MOVS            R2, #0xFF; unsigned __int8
5B75CE:  MOVS            R3, #0xFF; unsigned __int8
5B75D0:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5B75D4:  LDR             R0, [R4]
5B75D6:  MOV             R1, R6
5B75D8:  MOVS            R2, #3
5B75DA:  BLX.W           j__Z13RwCameraClearP8RwCameraP6RwRGBAi; RwCameraClear(RwCamera *,RwRGBA *,int)
5B75DE:  LDR             R0, [R4]
5B75E0:  BLX.W           j__Z19RwCameraBeginUpdateP8RwCamera; RwCameraBeginUpdate(RwCamera *)
5B75E4:  CBZ             R0, loc_5B7624
5B75E6:  LDR.W           R6, [R10,#0x18]
5B75EA:  LDR             R0, =(_Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0 - 0x5B75F0)
5B75EC:  ADD             R0, PC; _Z27AtomicDefaultRenderCallBackP8RpAtomic_ptr_0
5B75EE:  LDR.W           R8, [R6,#8]
5B75F2:  LDR.W           R9, [R0]; AtomicDefaultRenderCallBack(RpAtomic *)
5B75F6:  BIC.W           R0, R8, #0xFC
5B75FA:  STR             R0, [R6,#8]
5B75FC:  MOV             R0, R10
5B75FE:  LDR.W           R5, [R10,#0x48]
5B7602:  STR.W           R9, [R10,#0x48]
5B7606:  BLX.W           j__Z27AtomicDefaultRenderCallBackP8RpAtomic; AtomicDefaultRenderCallBack(RpAtomic *)
5B760A:  CMP             R5, #0
5B760C:  MOV             R0, R4; this
5B760E:  IT EQ
5B7610:  MOVEQ           R5, R9
5B7612:  STR.W           R5, [R10,#0x48]
5B7616:  STR.W           R8, [R6,#8]
5B761A:  BLX.W           j__ZN13CShadowCamera12InvertRasterEv; CShadowCamera::InvertRaster(void)
5B761E:  LDR             R0, [R4]
5B7620:  BLX.W           j__Z17RwCameraEndUpdateP8RwCamera; RwCameraEndUpdate(RwCamera *)
5B7624:  LDR             R0, [R4]
5B7626:  ADD             SP, SP, #8
5B7628:  POP.W           {R8-R10}
5B762C:  POP             {R4-R7,PC}
