; =========================================================
; Game Engine Function: _Z24ConvertingTexturesScreenjjPKc
; Address            : 0x5D3700 - 0x5D394E
; =========================================================

5D3700:  PUSH            {R4-R7,LR}
5D3702:  ADD             R7, SP, #0xC
5D3704:  PUSH.W          {R8-R11}
5D3708:  SUB             SP, SP, #4
5D370A:  VPUSH           {D8-D10}
5D370E:  SUB             SP, SP, #0x30
5D3710:  MOV             R4, SP
5D3712:  BFC.W           R4, #0, #4
5D3716:  MOV             SP, R4
5D3718:  MOV             R9, R0
5D371A:  MOVS            R0, #0
5D371C:  MOV             R8, R2
5D371E:  MOV             R11, R1
5D3720:  STRD.W          R0, R0, [SP,#0x68+var_68]; __int16
5D3724:  MOV.W           R10, #0xFF
5D3728:  MOVS            R0, #0; __int16
5D372A:  MOVS            R1, #0; __int16
5D372C:  MOVS            R2, #0; __int16
5D372E:  MOVS            R3, #0; __int16
5D3730:  STR.W           R10, [SP,#0x68+var_60]; __int16
5D3734:  BLX.W           j__Z21DoRWStuffStartOfFramesssssss; DoRWStuffStartOfFrame(short,short,short,short,short,short,short)
5D3738:  CMP             R0, #1
5D373A:  BNE.W           loc_5D393C
5D373E:  BLX.W           j__ZN5CFont12InitPerFrameEv; CFont::InitPerFrame(void)
5D3742:  BLX.W           j__Z14DefinedState2dv; DefinedState2d(void)
5D3746:  BLX.W           j__ZN14CLoadingScreen12RenderSplashEv; CLoadingScreen::RenderSplash(void)
5D374A:  LDR             R0, =(RsGlobal_ptr - 0x5D3758)
5D374C:  ADD             R5, SP, #0x68+var_4C
5D374E:  VLDR            S16, =448.0
5D3752:  ADD             R4, SP, #0x68+var_48
5D3754:  ADD             R0, PC; RsGlobal_ptr
5D3756:  VLDR            S18, =640.0
5D375A:  MOVS            R1, #0x40 ; '@'; unsigned __int8
5D375C:  MOVS            R2, #0x40 ; '@'; unsigned __int8
5D375E:  LDR             R6, [R0]; RsGlobal
5D3760:  ADR             R0, dword_5D3950
5D3762:  VLD1.64         {D16-D17}, [R0@128]
5D3766:  MOV             R0, R5; this
5D3768:  MOVS            R3, #0x40 ; '@'; unsigned __int8
5D376A:  VLDR            S2, [R6,#8]
5D376E:  VLDR            S0, [R6,#4]
5D3772:  VCVT.F32.S32    S2, S2
5D3776:  VCVT.F32.S32    S0, S0
5D377A:  STR.W           R10, [SP,#0x68+var_68]; unsigned __int8
5D377E:  VDIV.F32        S5, S2, S16
5D3782:  VDIV.F32        S4, S0, S18
5D3786:  VMOV.F32        S6, S4
5D378A:  VMOV.F32        S7, S5
5D378E:  VMUL.F32        Q8, Q1, Q8
5D3792:  VST1.64         {D16-D17}, [R4@128]
5D3796:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5D379A:  MOV             R0, R4
5D379C:  MOV             R1, R5
5D379E:  BLX.W           j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
5D37A2:  VMOV            S0, R11
5D37A6:  VLDR            S8, =200.0
5D37AA:  VMOV            S2, R9
5D37AE:  VLDR            S10, =248.0
5D37B2:  VCVT.F32.U32    S0, S0
5D37B6:  ADD             R4, SP, #0x68+var_4C
5D37B8:  VCVT.F32.U32    S2, S2
5D37BC:  VLDR            S4, [R6,#4]
5D37C0:  VLDR            S6, [R6,#8]
5D37C4:  MOV             R0, R4; this
5D37C6:  VCVT.F32.S32    S4, S4
5D37CA:  MOVS            R1, #0xFF; unsigned __int8
5D37CC:  VCVT.F32.S32    S6, S6
5D37D0:  MOVS            R2, #0xD9; unsigned __int8
5D37D2:  MOVS            R3, #0x6A ; 'j'; unsigned __int8
5D37D4:  STR.W           R10, [SP,#0x68+var_68]; unsigned __int8
5D37D8:  VDIV.F32        S0, S2, S0
5D37DC:  VDIV.F32        S2, S4, S18
5D37E0:  VDIV.F32        S4, S6, S16
5D37E4:  VLDR            S6, =240.0
5D37E8:  VMUL.F32        S0, S0, S6
5D37EC:  VMUL.F32        S6, S4, S6
5D37F0:  VADD.F32        S0, S0, S8
5D37F4:  VMUL.F32        S8, S2, S8
5D37F8:  VMUL.F32        S0, S0, S2
5D37FC:  VMUL.F32        S2, S4, S10
5D3800:  VSTR            S8, [SP,#0x68+var_48]
5D3804:  VSTR            S6, [SP,#0x68+var_3C]
5D3808:  VSTR            S0, [SP,#0x68+var_40]
5D380C:  VSTR            S2, [SP,#0x68+var_44]
5D3810:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5D3814:  ADD             R0, SP, #0x68+var_48
5D3816:  MOV             R1, R4
5D3818:  BLX.W           j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
5D381C:  VLDR            S0, [R6,#4]
5D3820:  ADD             R4, SP, #0x68+var_4C
5D3822:  VLDR            S2, [R6,#8]
5D3826:  MOVS            R0, #0xD2
5D3828:  VCVT.F32.S32    S0, S0
5D382C:  VLDR            S8, =120.0
5D3830:  VCVT.F32.S32    S2, S2
5D3834:  VLDR            S10, =-220.0
5D3838:  STR             R0, [SP,#0x68+var_68]; unsigned __int8
5D383A:  MOV             R0, R4; this
5D383C:  MOVS            R1, #0x32 ; '2'; unsigned __int8
5D383E:  MOVS            R2, #0x32 ; '2'; unsigned __int8
5D3840:  MOVS            R3, #0x32 ; '2'; unsigned __int8
5D3842:  VDIV.F32        S4, S0, S18
5D3846:  VDIV.F32        S6, S2, S16
5D384A:  VMUL.F32        S4, S4, S8
5D384E:  VMUL.F32        S8, S6, S10
5D3852:  VLDR            S10, =150.0
5D3856:  VMUL.F32        S6, S6, S10
5D385A:  VSUB.F32        S0, S0, S4
5D385E:  VSTR            S4, [SP,#0x68+var_48]
5D3862:  VADD.F32        S2, S2, S8
5D3866:  VSTR            S6, [SP,#0x68+var_3C]
5D386A:  VSTR            S0, [SP,#0x68+var_40]
5D386E:  VSTR            S2, [SP,#0x68+var_44]
5D3872:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5D3876:  ADD             R0, SP, #0x68+var_48
5D3878:  MOV             R1, R4
5D387A:  BLX.W           j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
5D387E:  MOVS            R0, #0; this
5D3880:  MOVS            R1, #0; unsigned __int8
5D3882:  BLX.W           j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
5D3886:  MOVS            R0, #(stderr+1); this
5D3888:  BLX.W           j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
5D388C:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
5D388E:  VLDR            D17, =0.7
5D3892:  VMOV            S0, R0
5D3896:  VCVT.F32.S32    S0, S0
5D389A:  VDIV.F32        S0, S0, S16
5D389E:  VCVT.F64.F32    D16, S0
5D38A2:  VMUL.F64        D16, D16, D17
5D38A6:  VCVT.F32.F64    S0, D16
5D38AA:  VMOV            R0, S0; this
5D38AE:  BLX.W           j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
5D38B2:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
5D38B4:  VLDR            S20, =170.0
5D38B8:  VMOV            S0, R0
5D38BC:  VCVT.F32.S32    S0, S0
5D38C0:  VDIV.F32        S2, S0, S18
5D38C4:  VMUL.F32        S2, S2, S20
5D38C8:  VSUB.F32        S0, S0, S2
5D38CC:  VMOV            R0, S0; this
5D38D0:  BLX.W           j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
5D38D4:  MOVS            R0, #(stderr+1); this
5D38D6:  BLX.W           j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
5D38DA:  ADD             R0, SP, #0x68+var_50; this
5D38DC:  MOVS            R1, #0xFF; unsigned __int8
5D38DE:  MOVS            R2, #0xD9; unsigned __int8
5D38E0:  MOVS            R3, #0x6A ; 'j'; unsigned __int8
5D38E2:  STR.W           R10, [SP,#0x68+var_68]; unsigned __int8
5D38E6:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5D38EA:  BLX.W           j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
5D38EE:  MOVS            R0, #(stderr+1); this
5D38F0:  BLX.W           j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
5D38F4:  VLDR            S0, [R6,#4]
5D38F8:  MOV             R1, R8; CKeyGen *
5D38FA:  VLDR            S2, [R6,#8]
5D38FE:  VCVT.F32.S32    S0, S0
5D3902:  LDR             R0, =(TheText_ptr - 0x5D3910)
5D3904:  VCVT.F32.S32    S2, S2
5D3908:  VLDR            S4, =160.0
5D390C:  ADD             R0, PC; TheText_ptr
5D390E:  LDR             R0, [R0]; TheText ; this
5D3910:  VDIV.F32        S0, S0, S18
5D3914:  VDIV.F32        S2, S2, S16
5D3918:  VMUL.F32        S16, S0, S20
5D391C:  VMUL.F32        S18, S2, S4
5D3920:  BLX.W           j__ZN5CText3GetEPKc; CText::Get(char const*)
5D3924:  MOV             R2, R0; CFont *
5D3926:  VMOV            R0, S16; this
5D392A:  VMOV            R1, S18; float
5D392E:  BLX.W           j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
5D3932:  BLX.W           j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
5D3936:  MOVS            R0, #0; bool
5D3938:  BLX.W           j__Z19DoRWStuffEndOfFrameb; DoRWStuffEndOfFrame(bool)
5D393C:  SUB.W           R4, R7, #-var_38
5D3940:  MOV             SP, R4
5D3942:  VPOP            {D8-D10}
5D3946:  ADD             SP, SP, #4
5D3948:  POP.W           {R8-R11}
5D394C:  POP             {R4-R7,PC}
