; =========================================================
; Game Engine Function: _ZN25CWidgetRegionRhythmSelect4DrawEv
; Address            : 0x2C27C8 - 0x2C28AC
; =========================================================

2C27C8:  PUSH            {R4-R7,LR}
2C27CA:  ADD             R7, SP, #0xC
2C27CC:  PUSH.W          {R11}
2C27D0:  SUB             SP, SP, #0x18
2C27D2:  MOV             R4, R0
2C27D4:  LDRB.W          R0, [R4,#0xB4]
2C27D8:  CMP             R0, #0
2C27DA:  BEQ             loc_2C28A4
2C27DC:  MOVS            R0, #0xFF
2C27DE:  STRB.W          R0, [R4,#0x4C]
2C27E2:  MOV             R0, R4; this
2C27E4:  BLX             j__ZN13CWidgetButton4DrawEv; CWidgetButton::Draw(void)
2C27E8:  ADD.W           R0, R4, #0x20 ; ' '
2C27EC:  ADD             R1, SP, #0x28+var_20
2C27EE:  VLD1.32         {D16-D17}, [R0]
2C27F2:  ADD.W           R0, R4, #0xD8
2C27F6:  ADD.W           R2, R4, #0xC0
2C27FA:  VST1.64         {D16-D17}, [R1]
2C27FE:  VLDR            S0, [R4,#0x24]
2C2802:  VLDR            S2, [R4,#0x2C]
2C2806:  VLDR            S4, =0.85
2C280A:  VSUB.F32        S0, S0, S2
2C280E:  VLDR            S2, =0.08
2C2812:  VLDR            S6, [SP,#0x28+var_20]
2C2816:  VLDR            S8, [SP,#0x28+var_14]
2C281A:  VABS.F32        S0, S0
2C281E:  VMUL.F32        S2, S0, S2
2C2822:  VMUL.F32        S0, S0, S4
2C2826:  VADD.F32        S6, S6, S2
2C282A:  VADD.F32        S2, S8, S2
2C282E:  VADD.F32        S0, S6, S0
2C2832:  VSTR            S6, [SP,#0x28+var_20]
2C2836:  VSTR            S2, [SP,#0x28+var_14]
2C283A:  VSTR            S0, [SP,#0x28+var_18]
2C283E:  VLDR            S0, [R4,#0x20]
2C2842:  VLDR            S6, [R4,#0x28]
2C2846:  VSUB.F32        S0, S6, S0
2C284A:  VABS.F32        S0, S0
2C284E:  VMUL.F32        S0, S0, S4
2C2852:  VADD.F32        S0, S2, S0
2C2856:  VSTR            S0, [SP,#0x28+var_1C]
2C285A:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C285E:  LDRB.W          R0, [R4,#0xC7]
2C2862:  CMP             R0, #0
2C2864:  BEQ             loc_2C2874
2C2866:  ADD.W           R0, R4, #0xDC
2C286A:  ADD.W           R2, R4, #0xC4
2C286E:  ADD             R1, SP, #0x28+var_20
2C2870:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2C2874:  MOVS            R0, #0; int
2C2876:  MOVS            R1, #0; int
2C2878:  BLX             j__Z20LIB_PointerGetButtonii; LIB_PointerGetButton(int,int)
2C287C:  CMP             R0, #3
2C287E:  BNE             loc_2C28A4
2C2880:  ADD             R6, SP, #0x28+var_24
2C2882:  MOVS            R0, #0x80
2C2884:  LDR.W           R5, [R4,#0xB8]
2C2888:  MOVS            R1, #0xFF; unsigned __int8
2C288A:  STR             R0, [SP,#0x28+var_28]; unsigned __int8
2C288C:  MOV             R0, R6; this
2C288E:  MOVS            R2, #0xFF; unsigned __int8
2C2890:  MOVS            R3, #0xFF; unsigned __int8
2C2892:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2C2896:  ADD.W           R0, R4, #0xE0; int
2C289A:  ADD             R1, SP, #0x28+var_20; int
2C289C:  MOV             R2, R5; x
2C289E:  MOV             R3, R6
2C28A0:  BLX             j__ZN9CSprite2d11DrawRotatedER5CRectfRK5CRGBA; CSprite2d::DrawRotated(CRect &,float,CRGBA const&)
2C28A4:  ADD             SP, SP, #0x18
2C28A6:  POP.W           {R11}
2C28AA:  POP             {R4-R7,PC}
