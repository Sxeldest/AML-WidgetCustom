; =========================================================
; Game Engine Function: _ZN13CWidgetRegion9DrawFrameEf5CRectf
; Address            : 0x2BF960 - 0x2BFB80
; =========================================================

2BF960:  PUSH            {R4-R7,LR}
2BF962:  ADD             R7, SP, #0xC
2BF964:  PUSH.W          {R8-R11}
2BF968:  SUB             SP, SP, #4
2BF96A:  VPUSH           {D8-D12}
2BF96E:  SUB             SP, SP, #0xB8
2BF970:  VLDR            S0, [R7,#arg_8]
2BF974:  MOV             R6, R3
2BF976:  STR             R6, [SP,#0x100+var_E0]
2BF978:  MOV             R4, R0
2BF97A:  VCVT.U32.F32    S0, S0
2BF97E:  ADD.W           R9, SP, #0x100+var_4C
2BF982:  MOV             R10, R2
2BF984:  MOV             R5, R1
2BF986:  MOVS            R1, #0xFF; unsigned __int8
2BF988:  MOVS            R2, #0xFF; unsigned __int8
2BF98A:  MOVS            R3, #0xFF; unsigned __int8
2BF98C:  VMOV            R0, S0
2BF990:  STR             R0, [SP,#0x100+var_100]; unsigned __int8
2BF992:  MOV             R0, R9; this
2BF994:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF998:  LDRD.W          R1, R0, [R7,#arg_0]
2BF99C:  VMOV            S0, R10
2BF9A0:  VMOV            S20, R6
2BF9A4:  ADDS            R4, #8
2BF9A6:  VMOV            S4, R0
2BF9AA:  STR             R0, [SP,#0x100+var_70]
2BF9AC:  VMOV            S2, R1
2BF9B0:  STR             R0, [SP,#0x100+var_50]
2BF9B2:  VSUB.F32        S8, S20, S4
2BF9B6:  STR             R0, [SP,#0x100+var_60]
2BF9B8:  VSUB.F32        S6, S2, S0
2BF9BC:  MOV.W           R11, #0
2BF9C0:  VMOV.F32        S10, #0.5
2BF9C4:  MOV             R0, R4; int
2BF9C6:  VMOV            S12, R5
2BF9CA:  MOV             R5, #0x3EA8F5C3
2BF9D2:  MOV             R2, R9; int
2BF9D4:  MOVS            R3, #0; int
2BF9D6:  STR.W           R10, [SP,#0x100+var_5C]
2BF9DA:  VABS.F32        S8, S8
2BF9DE:  VABS.F32        S6, S6
2BF9E2:  VMUL.F32        S8, S8, S10
2BF9E6:  VMUL.F32        S6, S6, S10
2BF9EA:  VMIN.F32        D12, D4, D6
2BF9EE:  VMIN.F32        D3, D3, D6
2BF9F2:  VADD.F32        S22, S24, S4
2BF9F6:  VSUB.F32        S18, S2, S6
2BF9FA:  VADD.F32        S16, S6, S0
2BF9FE:  VSTR            S18, [SP,#0x100+var_7C]
2BFA02:  STR             R1, [SP,#0x100+var_74]
2BFA04:  ADD             R1, SP, #0x100+var_5C; int
2BFA06:  VSTR            S16, [SP,#0x100+var_54]
2BFA0A:  VSTR            S16, [SP,#0x100+var_6C]
2BFA0E:  VSTR            S18, [SP,#0x100+var_64]
2BFA12:  VSTR            S22, [SP,#0x100+var_58]
2BFA16:  VSTR            S22, [SP,#0x100+var_68]
2BFA1A:  VSTR            S22, [SP,#0x100+var_78]
2BFA1E:  STRD.W          R11, R5, [SP,#0x100+var_100]; float
2BFA22:  STRD.W          R11, R11, [SP,#0x100+var_F8]; float
2BFA26:  STRD.W          R5, R5, [SP,#0x100+var_F0]; float
2BFA2A:  STR             R5, [SP,#0x100+var_E8]; float
2BFA2C:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFA30:  MOVW            R6, #0xF5C3
2BFA34:  ADD             R1, SP, #0x100+var_6C; int
2BFA36:  MOVT            R6, #0x3F28
2BFA3A:  MOV             R0, R4; int
2BFA3C:  MOV             R2, R9; int
2BFA3E:  MOV             R3, R5; int
2BFA40:  STRD.W          R11, R6, [SP,#0x100+var_100]; float
2BFA44:  STRD.W          R11, R5, [SP,#0x100+var_F8]; float
2BFA48:  STRD.W          R5, R6, [SP,#0x100+var_F0]; float
2BFA4C:  STR             R5, [SP,#0x100+var_E8]; float
2BFA4E:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFA52:  ADD             R1, SP, #0x100+var_7C; int
2BFA54:  MOV.W           R8, #0x3F800000
2BFA58:  MOV             R0, R4; int
2BFA5A:  MOV             R2, R9; int
2BFA5C:  MOV             R3, R6; int
2BFA5E:  STRD.W          R11, R8, [SP,#0x100+var_100]; float
2BFA62:  STRD.W          R11, R6, [SP,#0x100+var_F8]; float
2BFA66:  STRD.W          R5, R8, [SP,#0x100+var_F0]; float
2BFA6A:  STR             R5, [SP,#0x100+var_E8]; float
2BFA6C:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFA70:  VSUB.F32        S20, S20, S24
2BFA74:  LDR             R0, [R7,#arg_0]
2BFA76:  ADD             R1, SP, #0x100+var_8C; int
2BFA78:  VSTR            S22, [SP,#0x100+var_A0]
2BFA7C:  VSTR            S18, [SP,#0x100+var_AC]
2BFA80:  MOV             R2, R9; int
2BFA82:  STR             R0, [SP,#0x100+var_A4]
2BFA84:  MOV             R0, R4; int
2BFA86:  MOVS            R3, #0; int
2BFA88:  VSTR            S22, [SP,#0x100+var_80]
2BFA8C:  STR.W           R10, [SP,#0x100+var_8C]
2BFA90:  VSTR            S16, [SP,#0x100+var_84]
2BFA94:  VSTR            S22, [SP,#0x100+var_90]
2BFA98:  VSTR            S16, [SP,#0x100+var_9C]
2BFA9C:  VSTR            S18, [SP,#0x100+var_94]
2BFAA0:  VSTR            S20, [SP,#0x100+var_88]
2BFAA4:  VSTR            S20, [SP,#0x100+var_98]
2BFAA8:  VSTR            S20, [SP,#0x100+var_A8]
2BFAAC:  STRD.W          R5, R5, [SP,#0x100+var_100]; float
2BFAB0:  STRD.W          R5, R11, [SP,#0x100+var_F8]; float
2BFAB4:  STRD.W          R6, R5, [SP,#0x100+var_F0]; float
2BFAB8:  STR             R6, [SP,#0x100+var_E8]; float
2BFABA:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFABE:  ADD             R1, SP, #0x100+var_9C; int
2BFAC0:  MOV             R0, R4; int
2BFAC2:  MOV             R2, R9; int
2BFAC4:  MOV             R3, R5; int
2BFAC6:  STRD.W          R5, R6, [SP,#0x100+var_100]; float
2BFACA:  STRD.W          R5, R5, [SP,#0x100+var_F8]; float
2BFACE:  STRD.W          R6, R6, [SP,#0x100+var_F0]; float
2BFAD2:  STR             R6, [SP,#0x100+var_E8]; float
2BFAD4:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFAD8:  ADD             R1, SP, #0x100+var_AC; int
2BFADA:  MOV             R0, R4; int
2BFADC:  MOV             R2, R9; int
2BFADE:  MOV             R3, R6; int
2BFAE0:  STRD.W          R5, R8, [SP,#0x100+var_100]; float
2BFAE4:  STRD.W          R5, R6, [SP,#0x100+var_F8]; float
2BFAE8:  STRD.W          R6, R8, [SP,#0x100+var_F0]; float
2BFAEC:  STR             R6, [SP,#0x100+var_E8]; float
2BFAEE:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFAF2:  LDR             R1, [R7,#arg_0]
2BFAF4:  MOV             R2, R9; int
2BFAF6:  LDR             R0, [SP,#0x100+var_E0]
2BFAF8:  MOVS            R3, #0; int
2BFAFA:  STR.W           R10, [SP,#0x100+var_BC]
2BFAFE:  VSTR            S20, [SP,#0x100+var_B0]
2BFB02:  VSTR            S16, [SP,#0x100+var_B4]
2BFB06:  VSTR            S20, [SP,#0x100+var_C0]
2BFB0A:  VSTR            S16, [SP,#0x100+var_CC]
2BFB0E:  VSTR            S18, [SP,#0x100+var_C4]
2BFB12:  VSTR            S20, [SP,#0x100+var_D0]
2BFB16:  STR             R0, [SP,#0x100+var_B8]
2BFB18:  STR             R0, [SP,#0x100+var_C8]
2BFB1A:  VSTR            S18, [SP,#0x100+var_DC]
2BFB1E:  STRD.W          R0, R1, [SP,#0x100+var_D8]
2BFB22:  ADD             R1, SP, #0x100+var_BC; int
2BFB24:  MOV             R0, R4; int
2BFB26:  STRD.W          R6, R5, [SP,#0x100+var_100]; float
2BFB2A:  STRD.W          R6, R11, [SP,#0x100+var_F8]; float
2BFB2E:  STRD.W          R8, R5, [SP,#0x100+var_F0]; float
2BFB32:  STR.W           R8, [SP,#0x100+var_E8]; float
2BFB36:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFB3A:  ADD             R1, SP, #0x100+var_CC; int
2BFB3C:  MOV             R0, R4; int
2BFB3E:  MOV             R2, R9; int
2BFB40:  MOV             R3, R5; int
2BFB42:  STRD.W          R6, R6, [SP,#0x100+var_100]; float
2BFB46:  STRD.W          R6, R5, [SP,#0x100+var_F8]; float
2BFB4A:  STRD.W          R8, R6, [SP,#0x100+var_F0]; float
2BFB4E:  STR.W           R8, [SP,#0x100+var_E8]; float
2BFB52:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFB56:  ADD             R1, SP, #0x100+var_DC; int
2BFB58:  MOV             R0, R4; int
2BFB5A:  MOV             R2, R9; int
2BFB5C:  MOV             R3, R6; int
2BFB5E:  STRD.W          R6, R8, [SP,#0x100+var_100]; float
2BFB62:  STRD.W          R6, R6, [SP,#0x100+var_F8]; float
2BFB66:  STRD.W          R8, R8, [SP,#0x100+var_F0]; float
2BFB6A:  STR.W           R8, [SP,#0x100+var_E8]; float
2BFB6E:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BFB72:  ADD             SP, SP, #0xB8
2BFB74:  VPOP            {D8-D12}
2BFB78:  ADD             SP, SP, #4
2BFB7A:  POP.W           {R8-R11}
2BFB7E:  POP             {R4-R7,PC}
