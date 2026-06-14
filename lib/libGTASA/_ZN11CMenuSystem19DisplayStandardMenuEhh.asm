; =========================================================
; Game Engine Function: _ZN11CMenuSystem19DisplayStandardMenuEhh
; Address            : 0x43C94C - 0x43D212
; =========================================================

43C94C:  PUSH            {R4-R7,LR}
43C94E:  ADD             R7, SP, #0xC
43C950:  PUSH.W          {R8-R11}
43C954:  SUB             SP, SP, #4
43C956:  VPUSH           {D8-D15}
43C95A:  SUB.W           SP, SP, #0x3B0
43C95E:  MOV             R4, R0
43C960:  LDR.W           R0, =(RsGlobal_ptr - 0x43C970)
43C964:  VLDR            S16, =448.0
43C968:  VMOV.F32        S18, #20.0
43C96C:  ADD             R0, PC; RsGlobal_ptr
43C96E:  MOV.W           R11, #0
43C972:  CMP             R1, #0
43C974:  LDR             R0, [R0]; RsGlobal
43C976:  VLDR            S0, [R0,#8]
43C97A:  LDR.W           R0, =(MenuNumber_ptr - 0x43C986)
43C97E:  VCVT.F32.S32    S0, S0
43C982:  ADD             R0, PC; MenuNumber_ptr
43C984:  LDR             R0, [R0]; MenuNumber
43C986:  LDR.W           R9, [R0,R4,LSL#2]
43C98A:  VDIV.F32        S0, S0, S16
43C98E:  LDRB.W          R0, [R9,#0x414]
43C992:  VMUL.F32        S2, S0, S18
43C996:  VCVT.U32.F32    S2, S2
43C99A:  IT EQ
43C99C:  MOVEQ.W         R11, #0x78 ; 'x'
43C9A0:  CMP             R0, #0
43C9A2:  VMOV            R10, S2
43C9A6:  BEQ.W           loc_43CAE2
43C9AA:  LDRB.W          LR, [R9,#0x3F7]
43C9AE:  MOV.W           R8, #0
43C9B2:  CMP.W           LR, #0
43C9B6:  BEQ             loc_43CA34
43C9B8:  VLDR            S2, =40.0
43C9BC:  MOV.W           R12, #0x46 ; 'F'
43C9C0:  LDRB.W          R0, [R9,#0x3A4]
43C9C4:  VMUL.F32        S2, S0, S2
43C9C8:  VLDR            S6, [R9,#0x3FC]
43C9CC:  VLDR            S4, =0.0
43C9D0:  CMP             R0, #0
43C9D2:  MOV.W           R0, #0x46 ; 'F'
43C9D6:  VADD.F32        S4, S6, S4
43C9DA:  VCVT.U32.F32    S2, S2
43C9DE:  VMOV            R3, S2
43C9E2:  IT NE
43C9E4:  MOVNE           R10, R3
43C9E6:  VCVT.U32.F32    S2, S4
43C9EA:  IT EQ
43C9EC:  MOVEQ           R0, #0x32 ; '2'
43C9EE:  CMP.W           LR, #1
43C9F2:  VMOV            R1, S2
43C9F6:  BEQ             loc_43CA38
43C9F8:  ADD.W           R5, R9, #0x400
43C9FC:  ADDW            R6, R9, #0x3AE
43CA00:  MOVS            R2, #1
43CA02:  UXTH            R1, R1
43CA04:  ADDS            R2, #1
43CA06:  VMOV            S2, R1
43CA0A:  VCVT.F32.U32    S2, S2
43CA0E:  VLDR            S4, [R5]
43CA12:  LDRB.W          R1, [R6],#0xA
43CA16:  ADDS            R5, #4
43CA18:  CMP             R1, #0
43CA1A:  IT NE
43CA1C:  MOVNE           R0, R12
43CA1E:  VADD.F32        S2, S4, S2
43CA22:  VCVT.U32.F32    S2, S2
43CA26:  IT NE
43CA28:  MOVNE           R10, R3
43CA2A:  CMP             R2, LR
43CA2C:  VMOV            R1, S2
43CA30:  BCC             loc_43CA02
43CA32:  B               loc_43CA38
43CA34:  MOVS            R0, #0x32 ; '2'
43CA36:  MOVS            R1, #0
43CA38:  LDR.W           R2, =(RsGlobal_ptr - 0x43CA4A)
43CA3C:  UXTB            R0, R0
43CA3E:  VLDR            S4, =640.0
43CA42:  VMOV            S8, R0
43CA46:  ADD             R2, PC; RsGlobal_ptr
43CA48:  ADD.W           R0, R9, #0x410
43CA4C:  VMOV            S10, R1
43CA50:  MOVS            R1, #0; unsigned __int8
43CA52:  LDR             R2, [R2]; RsGlobal
43CA54:  MOVS            R3, #0; unsigned __int8
43CA56:  VLDR            S2, [R2,#4]
43CA5A:  VCVT.F32.S32    S2, S2
43CA5E:  LDRB.W          R2, [R9,#0x3F6]
43CA62:  VMOV            S6, R2
43CA66:  MOVS            R2, #0; unsigned __int8
43CA68:  VCVT.F32.U32    S6, S6
43CA6C:  VCVT.F32.U32    S8, S8
43CA70:  VDIV.F32        S2, S2, S4
43CA74:  VMOV.F32        S4, #16.0
43CA78:  VMUL.F32        S2, S2, S18
43CA7C:  VMUL.F32        S4, S0, S4
43CA80:  VMUL.F32        S0, S0, S8
43CA84:  VMUL.F32        S4, S4, S6
43CA88:  VLDR            S6, [R0]
43CA8C:  ADDW            R0, R9, #0x40C
43CA90:  VLDR            S8, [R0]
43CA94:  VCVT.F32.U32    S10, S10
43CA98:  MOVS            R0, #0xBE
43CA9A:  VADD.F32        S2, S8, S2
43CA9E:  STR             R0, [SP,#0x410+var_410]; unsigned __int8
43CAA0:  ADD             R0, SP, #0x410+var_68; this
43CAA2:  VSTR            S8, [SP,#0x410+var_3AC]
43CAA6:  VADD.F32        S4, S6, S4
43CAAA:  VSTR            S6, [SP,#0x410+var_3A0]
43CAAE:  VADD.F32        S2, S2, S10
43CAB2:  VADD.F32        S0, S0, S4
43CAB6:  VSTR            S0, [SP,#0x410+var_3A8]
43CABA:  VSTR            S2, [SP,#0x410+var_3A4]
43CABE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43CAC2:  LDR.W           R1, =(FrontEndMenuManager_ptr - 0x43CAD4)
43CAC6:  ADD.W           R2, R9, #0x3CC
43CACA:  MOVS            R5, #1
43CACC:  STRD.W          R0, R8, [SP,#0x410+var_410]
43CAD0:  ADD             R1, PC; FrontEndMenuManager_ptr
43CAD2:  UXTB.W          R3, R11
43CAD6:  STR             R5, [SP,#0x410+var_408]
43CAD8:  LDR             R6, [R1]; FrontEndMenuManager
43CADA:  ADD             R1, SP, #0x410+var_3AC
43CADC:  MOV             R0, R6
43CADE:  BLX             j__ZN12CMenuManager10DrawWindowERK5CRectPch5CRGBAhh; CMenuManager::DrawWindow(CRect const&,char *,uchar,CRGBA,uchar,uchar)
43CAE2:  MOVS            R0, #(stderr+1); this
43CAE4:  STR.W           R10, [SP,#0x410+var_3E8]
43CAE8:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
43CAEC:  LDR.W           R0, =(RsGlobal_ptr - 0x43CAF4)
43CAF0:  ADD             R0, PC; RsGlobal_ptr
43CAF2:  LDR             R0, [R0]; RsGlobal
43CAF4:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
43CAF6:  VMOV            S0, R0
43CAFA:  VCVT.F32.S32    S0, S0
43CAFE:  VDIV.F32        S0, S0, S16
43CB02:  VMOV            R0, S0; this
43CB06:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
43CB0A:  MOVS            R0, #(stderr+2); this
43CB0C:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
43CB10:  MOVS            R0, #0xFF
43CB12:  MOVS            R1, #0; unsigned __int8
43CB14:  STR             R0, [SP,#0x410+var_410]; unsigned __int8
43CB16:  ADD             R0, SP, #0x410+var_6C; this
43CB18:  MOVS            R2, #0; unsigned __int8
43CB1A:  MOVS            R3, #0; unsigned __int8
43CB1C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43CB20:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
43CB24:  MOVS            R0, #0; this
43CB26:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
43CB2A:  LDR.W           R0, =(MenuNumber_ptr - 0x43CB32)
43CB2E:  ADD             R0, PC; MenuNumber_ptr
43CB30:  LDR             R0, [R0]; MenuNumber
43CB32:  LDR.W           R0, [R0,R4,LSL#2]
43CB36:  LDRB.W          R1, [R0,#0x3F7]
43CB3A:  STR.W           R11, [SP,#0x410+var_3D8]
43CB3E:  CMP             R1, #0
43CB40:  BEQ.W           loc_43CDB2
43CB44:  UXTB.W          R1, R11
43CB48:  LDR.W           R2, =(MenuNumber_ptr - 0x43CB5C)
43CB4C:  RSB.W           R1, R1, #0xE1
43CB50:  VMOV.F32        S22, #10.0
43CB54:  VMOV.F32        S24, #0.5
43CB58:  ADD             R2, PC; MenuNumber_ptr
43CB5A:  UXTB            R5, R1
43CB5C:  LDR.W           R1, =(RsGlobal_ptr - 0x43CB6C)
43CB60:  LDR.W           R10, [R2]; MenuNumber
43CB64:  MOV.W           R9, #0
43CB68:  ADD             R1, PC; RsGlobal_ptr
43CB6A:  VLDR            S20, =640.0
43CB6E:  MOV.W           R8, #0
43CB72:  LDR             R1, [R1]; RsGlobal
43CB74:  STR             R1, [SP,#0x410+var_3B4]
43CB76:  LDR.W           R1, =(MenuNumber_ptr - 0x43CB7E)
43CB7A:  ADD             R1, PC; MenuNumber_ptr
43CB7C:  LDR             R1, [R1]; MenuNumber
43CB7E:  STR             R1, [SP,#0x410+var_3B8]
43CB80:  LDR.W           R1, =(TheText_ptr - 0x43CB88)
43CB84:  ADD             R1, PC; TheText_ptr
43CB86:  LDR             R1, [R1]; TheText
43CB88:  STR             R1, [SP,#0x410+var_3BC]
43CB8A:  LDR.W           R1, =(RsGlobal_ptr - 0x43CB92)
43CB8E:  ADD             R1, PC; RsGlobal_ptr
43CB90:  LDR             R1, [R1]; RsGlobal
43CB92:  STR             R1, [SP,#0x410+var_3C0]
43CB94:  LDR.W           R1, =(MenuNumber_ptr - 0x43CB9C)
43CB98:  ADD             R1, PC; MenuNumber_ptr
43CB9A:  LDR             R1, [R1]; MenuNumber
43CB9C:  STR             R1, [SP,#0x410+var_3C4]
43CB9E:  LDR.W           R1, =(TheText_ptr - 0x43CBA6)
43CBA2:  ADD             R1, PC; TheText_ptr
43CBA4:  LDR             R1, [R1]; TheText
43CBA6:  STR             R1, [SP,#0x410+var_3C8]
43CBA8:  LDR.W           R1, =(RsGlobal_ptr - 0x43CBB0)
43CBAC:  ADD             R1, PC; RsGlobal_ptr
43CBAE:  LDR             R1, [R1]; RsGlobal
43CBB0:  STR             R1, [SP,#0x410+var_3CC]
43CBB2:  LDR.W           R1, =(MenuNumber_ptr - 0x43CBBA)
43CBB6:  ADD             R1, PC; MenuNumber_ptr
43CBB8:  LDR             R1, [R1]; MenuNumber
43CBBA:  STR             R1, [SP,#0x410+var_3D0]
43CBBC:  LDR.W           R1, =(TheText_ptr - 0x43CBC4)
43CBC0:  ADD             R1, PC; TheText_ptr
43CBC2:  LDR             R1, [R1]; TheText
43CBC4:  STR             R1, [SP,#0x410+var_3D4]
43CBC6:  LDR.W           R1, =(MenuNumber_ptr - 0x43CBCE)
43CBCA:  ADD             R1, PC; MenuNumber_ptr
43CBCC:  LDR             R1, [R1]; MenuNumber
43CBCE:  STR             R1, [SP,#0x410+var_3B0]
43CBD0:  ADD.W           R11, R8, R8,LSL#2
43CBD4:  ADD.W           R1, R0, R11,LSL#1
43CBD8:  LDRB.W          R1, [R1,#0x3A4]
43CBDC:  CMP             R1, #0
43CBDE:  BEQ.W           loc_43CD9C
43CBE2:  ADD.W           R1, R0, R8; unsigned __int8
43CBE6:  LDRSB.W         R0, [R1,#0x3F2]
43CBEA:  CMP.W           R0, #0xFFFFFFFF
43CBEE:  IT LE
43CBF0:  LDRBLE.W        R0, [R1,#0x3EE]
43CBF4:  UXTB            R6, R0
43CBF6:  MOV             R0, R6; this
43CBF8:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
43CBFC:  MOVS            R0, #0xFF
43CBFE:  MOV             R1, R5; unsigned __int8
43CC00:  STR             R0, [SP,#0x410+var_410]; unsigned __int8
43CC02:  ADD             R0, SP, #0x410+var_70; this
43CC04:  MOV             R2, R5; unsigned __int8
43CC06:  MOV             R3, R5; unsigned __int8
43CC08:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43CC0C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
43CC10:  MOVS.W          R0, R9,LSL#24
43CC14:  BEQ             loc_43CCB2
43CC16:  LDR             R0, [SP,#0x410+var_3B0]
43CC18:  UXTB.W          R1, R9
43CC1C:  LDR.W           R0, [R0,R4,LSL#2]
43CC20:  ADD.W           R2, R0, #0x3FC
43CC24:  MOVS            R0, #0
43CC26:  UXTH            R0, R0
43CC28:  SUBS            R1, #1
43CC2A:  VMOV            S0, R0
43CC2E:  VCVT.F32.U32    S0, S0
43CC32:  VLDR            S2, [R2]
43CC36:  ADD.W           R2, R2, #4
43CC3A:  VADD.F32        S0, S2, S0
43CC3E:  VCVT.U32.F32    S0, S0
43CC42:  VMOV            R0, S0
43CC46:  BNE             loc_43CC26
43CC48:  CBZ             R6, loc_43CCB8
43CC4A:  CMP             R6, #2
43CC4C:  BNE             loc_43CD34
43CC4E:  LDR             R1, [SP,#0x410+var_3C0]
43CC50:  VMOV            S6, R0
43CC54:  VLDR            S0, [R1,#4]
43CC58:  VLDR            S2, [R1,#8]
43CC5C:  VCVT.F32.S32    S0, S0
43CC60:  VCVT.F32.S32    S2, S2
43CC64:  LDR             R1, [SP,#0x410+var_3C4]
43CC66:  LDR.W           R1, [R1,R4,LSL#2]
43CC6A:  ADDW            R2, R1, #0x40C
43CC6E:  ADD.W           R0, R1, #0x410
43CC72:  VDIV.F32        S0, S0, S20
43CC76:  VDIV.F32        S2, S2, S16
43CC7A:  VMUL.F32        S0, S0, S22
43CC7E:  VLDR            S4, [R2]
43CC82:  VCVT.F32.U32    S6, S6
43CC86:  VMUL.F32        S2, S2, S18
43CC8A:  VADD.F32        S0, S4, S0
43CC8E:  VLDR            S4, [R0]
43CC92:  ADD.W           R0, R1, R8,LSL#2
43CC96:  VADD.F32        S26, S4, S2
43CC9A:  VADD.F32        S0, S0, S6
43CC9E:  VLDR            S6, [R0,#0x3FC]
43CCA2:  ADD.W           R0, R1, R11,LSL#1
43CCA6:  ADD.W           R1, R0, #0x3A4
43CCAA:  LDR             R0, [SP,#0x410+var_3C8]
43CCAC:  VADD.F32        S28, S6, S0
43CCB0:  B               loc_43CD8A
43CCB2:  MOVS            R0, #0
43CCB4:  CMP             R6, #0
43CCB6:  BNE             loc_43CC4A
43CCB8:  LDR             R1, [SP,#0x410+var_3B4]
43CCBA:  VMOV            S6, R0
43CCBE:  VLDR            S0, [R1,#4]
43CCC2:  VLDR            S2, [R1,#8]
43CCC6:  VCVT.F32.S32    S0, S0
43CCCA:  VCVT.F32.S32    S2, S2
43CCCE:  LDR             R1, [SP,#0x410+var_3B8]
43CCD0:  LDR.W           R1, [R1,R4,LSL#2]
43CCD4:  ADDW            R2, R1, #0x40C
43CCD8:  ADD.W           R0, R1, R8,LSL#2
43CCDC:  VDIV.F32        S0, S0, S20
43CCE0:  VDIV.F32        S2, S2, S16
43CCE4:  VMUL.F32        S0, S0, S22
43CCE8:  VLDR            S4, [R2]
43CCEC:  VCVT.F32.U32    S6, S6
43CCF0:  VMUL.F32        S2, S2, S18
43CCF4:  VADD.F32        S0, S4, S0
43CCF8:  VLDR            S4, [R0,#0x3FC]
43CCFC:  ADD.W           R0, R1, #0x410
43CD00:  VMUL.F32        S4, S4, S24
43CD04:  VADD.F32        S0, S0, S6
43CD08:  VLDR            S6, [R0]
43CD0C:  ADD.W           R0, R1, R11,LSL#1
43CD10:  ADD.W           R1, R0, #0x3A4
43CD14:  VADD.F32        S26, S6, S2
43CD18:  LDR             R0, [SP,#0x410+var_3BC]
43CD1A:  VADD.F32        S28, S4, S0
43CD1E:  B               loc_43CD8A
43CD20:  DCFS 448.0
43CD24:  DCFS 40.0
43CD28:  DCFS 0.0
43CD2C:  DCFS 640.0
43CD30:  DCFS -0.01
43CD34:  LDR             R1, [SP,#0x410+var_3CC]
43CD36:  VMOV            S6, R0
43CD3A:  VLDR            S0, [R1,#4]
43CD3E:  VLDR            S2, [R1,#8]
43CD42:  VCVT.F32.S32    S0, S0
43CD46:  VCVT.F32.S32    S2, S2
43CD4A:  LDR             R1, [SP,#0x410+var_3D0]
43CD4C:  LDR.W           R1, [R1,R4,LSL#2]
43CD50:  ADDW            R2, R1, #0x40C
43CD54:  ADD.W           R0, R1, #0x410
43CD58:  VDIV.F32        S0, S0, S20
43CD5C:  VDIV.F32        S2, S2, S16
43CD60:  VMUL.F32        S0, S0, S22
43CD64:  VLDR            S4, [R2]
43CD68:  VMUL.F32        S2, S2, S18
43CD6C:  VCVT.F32.U32    S6, S6
43CD70:  VADD.F32        S0, S4, S0
43CD74:  VLDR            S4, [R0]
43CD78:  ADD.W           R0, R1, R11,LSL#1
43CD7C:  VADD.F32        S26, S4, S2
43CD80:  ADD.W           R1, R0, #0x3A4; CKeyGen *
43CD84:  LDR             R0, [SP,#0x410+var_3D4]; this
43CD86:  VADD.F32        S28, S0, S6
43CD8A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43CD8E:  MOV             R2, R0; CFont *
43CD90:  VMOV            R1, S26; float
43CD94:  VMOV            R0, S28; this
43CD98:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
43CD9C:  LDR.W           R0, [R10,R4,LSL#2]
43CDA0:  ADD.W           R9, R9, #1
43CDA4:  UXTB.W          R8, R9
43CDA8:  LDRB.W          R1, [R0,#0x3F7]
43CDAC:  CMP             R8, R1
43CDAE:  BCC.W           loc_43CBD0
43CDB2:  LDRB.W          R1, [R0,#0x3F6]
43CDB6:  LDR             R2, [SP,#0x410+var_3E8]
43CDB8:  CMP             R1, #0
43CDBA:  BEQ.W           loc_43D202
43CDBE:  LDR             R1, [SP,#0x410+var_3D8]
43CDC0:  VMOV.F32        S18, #16.0
43CDC4:  VMOV.F32        S20, #1.0
43CDC8:  VLDR            S22, =-0.01
43CDCC:  VMOV.F32        S26, #10.0
43CDD0:  VLDR            S24, =640.0
43CDD4:  UXTB            R1, R1
43CDD6:  VMOV.F32        S28, #0.5
43CDDA:  STR             R1, [SP,#0x410+var_3B8]
43CDDC:  MOVS            R3, #0
43CDDE:  LDR.W           R1, =(RsGlobal_ptr - 0x43CDEA)
43CDE2:  MOVS            R6, #0
43CDE4:  STR             R4, [SP,#0x410+var_3BC]
43CDE6:  ADD             R1, PC; RsGlobal_ptr
43CDE8:  LDR             R1, [R1]; RsGlobal
43CDEA:  STR             R1, [SP,#0x410+var_3F4]
43CDEC:  LDR.W           R1, =(HudColour_ptr - 0x43CDF4)
43CDF0:  ADD             R1, PC; HudColour_ptr
43CDF2:  LDR             R1, [R1]; HudColour
43CDF4:  STR             R1, [SP,#0x410+var_3FC]
43CDF6:  LDR.W           R1, =(HudColour_ptr - 0x43CDFE)
43CDFA:  ADD             R1, PC; HudColour_ptr
43CDFC:  LDR             R1, [R1]; HudColour
43CDFE:  STR             R1, [SP,#0x410+var_3F0]
43CE00:  LDR.W           R1, =(HudColour_ptr - 0x43CE08)
43CE04:  ADD             R1, PC; HudColour_ptr
43CE06:  LDR             R1, [R1]; HudColour
43CE08:  STR             R1, [SP,#0x410+var_3D4]
43CE0A:  LDR.W           R1, =(MenuNumber_ptr - 0x43CE12)
43CE0E:  ADD             R1, PC; MenuNumber_ptr
43CE10:  LDR             R1, [R1]; MenuNumber
43CE12:  STR             R1, [SP,#0x410+var_3B4]
43CE14:  LDR.W           R1, =(TheText_ptr - 0x43CE1C)
43CE18:  ADD             R1, PC; TheText_ptr
43CE1A:  LDR             R1, [R1]; TheText
43CE1C:  STR             R1, [SP,#0x410+var_3C0]
43CE1E:  LDR.W           R1, =(MenuNumber_ptr - 0x43CE26)
43CE22:  ADD             R1, PC; MenuNumber_ptr
43CE24:  LDR             R1, [R1]; MenuNumber
43CE26:  STR             R1, [SP,#0x410+var_3C4]
43CE28:  LDR.W           R1, =(RsGlobal_ptr - 0x43CE30)
43CE2C:  ADD             R1, PC; RsGlobal_ptr
43CE2E:  LDR             R1, [R1]; RsGlobal
43CE30:  STR             R1, [SP,#0x410+var_3C8]
43CE32:  LDR.W           R1, =(RsGlobal_ptr - 0x43CE3A)
43CE36:  ADD             R1, PC; RsGlobal_ptr
43CE38:  LDR.W           R9, [R1]; RsGlobal
43CE3C:  LDR.W           R1, =(MenuNumber_ptr - 0x43CE44)
43CE40:  ADD             R1, PC; MenuNumber_ptr
43CE42:  LDR.W           R10, [R1]; MenuNumber
43CE46:  LDR.W           R1, =(RsGlobal_ptr - 0x43CE4E)
43CE4A:  ADD             R1, PC; RsGlobal_ptr
43CE4C:  LDR             R1, [R1]; RsGlobal
43CE4E:  STR             R1, [SP,#0x410+var_3D8]
43CE50:  LDR.W           R1, =(MenuNumber_ptr - 0x43CE58)
43CE54:  ADD             R1, PC; MenuNumber_ptr
43CE56:  LDR             R1, [R1]; MenuNumber
43CE58:  STR             R1, [SP,#0x410+var_3CC]
43CE5A:  LDR.W           R1, =(RsGlobal_ptr - 0x43CE62)
43CE5E:  ADD             R1, PC; RsGlobal_ptr
43CE60:  LDR             R1, [R1]; RsGlobal
43CE62:  STR             R1, [SP,#0x410+var_3DC]
43CE64:  LDR.W           R1, =(RsGlobal_ptr - 0x43CE6C)
43CE68:  ADD             R1, PC; RsGlobal_ptr
43CE6A:  LDR             R1, [R1]; RsGlobal
43CE6C:  STR             R1, [SP,#0x410+var_3E0]
43CE6E:  LDR.W           R1, =(HudColour_ptr - 0x43CE76)
43CE72:  ADD             R1, PC; HudColour_ptr
43CE74:  LDR             R1, [R1]; HudColour
43CE76:  STR             R1, [SP,#0x410+var_3E4]
43CE78:  LDR.W           R1, =(HudColour_ptr - 0x43CE80)
43CE7C:  ADD             R1, PC; HudColour_ptr
43CE7E:  LDR             R1, [R1]; HudColour
43CE80:  STR             R1, [SP,#0x410+var_3F8]
43CE82:  LDR.W           R1, =(HudColour_ptr - 0x43CE8A)
43CE86:  ADD             R1, PC; HudColour_ptr
43CE88:  LDR             R1, [R1]; HudColour
43CE8A:  STR             R1, [SP,#0x410+var_3EC]
43CE8C:  LDR.W           R1, =(HudColour_ptr - 0x43CE94)
43CE90:  ADD             R1, PC; HudColour_ptr
43CE92:  LDR             R1, [R1]; HudColour
43CE94:  STR             R1, [SP,#0x410+var_3D0]
43CE96:  UXTH            R1, R2
43CE98:  VMOV            S0, R1
43CE9C:  VCVT.F32.U32    S30, S0
43CEA0:  LDRB.W          R1, [R0,#0x3F7]
43CEA4:  STR             R6, [SP,#0x410+var_3E8]
43CEA6:  CMP             R1, #0
43CEA8:  BEQ.W           loc_43D1D4
43CEAC:  MOV.W           R11, #0
43CEB0:  MOV.W           R8, #0
43CEB4:  STR             R3, [SP,#0x410+var_3B0]
43CEB6:  RSB.W           R6, R8, R8,LSL#4
43CEBA:  ADD.W           R5, R3, R3,LSL#2
43CEBE:  ADD.W           R1, R0, R6,LSL#3
43CEC2:  ADD.W           R1, R1, R5,LSL#1
43CEC6:  LDRB.W          R1, [R1,#0x41]
43CECA:  CMP             R1, #0
43CECC:  BEQ.W           loc_43D1C2
43CED0:  LDRB.W          R1, [R0,#0x3F8]
43CED4:  CBZ             R1, loc_43CF30
43CED6:  LDRSB.W         R1, [R0,#0x415]
43CEDA:  CMP             R3, R1
43CEDC:  BNE             loc_43CF08
43CEDE:  ADDS            R1, R0, R3
43CEE0:  LDRB.W          R1, [R1,#0x3D6]
43CEE4:  CBZ             R1, loc_43CF08
43CEE6:  LDR             R1, [SP,#0x410+var_3E4]
43CEE8:  LDR             R3, [SP,#0x410+var_3B8]
43CEEA:  LDRB            R0, [R1,#0xC]
43CEEC:  LDRB            R2, [R1,#0xD]
43CEEE:  SUBS            R0, R0, R3
43CEF0:  LDRB.W          R12, [R1,#0xE]
43CEF4:  MOVS            R1, #0xFF
43CEF6:  STR             R1, [SP,#0x410+var_410]
43CEF8:  UXTB            R1, R0
43CEFA:  SUBS            R0, R2, R3
43CEFC:  UXTB            R2, R0
43CEFE:  SUB.W           R0, R12, R3
43CF02:  UXTB            R3, R0
43CF04:  ADD             R0, SP, #0x410+var_74
43CF06:  B               loc_43CFFA
43CF08:  ADD             R0, R3
43CF0A:  LDRB.W          R1, [R0,#0x3E2]
43CF0E:  CBZ             R1, loc_43CF58
43CF10:  LDR             R1, [SP,#0x410+var_3D0]
43CF12:  LDR             R4, [SP,#0x410+var_3B8]
43CF14:  LDRB            R0, [R1,#4]
43CF16:  LDRB            R2, [R1,#5]
43CF18:  SUBS            R0, R0, R4
43CF1A:  LDRB            R3, [R1,#6]
43CF1C:  MOVS            R1, #0xFF
43CF1E:  STR             R1, [SP,#0x410+var_410]
43CF20:  UXTB            R1, R0
43CF22:  SUBS            R0, R2, R4
43CF24:  UXTB            R2, R0
43CF26:  SUBS            R0, R3, R4
43CF28:  LDR             R4, [SP,#0x410+var_3BC]
43CF2A:  UXTB            R3, R0
43CF2C:  ADD             R0, SP, #0x410+var_78
43CF2E:  B               loc_43CFFA
43CF30:  ADD             R0, R3
43CF32:  LDRB.W          R1, [R0,#0x3E2]
43CF36:  CBZ             R1, loc_43CF82
43CF38:  LDR             R1, [SP,#0x410+var_3D4]
43CF3A:  LDR             R4, [SP,#0x410+var_3B8]
43CF3C:  LDRB            R0, [R1,#4]
43CF3E:  LDRB            R2, [R1,#5]
43CF40:  SUBS            R0, R0, R4
43CF42:  LDRB            R3, [R1,#6]
43CF44:  MOVS            R1, #0xFF
43CF46:  STR             R1, [SP,#0x410+var_410]
43CF48:  UXTB            R1, R0
43CF4A:  SUBS            R0, R2, R4
43CF4C:  UXTB            R2, R0
43CF4E:  SUBS            R0, R3, R4
43CF50:  LDR             R4, [SP,#0x410+var_3BC]
43CF52:  UXTB            R3, R0
43CF54:  ADD             R0, SP, #0x410+var_84
43CF56:  B               loc_43CFFA
43CF58:  LDRB.W          R0, [R0,#0x3D6]
43CF5C:  CBZ             R0, loc_43CFA8
43CF5E:  LDR             R1, [SP,#0x410+var_3EC]
43CF60:  LDR             R4, [SP,#0x410+var_3B8]
43CF62:  LDRB.W          R0, [R1,#0x34]
43CF66:  LDRB.W          R2, [R1,#0x35]
43CF6A:  SUBS            R0, R0, R4
43CF6C:  LDRB.W          R3, [R1,#0x36]
43CF70:  MOVS            R1, #0xFF
43CF72:  STR             R1, [SP,#0x410+var_410]
43CF74:  UXTB            R1, R0
43CF76:  SUBS            R0, R2, R4
43CF78:  UXTB            R2, R0
43CF7A:  SUBS            R0, R3, R4
43CF7C:  UXTB            R3, R0
43CF7E:  ADD             R0, SP, #0x410+var_7C
43CF80:  B               loc_43CFCA
43CF82:  LDRB.W          R0, [R0,#0x3D6]
43CF86:  CBZ             R0, loc_43CFD6
43CF88:  LDR             R1, [SP,#0x410+var_3F0]
43CF8A:  LDR             R4, [SP,#0x410+var_3B8]
43CF8C:  LDRB            R0, [R1,#0xC]
43CF8E:  LDRB            R2, [R1,#0xD]
43CF90:  SUBS            R0, R0, R4
43CF92:  LDRB            R3, [R1,#0xE]
43CF94:  MOVS            R1, #0xFF
43CF96:  STR             R1, [SP,#0x410+var_410]
43CF98:  UXTB            R1, R0
43CF9A:  SUBS            R0, R2, R4
43CF9C:  UXTB            R2, R0
43CF9E:  SUBS            R0, R3, R4
43CFA0:  LDR             R4, [SP,#0x410+var_3BC]
43CFA2:  UXTB            R3, R0
43CFA4:  ADD             R0, SP, #0x410+var_88
43CFA6:  B               loc_43CFFA
43CFA8:  LDR             R1, [SP,#0x410+var_3F8]
43CFAA:  LDR             R4, [SP,#0x410+var_3B8]
43CFAC:  LDRB.W          R0, [R1,#0x24]
43CFB0:  LDRB.W          R2, [R1,#0x25]
43CFB4:  SUBS            R0, R0, R4
43CFB6:  LDRB.W          R3, [R1,#0x26]
43CFBA:  MOVS            R1, #0xFF
43CFBC:  STR             R1, [SP,#0x410+var_410]; unsigned __int8
43CFBE:  UXTB            R1, R0; unsigned __int8
43CFC0:  SUBS            R0, R2, R4
43CFC2:  UXTB            R2, R0; unsigned __int8
43CFC4:  SUBS            R0, R3, R4
43CFC6:  UXTB            R3, R0; unsigned __int8
43CFC8:  ADD             R0, SP, #0x410+var_80; this
43CFCA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43CFCE:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
43CFD2:  LDR             R4, [SP,#0x410+var_3BC]
43CFD4:  B               loc_43D002
43CFD6:  LDR             R1, [SP,#0x410+var_3FC]
43CFD8:  LDR             R4, [SP,#0x410+var_3B8]
43CFDA:  LDRB.W          R0, [R1,#0x34]
43CFDE:  LDRB.W          R2, [R1,#0x35]
43CFE2:  SUBS            R0, R0, R4
43CFE4:  LDRB.W          R3, [R1,#0x36]
43CFE8:  MOVS            R1, #0xFF
43CFEA:  STR             R1, [SP,#0x410+var_410]; unsigned __int8
43CFEC:  UXTB            R1, R0; unsigned __int8
43CFEE:  SUBS            R0, R2, R4
43CFF0:  UXTB            R2, R0; unsigned __int8
43CFF2:  SUBS            R0, R3, R4
43CFF4:  LDR             R4, [SP,#0x410+var_3BC]
43CFF6:  UXTB            R3, R0; unsigned __int8
43CFF8:  ADD             R0, SP, #0x410+var_8C; this
43CFFA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43CFFE:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
43D002:  LDRD.W          R0, R3, [SP,#0x410+var_3B4]
43D006:  LDR.W           R0, [R0,R4,LSL#2]
43D00A:  ADD.W           R1, R0, R6,LSL#3
43D00E:  ADD.W           R1, R1, R5,LSL#1
43D012:  LDRB.W          R2, [R1,#0x41]!; CKeyGen *
43D016:  CMP             R2, #0
43D018:  BEQ.W           loc_43D1C2
43D01C:  LDR             R0, [SP,#0x410+var_3C0]; this
43D01E:  MOV             R5, R3
43D020:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43D024:  LDR             R6, [SP,#0x410+var_3C4]
43D026:  ADD.W           R2, R8, R8,LSL#1
43D02A:  MOV.W           R3, #0xFFFFFFFF
43D02E:  LDR.W           R1, [R6,R4,LSL#2]
43D032:  ADD.W           R1, R1, R2,LSL#4
43D036:  ADD.W           R2, R1, R5,LSL#2
43D03A:  ADD             R5, SP, #0x410+var_3AC
43D03C:  LDR.W           R1, [R2,#0x224]; unsigned __int16 *
43D040:  LDR.W           R2, [R2,#0x2E4]; int
43D044:  STRD.W          R3, R3, [SP,#0x410+var_410]; int
43D048:  STRD.W          R3, R5, [SP,#0x410+var_408]; int
43D04C:  MOV.W           R3, #0xFFFFFFFF; int
43D050:  BLX             j__ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_; CMessages::InsertNumberInString(ushort *,int,int,int,int,int,int,ushort *)
43D054:  LDR.W           R0, [R6,R4,LSL#2]
43D058:  ADD             R0, R8
43D05A:  LDRB.W          R0, [R0,#0x3EE]; this
43D05E:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
43D062:  LDR             R0, [SP,#0x410+var_3C8]
43D064:  LDR             R0, [R0,#8]
43D066:  VMOV            S0, R0
43D06A:  VCVT.F32.S32    S0, S0
43D06E:  VDIV.F32        S0, S0, S16
43D072:  VMOV            R0, S0; this
43D076:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
43D07A:  MOV             R0, R5; this
43D07C:  MOVS            R1, #(stderr+1); unsigned __int16 *
43D07E:  MOVS            R2, #0; unsigned __int8
43D080:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
43D084:  LDR.W           R1, [R6,R4,LSL#2]; float
43D088:  VMOV            S2, R0
43D08C:  ADD.W           R0, R1, R8,LSL#2
43D090:  VLDR            S0, [R0,#0x3FC]
43D094:  VCMPE.F32       S2, S0
43D098:  VMRS            APSR_nzcv, FPSCR
43D09C:  BLE             loc_43D0E6
43D09E:  VMOV.F32        S17, S20
43D0A2:  LDR.W           R0, [R9,#(dword_9FC904 - 0x9FC8FC)]
43D0A6:  VADD.F32        S17, S17, S22
43D0AA:  VMOV            S0, R0
43D0AE:  VCVT.F32.S32    S0, S0
43D0B2:  VDIV.F32        S0, S0, S16
43D0B6:  VMUL.F32        S0, S17, S0
43D0BA:  VMOV            R0, S0; this
43D0BE:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
43D0C2:  MOV             R0, R5; this
43D0C4:  MOVS            R1, #(stderr+1); unsigned __int16 *
43D0C6:  MOVS            R2, #0; unsigned __int8
43D0C8:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
43D0CC:  LDR.W           R1, [R10,R4,LSL#2]
43D0D0:  VMOV            S2, R0
43D0D4:  ADD.W           R0, R1, R8,LSL#2
43D0D8:  VLDR            S0, [R0,#0x3FC]
43D0DC:  VCMPE.F32       S2, S0
43D0E0:  VMRS            APSR_nzcv, FPSCR
43D0E4:  BGT             loc_43D0A2
43D0E6:  MOVS.W          R0, R11,LSL#24
43D0EA:  BEQ             loc_43D11A
43D0EC:  ADD.W           R3, R1, #0x3FC
43D0F0:  UXTB.W          R2, R11
43D0F4:  MOVS            R0, #0
43D0F6:  UXTH            R0, R0
43D0F8:  SUBS            R2, #1
43D0FA:  VMOV            S2, R0
43D0FE:  VCVT.F32.U32    S2, S2
43D102:  VLDR            S4, [R3]
43D106:  ADD.W           R3, R3, #4
43D10A:  VADD.F32        S2, S4, S2
43D10E:  VCVT.U32.F32    S2, S2
43D112:  VMOV            R0, S2
43D116:  BNE             loc_43D0F6
43D118:  B               loc_43D11C
43D11A:  MOVS            R0, #0
43D11C:  ADD.W           R2, R1, R8
43D120:  LDRB.W          R2, [R2,#0x3EE]
43D124:  CBZ             R2, loc_43D132
43D126:  CMP             R2, #2
43D128:  BNE             loc_43D176
43D12A:  LDR             R2, [SP,#0x410+var_3DC]
43D12C:  VMOV            S6, R0
43D130:  B               loc_43D13C
43D132:  LDR             R2, [SP,#0x410+var_3D8]
43D134:  VMOV            S6, R0
43D138:  VMUL.F32        S0, S0, S28
43D13C:  VLDR            S2, [R2,#4]
43D140:  ADDW            R2, R1, #0x40C
43D144:  VCVT.F32.S32    S2, S2
43D148:  VLDR            S4, [R2]
43D14C:  VCVT.F32.U32    S6, S6
43D150:  VDIV.F32        S2, S2, S24
43D154:  VMUL.F32        S2, S2, S26
43D158:  VADD.F32        S2, S4, S2
43D15C:  ADD.W           R0, R1, #0x410
43D160:  VADD.F32        S2, S2, S6
43D164:  VLDR            S4, [R0]
43D168:  VADD.F32        S4, S4, S30
43D16C:  VADD.F32        S0, S0, S2
43D170:  VMOV            R1, S4
43D174:  B               loc_43D1B0
43D176:  LDR             R2, [SP,#0x410+var_3E0]
43D178:  VMOV            S4, R0
43D17C:  ADD.W           R0, R1, #0x410
43D180:  VLDR            S0, [R2,#4]
43D184:  ADDW            R2, R1, #0x40C
43D188:  VCVT.F32.S32    S0, S0
43D18C:  VLDR            S2, [R2]
43D190:  VCVT.F32.U32    S4, S4
43D194:  VDIV.F32        S0, S0, S24
43D198:  VMUL.F32        S0, S0, S26
43D19C:  VADD.F32        S0, S2, S0
43D1A0:  VLDR            S2, [R0]
43D1A4:  VADD.F32        S2, S2, S30
43D1A8:  VADD.F32        S0, S0, S4
43D1AC:  VMOV            R1, S2; float
43D1B0:  VMOV            R0, S0; this
43D1B4:  MOV             R2, R5; CFont *
43D1B6:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
43D1BA:  LDR             R0, [SP,#0x410+var_3CC]
43D1BC:  LDR             R3, [SP,#0x410+var_3B0]
43D1BE:  LDR.W           R0, [R0,R4,LSL#2]
43D1C2:  ADD.W           R11, R11, #1
43D1C6:  LDRB.W          R1, [R0,#0x3F7]
43D1CA:  UXTB.W          R8, R11
43D1CE:  CMP             R8, R1
43D1D0:  BCC.W           loc_43CEB6
43D1D4:  LDR             R1, [SP,#0x410+var_3F4]
43D1D6:  VLDR            S0, [R1,#8]
43D1DA:  VCVT.F32.S32    S0, S0
43D1DE:  VDIV.F32        S0, S0, S16
43D1E2:  VMUL.F32        S0, S0, S18
43D1E6:  VADD.F32        S0, S0, S30
43D1EA:  VCVT.U32.F32    S0, S0
43D1EE:  LDR             R6, [SP,#0x410+var_3E8]
43D1F0:  LDRB.W          R1, [R0,#0x3F6]
43D1F4:  ADDS            R6, #1
43D1F6:  UXTB            R3, R6
43D1F8:  CMP             R3, R1
43D1FA:  VMOV            R2, S0
43D1FE:  BCC.W           loc_43CE96
43D202:  ADD.W           SP, SP, #0x3B0
43D206:  VPOP            {D8-D15}
43D20A:  ADD             SP, SP, #4
43D20C:  POP.W           {R8-R11}
43D210:  POP             {R4-R7,PC}
