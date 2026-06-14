; =========================================================
; Game Engine Function: _ZN6CRadar10DrawLegendEiii
; Address            : 0x441B74 - 0x441EBA
; =========================================================

441B74:  PUSH            {R4,R5,R7,LR}
441B76:  ADD             R7, SP, #8
441B78:  VPUSH           {D8-D13}
441B7C:  SUB             SP, SP, #0x30
441B7E:  MOV             R4, R2
441B80:  CMP             R4, #0
441B82:  BLT             loc_441BF0
441B84:  LDR             R2, =(RsGlobal_ptr - 0x441B94)
441B86:  VMOV            S4, R0
441B8A:  VLDR            S2, =640.0
441B8E:  ADD             R5, SP, #0x68+var_4C
441B90:  ADD             R2, PC; RsGlobal_ptr
441B92:  MOVS            R0, #0xFF
441B94:  MOVS            R3, #0xFF; unsigned __int8
441B96:  LDR             R2, [R2]; RsGlobal
441B98:  VLDR            S0, [R2,#4]
441B9C:  MOVS            R2, #0xFF; unsigned __int8
441B9E:  VCVT.F32.S32    S0, S0
441BA2:  VCVT.F32.S32    S4, S4
441BA6:  VDIV.F32        S0, S0, S2
441BAA:  VMOV.F32        S2, #16.0
441BAE:  VMUL.F32        S0, S0, S2
441BB2:  VMOV            S2, R1
441BB6:  MOVS            R1, #0xFF; unsigned __int8
441BB8:  VCVT.F32.S32    S2, S2
441BBC:  STR             R0, [SP,#0x68+var_68]; unsigned __int8
441BBE:  MOV             R0, R5; this
441BC0:  VSTR            S4, [SP,#0x68+var_48]
441BC4:  VADD.F32        S6, S0, S4
441BC8:  VADD.F32        S0, S0, S2
441BCC:  VSTR            S2, [SP,#0x68+var_3C]
441BD0:  VSTR            S6, [SP,#0x68+var_40]
441BD4:  VSTR            S0, [SP,#0x68+var_44]
441BD8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
441BDC:  LDR             R0, =(_ZN6CRadar16RadarBlipSpritesE_ptr - 0x441BE6)
441BDE:  ADD             R1, SP, #0x68+var_48
441BE0:  MOV             R2, R5
441BE2:  ADD             R0, PC; _ZN6CRadar16RadarBlipSpritesE_ptr
441BE4:  LDR             R0, [R0]; CRadar::RadarBlipSprites ...
441BE6:  ADD.W           R0, R0, R4,LSL#2
441BEA:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
441BEE:  B               loc_441EB2
441BF0:  LDR             R2, =(_ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr - 0x441BF8)
441BF2:  LDR             R3, =(_ZN6CRadar15ArrowBlipColourE_ptr - 0x441BFC)
441BF4:  ADD             R2, PC; _ZN6CTimer31m_snTimeInMillisecondsPauseModeE_ptr
441BF6:  LDR             R5, =(dword_994EE0 - 0x441C00)
441BF8:  ADD             R3, PC; _ZN6CRadar15ArrowBlipColourE_ptr
441BFA:  LDR             R2, [R2]; CTimer::m_snTimeInMillisecondsPauseMode ...
441BFC:  ADD             R5, PC; dword_994EE0
441BFE:  LDR             R3, [R3]; CRadar::ArrowBlipColour ...
441C00:  LDR             R5, [R5]
441C02:  SUB.W           R3, R3, R4,LSL#2
441C06:  LDR             R2, [R2]; CTimer::m_snTimeInMillisecondsPauseMode
441C08:  LDR             R3, [R3]
441C0A:  STR             R3, [SP,#0x68+var_4C]
441C0C:  SUBS            R3, R2, R5
441C0E:  CMP.W           R3, #0x258
441C12:  BLS             loc_441C2C
441C14:  LDR             R3, =(byte_994EE4 - 0x441C1C)
441C16:  LDR             R5, =(dword_994EE0 - 0x441C1E)
441C18:  ADD             R3, PC; byte_994EE4
441C1A:  ADD             R5, PC; dword_994EE0
441C1C:  LDRB            R4, [R3]
441C1E:  STR             R2, [R5]
441C20:  ADDS            R2, R4, #1
441C22:  CMP             R4, #2
441C24:  IT EQ
441C26:  MOVEQ           R2, #0
441C28:  STRB            R2, [R3]
441C2A:  B               loc_441C32
441C2C:  LDR             R2, =(byte_994EE4 - 0x441C32)
441C2E:  ADD             R2, PC; byte_994EE4
441C30:  LDRB            R2, [R2]
441C32:  LDR             R3, =(RsGlobal_ptr - 0x441C42)
441C34:  VMOV            S6, R0
441C38:  VLDR            S16, =448.0
441C3C:  UXTB            R0, R2
441C3E:  ADD             R3, PC; RsGlobal_ptr
441C40:  VLDR            S18, =640.0
441C44:  CMP             R0, #2
441C46:  LDR             R3, [R3]; RsGlobal
441C48:  VLDR            S0, [R3,#4]
441C4C:  VLDR            S2, [R3,#8]
441C50:  VCVT.F32.S32    S2, S2
441C54:  VCVT.F32.S32    S0, S0
441C58:  VDIV.F32        S20, S2, S16
441C5C:  VDIV.F32        S22, S0, S18
441C60:  VMOV.F32        S0, #8.0
441C64:  VMOV            S2, R1
441C68:  VCVT.F32.S32    S2, S2
441C6C:  VCVT.F32.S32    S6, S6
441C70:  VMUL.F32        S4, S20, S0
441C74:  VMUL.F32        S0, S22, S0
441C78:  VADD.F32        S2, S4, S2
441C7C:  VADD.F32        S0, S0, S6
441C80:  VCVT.S32.F32    S26, S2
441C84:  VCVT.S32.F32    S24, S0
441C88:  BEQ             loc_441D54
441C8A:  CMP             R0, #1
441C8C:  BEQ.W           loc_441DF6
441C90:  CMP             R0, #0
441C92:  BNE.W           loc_441EB2
441C96:  MOVS            R0, #0xFF
441C98:  MOVS            R1, #0; unsigned __int8
441C9A:  STR             R0, [SP,#0x68+var_68]; float
441C9C:  ADD             R0, SP, #0x68+var_48; this
441C9E:  MOVS            R2, #0; unsigned __int8
441CA0:  MOVS            R3, #0; unsigned __int8
441CA2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
441CA6:  VMOV.F32        S2, #6.0
441CAA:  VMOV.F32        S0, #7.0
441CAE:  VCVT.F32.S32    S24, S24
441CB2:  VMUL.F32        S2, S20, S2
441CB6:  VMUL.F32        S4, S22, S0
441CBA:  VCVT.F32.S32    S22, S26
441CBE:  STR             R0, [SP,#0x68+var_58]; float
441CC0:  VMUL.F32        S0, S20, S0
441CC4:  VSTR            S24, [SP,#0x68+var_68]
441CC8:  VADD.F32        S6, S4, S24
441CCC:  VADD.F32        S2, S2, S22
441CD0:  VSUB.F32        S4, S24, S4
441CD4:  VSUB.F32        S0, S22, S0
441CD8:  VMOV            R3, S6
441CDC:  VMOV            R1, S2; float
441CE0:  VMOV            R2, S4; float
441CE4:  VSTR            S0, [SP,#0x68+var_64]
441CE8:  VSTR            S24, [SP,#0x68+var_60]
441CEC:  VSTR            S0, [SP,#0x68+var_5C]
441CF0:  MOV             R0, R3; this
441CF2:  MOV             R3, R1; float
441CF4:  BLX             j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
441CF8:  LDR             R0, =(RsGlobal_ptr - 0x441D04)
441CFA:  VMOV.F32        S4, #5.0
441CFE:  ADD             R3, SP, #0x68+var_4C
441D00:  ADD             R0, PC; RsGlobal_ptr
441D02:  LDR             R0, [R0]; RsGlobal
441D04:  VLDR            S0, [R0,#4]
441D08:  VLDR            S2, [R0,#8]
441D0C:  VCVT.F32.S32    S0, S0
441D10:  VCVT.F32.S32    S2, S2
441D14:  STR             R3, [SP,#0x68+var_58]
441D16:  VSTR            S24, [SP,#0x68+var_68]
441D1A:  VDIV.F32        S0, S0, S18
441D1E:  VDIV.F32        S2, S2, S16
441D22:  VMUL.F32        S2, S2, S4
441D26:  VMUL.F32        S0, S0, S4
441D2A:  VADD.F32        S6, S2, S22
441D2E:  VADD.F32        S4, S0, S24
441D32:  VSUB.F32        S0, S24, S0
441D36:  VMOV            R1, S6
441D3A:  VMOV            R0, S4
441D3E:  VMOV            R2, S0
441D42:  VSUB.F32        S0, S22, S2
441D46:  VSTR            S0, [SP,#0x68+var_64]
441D4A:  VSTR            S24, [SP,#0x68+var_60]
441D4E:  VSTR            S0, [SP,#0x68+var_5C]
441D52:  B               loc_441EAC
441D54:  VMOV.F32        S0, #5.0
441D58:  ADD             R4, SP, #0x68+var_50
441D5A:  VCVT.F32.S32    S26, S26
441D5E:  MOVS            R0, #0xFF
441D60:  MOVS            R1, #0; unsigned __int8
441D62:  MOVS            R2, #0; unsigned __int8
441D64:  MOVS            R3, #0; unsigned __int8
441D66:  VMUL.F32        S2, S20, S0
441D6A:  VCVT.F32.S32    S20, S24
441D6E:  STR             R0, [SP,#0x68+var_68]; unsigned __int8
441D70:  VMUL.F32        S0, S22, S0
441D74:  MOV             R0, R4; this
441D76:  VSUB.F32        S4, S26, S2
441D7A:  VADD.F32        S2, S2, S26
441D7E:  VSUB.F32        S6, S20, S0
441D82:  VADD.F32        S0, S0, S20
441D86:  VSTR            S4, [SP,#0x68+var_3C]
441D8A:  VSTR            S6, [SP,#0x68+var_48]
441D8E:  VSTR            S0, [SP,#0x68+var_40]
441D92:  VSTR            S2, [SP,#0x68+var_44]
441D96:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
441D9A:  ADD             R0, SP, #0x68+var_48
441D9C:  MOV             R1, R4
441D9E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
441DA2:  LDR             R0, =(RsGlobal_ptr - 0x441DAE)
441DA4:  VMOV.F32        S4, #4.0
441DA8:  ADD             R1, SP, #0x68+var_4C
441DAA:  ADD             R0, PC; RsGlobal_ptr
441DAC:  LDR             R0, [R0]; RsGlobal
441DAE:  VLDR            S0, [R0,#4]
441DB2:  VLDR            S2, [R0,#8]
441DB6:  ADD             R0, SP, #0x68+var_48
441DB8:  VCVT.F32.S32    S0, S0
441DBC:  VCVT.F32.S32    S2, S2
441DC0:  VDIV.F32        S0, S0, S18
441DC4:  VDIV.F32        S2, S2, S16
441DC8:  VMUL.F32        S2, S2, S4
441DCC:  VMUL.F32        S0, S0, S4
441DD0:  VSUB.F32        S6, S26, S2
441DD4:  VSUB.F32        S4, S20, S0
441DD8:  VADD.F32        S0, S0, S20
441DDC:  VADD.F32        S2, S2, S26
441DE0:  VSTR            S4, [SP,#0x68+var_48]
441DE4:  VSTR            S6, [SP,#0x68+var_3C]
441DE8:  VSTR            S0, [SP,#0x68+var_40]
441DEC:  VSTR            S2, [SP,#0x68+var_44]
441DF0:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
441DF4:  B               loc_441EB2
441DF6:  MOVS            R0, #0xFF
441DF8:  MOVS            R1, #0; unsigned __int8
441DFA:  STR             R0, [SP,#0x68+var_68]; float
441DFC:  ADD             R0, SP, #0x68+var_48; this
441DFE:  MOVS            R2, #0; unsigned __int8
441E00:  MOVS            R3, #0; unsigned __int8
441E02:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
441E06:  VMOV.F32        S0, #7.0
441E0A:  VCVT.F32.S32    S26, S26
441E0E:  VCVT.F32.S32    S24, S24
441E12:  STR             R0, [SP,#0x68+var_58]; float
441E14:  VMOV.F32        S4, #-6.0
441E18:  VMUL.F32        S2, S20, S0
441E1C:  VMUL.F32        S0, S22, S0
441E20:  VMOV            R4, S24
441E24:  VMUL.F32        S4, S20, S4
441E28:  VADD.F32        S2, S2, S26
441E2C:  VMOV            R1, S2; float
441E30:  VADD.F32        S2, S26, S4
441E34:  VSUB.F32        S4, S24, S0
441E38:  VADD.F32        S0, S0, S24
441E3C:  MOV             R0, R4; this
441E3E:  MOV             R2, R4; float
441E40:  VSTR            S0, [SP,#0x68+var_68]
441E44:  VSTR            S2, [SP,#0x68+var_64]
441E48:  VSTR            S4, [SP,#0x68+var_60]
441E4C:  VSTR            S2, [SP,#0x68+var_5C]
441E50:  MOV             R3, R1; float
441E52:  BLX             j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
441E56:  LDR             R0, =(RsGlobal_ptr - 0x441E62)
441E58:  VMOV.F32        S4, #5.0
441E5C:  MOV             R2, R4; float
441E5E:  ADD             R0, PC; RsGlobal_ptr
441E60:  LDR             R0, [R0]; RsGlobal
441E62:  VLDR            S0, [R0,#4]
441E66:  VLDR            S2, [R0,#8]
441E6A:  ADD             R0, SP, #0x68+var_4C
441E6C:  VCVT.F32.S32    S2, S2
441E70:  VCVT.F32.S32    S0, S0
441E74:  STR             R0, [SP,#0x68+var_58]; float
441E76:  MOV             R0, R4; this
441E78:  VDIV.F32        S2, S2, S16
441E7C:  VDIV.F32        S0, S0, S18
441E80:  VMUL.F32        S2, S2, S4
441E84:  VMUL.F32        S0, S0, S4
441E88:  VADD.F32        S6, S2, S26
441E8C:  VSUB.F32        S4, S24, S0
441E90:  VADD.F32        S0, S0, S24
441E94:  VSUB.F32        S2, S26, S2
441E98:  VMOV            R1, S6; float
441E9C:  VSTR            S0, [SP,#0x68+var_68]
441EA0:  VSTR            S2, [SP,#0x68+var_64]
441EA4:  VSTR            S4, [SP,#0x68+var_60]
441EA8:  VSTR            S2, [SP,#0x68+var_5C]
441EAC:  MOV             R3, R1; float
441EAE:  BLX             j__ZN9CSprite2d13Draw2DPolygonEffffffffRK5CRGBA; CSprite2d::Draw2DPolygon(float,float,float,float,float,float,float,float,CRGBA const&)
441EB2:  ADD             SP, SP, #0x30 ; '0'
441EB4:  VPOP            {D8-D13}
441EB8:  POP             {R4,R5,R7,PC}
