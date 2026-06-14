; =========================================================
; Game Engine Function: _Z21DoRWStuffStartOfFramesssssss
; Address            : 0x3F573C - 0x3F581A
; =========================================================

3F573C:  PUSH            {R4-R7,LR}
3F573E:  ADD             R7, SP, #0xC
3F5740:  PUSH.W          {R8,R9,R11}
3F5744:  SUB             SP, SP, #0x20
3F5746:  MOV             R8, R3
3F5748:  MOV             R5, R2
3F574A:  MOV             R6, R1
3F574C:  MOV             R4, R0
3F574E:  BLX             j__ZN5CDraw20CalculateAspectRatioEv; CDraw::CalculateAspectRatio(void)
3F5752:  MOVS            R0, #0x437F0000; this
3F5758:  BLX             j__ZN5CFont12SetAlphaFadeEf; CFont::SetAlphaFade(float)
3F575C:  LDR             R0, =(_ZN5CDraw7ms_fFOVE_ptr - 0x3F5766)
3F575E:  VLDR            S0, =0.0087266
3F5762:  ADD             R0, PC; _ZN5CDraw7ms_fFOVE_ptr
3F5764:  LDR.W           R9, [R7,#arg_8]
3F5768:  LDR             R0, [R0]; CDraw::ms_fFOV ...
3F576A:  VLDR            S2, [R0]
3F576E:  LDRD.W          R2, R1, [R7,#arg_0]
3F5772:  VMUL.F32        S0, S2, S0
3F5776:  STRB.W          R9, [SP,#0x38+var_19]
3F577A:  STRB.W          R5, [SP,#0x38+var_1A]
3F577E:  STRB.W          R6, [SP,#0x38+var_1B]
3F5782:  STRB.W          R9, [SP,#0x38+var_1D]
3F5786:  STRB.W          R1, [SP,#0x38+var_1E]
3F578A:  STRB.W          R2, [SP,#0x38+var_1F]
3F578E:  STRB.W          R4, [SP,#0x38+var_1C]
3F5792:  VMOV            R0, S0; x
3F5796:  STRB.W          R8, [SP,#0x38+var_20]
3F579A:  BLX             tanf
3F579E:  LDR             R1, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x3F57AA)
3F57A0:  MOV             R2, R0
3F57A2:  LDR             R0, =(Scene_ptr - 0x3F57AC)
3F57A4:  MOVS            R4, #0
3F57A6:  ADD             R1, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
3F57A8:  ADD             R0, PC; Scene_ptr
3F57AA:  LDR             R1, [R1]; CDraw::ms_fAspectRatio ...
3F57AC:  LDR             R6, [R0]; Scene
3F57AE:  LDR             R3, [R1]; CDraw::ms_fAspectRatio
3F57B0:  MOVS            R1, #0
3F57B2:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
3F57B4:  BLX             j__Z10CameraSizeP8RwCameraP6RwRectff; CameraSize(RwCamera *,RwRect *,float,float)
3F57B8:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
3F57BA:  BLX             j__ZN18CVisibilityPlugins19SetRenderWareCameraEP8RwCamera; CVisibilityPlugins::SetRenderWareCamera(RwCamera *)
3F57BE:  ADD             R5, SP, #0x38+var_1C
3F57C0:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
3F57C2:  MOVS            R2, #2
3F57C4:  MOV             R1, R5
3F57C6:  BLX             j__Z13RwCameraClearP8RwCameraP6RwRGBAi; RwCameraClear(RwCamera *,RwRGBA *,int)
3F57CA:  LDR             R0, [R6,#(dword_9FC93C - 0x9FC938)]
3F57CC:  BLX             j__Z19RsCameraBeginUpdateP8RwCamera; RsCameraBeginUpdate(RwCamera *)
3F57D0:  CBZ             R0, loc_3F5810
3F57D2:  BLX             j__ZN9CSprite2d12InitPerFrameEv; CSprite2d::InitPerFrame(void)
3F57D6:  CMP.W           R9, #0
3F57DA:  BEQ             loc_3F580E
3F57DC:  LDR             R0, =(RsGlobal_ptr - 0x3F57E6)
3F57DE:  ADD             R1, SP, #0x38+var_20
3F57E0:  MOV             R3, R5
3F57E2:  ADD             R0, PC; RsGlobal_ptr
3F57E4:  MOV             R2, R1
3F57E6:  LDR             R0, [R0]; RsGlobal
3F57E8:  VLDR            S0, [R0,#4]
3F57EC:  VLDR            S2, [R0,#8]
3F57F0:  MOVS            R0, #0
3F57F2:  VCVT.F32.S32    S0, S0
3F57F6:  VCVT.F32.S32    S2, S2
3F57FA:  STR             R0, [SP,#0x38+var_30]
3F57FC:  STR             R0, [SP,#0x38+var_24]
3F57FE:  ADD             R0, SP, #0x38+var_30
3F5800:  STR             R5, [SP,#0x38+var_38]
3F5802:  VSTR            S0, [SP,#0x38+var_28]
3F5806:  VSTR            S2, [SP,#0x38+var_2C]
3F580A:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
3F580E:  MOVS            R4, #1
3F5810:  MOV             R0, R4
3F5812:  ADD             SP, SP, #0x20 ; ' '
3F5814:  POP.W           {R8,R9,R11}
3F5818:  POP             {R4-R7,PC}
