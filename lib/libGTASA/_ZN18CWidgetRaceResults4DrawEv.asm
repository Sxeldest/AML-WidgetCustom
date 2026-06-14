; =========================================================
; Game Engine Function: _ZN18CWidgetRaceResults4DrawEv
; Address            : 0x2BEAB8 - 0x2BEFE8
; =========================================================

2BEAB8:  PUSH            {R4-R7,LR}
2BEABA:  ADD             R7, SP, #0xC
2BEABC:  PUSH.W          {R8-R11}
2BEAC0:  SUB             SP, SP, #4
2BEAC2:  VPUSH           {D8-D15}
2BEAC6:  SUB.W           SP, SP, #0x368
2BEACA:  MOV             R4, R0
2BEACC:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x2BEAD4)
2BEAD0:  ADD             R0, PC; __stack_chk_guard_ptr
2BEAD2:  LDR             R0, [R0]; __stack_chk_guard
2BEAD4:  LDR             R0, [R0]
2BEAD6:  STR             R0, [SP,#0x3C8+var_64]
2BEAD8:  LDRB.W          R8, [R4,#0x4C]
2BEADC:  CMP.W           R8, #0
2BEAE0:  BEQ.W           loc_2BEFC4
2BEAE4:  ADD.W           R5, R4, #0x90
2BEAE8:  MOV             R0, R5; char *
2BEAEA:  BLX             strlen
2BEAEE:  CBZ             R0, loc_2BEB08
2BEAF0:  ADR.W           R1, aDummy_1; "DUMMY"
2BEAF4:  MOV             R0, R5; char *
2BEAF6:  BLX             strcasecmp
2BEAFA:  MOV             R9, R0
2BEAFC:  CMP.W           R9, #0
2BEB00:  IT NE
2BEB02:  MOVNE.W         R9, #1
2BEB06:  B               loc_2BEB0C
2BEB08:  MOV.W           R9, #0
2BEB0C:  ADD.W           R6, R4, #0x19C
2BEB10:  MOV             R0, R6; char *
2BEB12:  BLX             strlen
2BEB16:  CBZ             R0, loc_2BEB2A
2BEB18:  ADR.W           R1, aDummy_1; "DUMMY"
2BEB1C:  MOV             R0, R6; char *
2BEB1E:  BLX             strcasecmp
2BEB22:  CMP             R0, #0
2BEB24:  IT NE
2BEB26:  ADDNE.W         R9, R9, #1
2BEB2A:  ADD.W           R6, R4, #0x2A8
2BEB2E:  MOV             R0, R6; char *
2BEB30:  BLX             strlen
2BEB34:  CBZ             R0, loc_2BEB48
2BEB36:  ADR.W           R1, aDummy_1; "DUMMY"
2BEB3A:  MOV             R0, R6; char *
2BEB3C:  BLX             strcasecmp
2BEB40:  CMP             R0, #0
2BEB42:  IT NE
2BEB44:  ADDNE.W         R9, R9, #1
2BEB48:  ADD.W           R6, R4, #0x3B4
2BEB4C:  MOV             R0, R6; char *
2BEB4E:  BLX             strlen
2BEB52:  CBZ             R0, loc_2BEB66
2BEB54:  ADR.W           R1, aDummy_1; "DUMMY"
2BEB58:  MOV             R0, R6; char *
2BEB5A:  BLX             strcasecmp
2BEB5E:  CMP             R0, #0
2BEB60:  IT NE
2BEB62:  ADDNE.W         R9, R9, #1
2BEB66:  ADD.W           R6, R4, #0x4C0
2BEB6A:  MOV             R0, R6; char *
2BEB6C:  BLX             strlen
2BEB70:  CBZ             R0, loc_2BEB84
2BEB72:  ADR.W           R1, aDummy_1; "DUMMY"
2BEB76:  MOV             R0, R6; char *
2BEB78:  BLX             strcasecmp
2BEB7C:  CMP             R0, #0
2BEB7E:  IT NE
2BEB80:  ADDNE.W         R9, R9, #1
2BEB84:  CMP.W           R9, #0
2BEB88:  BEQ.W           loc_2BEFC4
2BEB8C:  MOVS            R0, #0; this
2BEB8E:  MOVS            R1, #0; unsigned __int8
2BEB90:  VLDR            S16, [R4,#0x24]
2BEB94:  VLDR            S20, [R4,#0x2C]
2BEB98:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BEB9C:  MOVS            R0, #(stderr+1); this
2BEB9E:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BEBA2:  MOVS            R0, #(stderr+1); this
2BEBA4:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BEBA8:  MOVS            R0, #0; this
2BEBAA:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2BEBAE:  MOVS            R0, #0; this
2BEBB0:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BEBB4:  VMOV            S0, R8
2BEBB8:  VLDR            S2, =255.0
2BEBBC:  ADD             R0, SP, #0x3C8+var_168; this
2BEBBE:  MOVS            R1, #0; unsigned __int8
2BEBC0:  VCVT.F32.U32    S0, S0
2BEBC4:  MOVS            R2, #0; unsigned __int8
2BEBC6:  MOVS            R3, #0; unsigned __int8
2BEBC8:  VDIV.F32        S18, S0, S2
2BEBCC:  VMUL.F32        S0, S18, S2
2BEBD0:  VCVT.U32.F32    S0, S0
2BEBD4:  VMOV            R5, S0
2BEBD8:  STR             R5, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEBDA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEBDE:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BEBE2:  LDR.W           R0, =(RsGlobal_ptr - 0x2BEBEA)
2BEBE6:  ADD             R0, PC; RsGlobal_ptr
2BEBE8:  LDR             R0, [R0]; RsGlobal
2BEBEA:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
2BEBEC:  VMOV            S0, R0
2BEBF0:  VCVT.F32.S32    S0, S0
2BEBF4:  VMOV            R0, S0; this
2BEBF8:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2BEBFC:  VSUB.F32        S0, S16, S20
2BEC00:  ADD.W           R8, SP, #0x3C8+var_37C
2BEC04:  VMOV            S2, R9
2BEC08:  MOVS            R2, #0; unsigned __int8
2BEC0A:  VMOV.F32        S4, #6.5
2BEC0E:  MOVS            R3, #0; unsigned __int8
2BEC10:  VCVT.F32.S32    S2, S2
2BEC14:  LDR             R0, [R4,#0x28]
2BEC16:  LDR             R1, [R4,#0x20]
2BEC18:  VABS.F32        S0, S0
2BEC1C:  VSUB.F32        S0, S0, S2
2BEC20:  VLDR            S2, =128.0
2BEC24:  VMUL.F32        S2, S18, S2
2BEC28:  VDIV.F32        S16, S0, S4
2BEC2C:  VLDR            S4, [R4,#0x2C]
2BEC30:  VCVT.U32.F32    S2, S2
2BEC34:  VMOV.F32        S0, #1.5
2BEC38:  STR             R1, [SP,#0x3C8+var_178]
2BEC3A:  STR             R0, [SP,#0x3C8+var_170]
2BEC3C:  MOV             R0, R8; this
2BEC3E:  MOVS            R1, #0; unsigned __int8
2BEC40:  VSTR            S4, [SP,#0x3C8+var_16C]
2BEC44:  VMOV            R6, S2
2BEC48:  VMUL.F32        S0, S16, S0
2BEC4C:  VADD.F32        S0, S0, S4
2BEC50:  VSTR            S0, [SP,#0x3C8+var_174]
2BEC54:  STR             R6, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEC56:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEC5A:  ADD.W           R10, SP, #0x3C8+var_164
2BEC5E:  MOVS            R1, #0; unsigned __int8
2BEC60:  MOVS            R2, #0; unsigned __int8
2BEC62:  MOVS            R3, #0; unsigned __int8
2BEC64:  MOV             R0, R10; this
2BEC66:  STR             R6, [SP,#0x3C8+var_3B4]
2BEC68:  STR             R6, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEC6A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEC6E:  ADD             R6, SP, #0x3C8+var_38C
2BEC70:  MOVS            R1, #0; unsigned __int8
2BEC72:  MOVS            R2, #0; unsigned __int8
2BEC74:  MOVS            R3, #0; unsigned __int8
2BEC76:  MOV             R0, R6; this
2BEC78:  STR             R5, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEC7A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEC7E:  ADD             R0, SP, #0x3C8+var_17C; this
2BEC80:  MOVS            R1, #0; unsigned __int8
2BEC82:  MOVS            R2, #0; unsigned __int8
2BEC84:  MOVS            R3, #0; unsigned __int8
2BEC86:  STR             R5, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEC88:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEC8C:  STR             R0, [SP,#0x3C8+var_3C8]
2BEC8E:  ADD             R0, SP, #0x3C8+var_178
2BEC90:  MOV             R1, R8
2BEC92:  MOV             R2, R10
2BEC94:  MOV             R3, R6
2BEC96:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2BEC9A:  ADD             R3, SP, #0x3C8+var_178
2BEC9C:  LDM             R3, {R1-R3}; int
2BEC9E:  LDR             R0, [SP,#0x3C8+var_16C]
2BECA0:  VSTR            S18, [SP,#0x3C8+var_3C4]
2BECA4:  STR             R0, [SP,#0x3C8+var_3C8]; float
2BECA6:  MOV             R0, R4; int
2BECA8:  BLX             j__ZN18CWidgetRaceResults15RenderTitleTextE5CRectf; CWidgetRaceResults::RenderTitleText(CRect,float)
2BECAC:  MOVS            R0, #(stderr+2); this
2BECAE:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BECB2:  VLDR            S0, =0.021
2BECB6:  VMUL.F32        S18, S16, S0
2BECBA:  VMOV            R0, S18; this
2BECBE:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BECC2:  CMP.W           R9, #1
2BECC6:  BLT.W           loc_2BEFC4
2BECCA:  VMOV.F32        S20, #0.625
2BECCE:  LDR             R0, =(TheText_ptr - 0x2BECDC)
2BECD0:  VMOV.F32        S22, #0.25
2BECD4:  ADD.W           R11, R4, #0x198
2BECD8:  ADD             R0, PC; TheText_ptr
2BECDA:  ADD             R6, SP, #0x3C8+var_164
2BECDC:  STR             R5, [SP,#0x3C8+var_3BC]
2BECDE:  MOV             R8, R11
2BECE0:  LDR             R0, [R0]; TheText
2BECE2:  MOV             R5, R9
2BECE4:  STR             R0, [SP,#0x3C8+var_3B0]
2BECE6:  STR             R4, [SP,#0x3C8+var_3AC]
2BECE8:  MOVW            R0, #0xFEF8
2BECEC:  VLDR            S24, [R4,#0x20]
2BECF0:  MOVT            R0, #0xFFFF
2BECF4:  ADD.W           R10, R8, R0
2BECF8:  VLDR            S26, [R4,#0x28]
2BECFC:  MOV             R0, R10; char *
2BECFE:  BLX             strlen
2BED02:  CBZ             R0, loc_2BED48
2BED04:  ADR             R1, aDummy_1; "DUMMY"
2BED06:  MOV             R0, R10; char *
2BED08:  BLX             strcasecmp
2BED0C:  CBZ             R0, loc_2BED48
2BED0E:  VSUB.F32        S0, S26, S24
2BED12:  LDR             R0, [SP,#0x3C8+var_3B0]; this
2BED14:  MOV             R1, R10; CKeyGen *
2BED16:  VABS.F32        S0, S0
2BED1A:  VMUL.F32        S24, S0, S20
2BED1E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BED22:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BED24:  MOVS            R2, #0; unsigned __int8
2BED26:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BED2A:  VMOV            S0, R0
2BED2E:  VCMPE.F32       S0, S24
2BED32:  VMRS            APSR_nzcv, FPSCR
2BED36:  BLE             loc_2BED48
2BED38:  VDIV.F32        S0, S24, S0
2BED3C:  VMUL.F32        S18, S18, S0
2BED40:  VMOV            R0, S18; this
2BED44:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BED48:  VLDR            S0, [R4,#0x20]
2BED4C:  VLDR            S2, [R4,#0x28]
2BED50:  LDR.W           R0, [R8]
2BED54:  VSUB.F32        S0, S2, S0
2BED58:  LDR.W           R2, [R8,#-8]
2BED5C:  CMP             R0, #1
2BED5E:  MOV             R0, R6
2BED60:  ITE NE
2BED62:  ADRNE           R1, dword_2BF004
2BED64:  ADREQ           R1, a1D; "$~1~%d"
2BED66:  VABS.F32        S0, S0
2BED6A:  VMUL.F32        S24, S0, S22
2BED6E:  BL              sub_5E6BC0
2BED72:  ADD             R4, SP, #0x3C8+var_37C
2BED74:  MOV             R0, R6; char *
2BED76:  MOV             R1, R4; unsigned __int16 *
2BED78:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BED7C:  MOV             R0, R4; this
2BED7E:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BED80:  MOVS            R2, #0; unsigned __int8
2BED82:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BED86:  VMOV            S0, R0
2BED8A:  VCMPE.F32       S0, S24
2BED8E:  VMRS            APSR_nzcv, FPSCR
2BED92:  BLE             loc_2BEDA4
2BED94:  VDIV.F32        S0, S24, S0
2BED98:  VMUL.F32        S18, S18, S0
2BED9C:  VMOV            R0, S18; this
2BEDA0:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BEDA4:  LDR             R4, [SP,#0x3C8+var_3AC]
2BEDA6:  ADD.W           R8, R8, #0x10C
2BEDAA:  SUBS            R5, #1
2BEDAC:  BNE             loc_2BECE8
2BEDAE:  LDR.W           R10, [SP,#0x3C8+var_3BC]
2BEDB2:  CMP.W           R9, #1
2BEDB6:  BLT.W           loc_2BEFC4
2BEDBA:  VMOV.F32        S0, #1.0
2BEDBE:  VLDR            S2, [SP,#0x3C8+var_174]
2BEDC2:  VMOV.F32        S22, #0.5
2BEDC6:  LDR             R0, =(TheText_ptr - 0x2BEDD0)
2BEDC8:  LDR.W           R8, [SP,#0x3C8+var_3B4]
2BEDCC:  ADD             R0, PC; TheText_ptr
2BEDCE:  VLDR            S24, =0.03
2BEDD2:  VLDR            S26, =-0.03
2BEDD6:  LDR             R0, [R0]; TheText
2BEDD8:  STR             R0, [SP,#0x3C8+var_3B8]
2BEDDA:  VADD.F32        S18, S16, S0
2BEDDE:  VADD.F32        S20, S2, S0
2BEDE2:  VADD.F32        S0, S16, S20
2BEDE6:  STR.W           R9, [SP,#0x3C8+var_3B0]
2BEDEA:  ADD             R6, SP, #0x3C8+var_17C
2BEDEC:  LDR             R0, [R4,#0x20]
2BEDEE:  LDR             R1, [R4,#0x28]
2BEDF0:  MOVS            R2, #0; unsigned __int8
2BEDF2:  VSTR            S20, [SP,#0x3C8+var_380]
2BEDF6:  MOVS            R3, #0; unsigned __int8
2BEDF8:  STR             R0, [SP,#0x3C8+var_38C]
2BEDFA:  MOV             R0, R6; this
2BEDFC:  STR             R1, [SP,#0x3C8+var_384]
2BEDFE:  MOVS            R1, #0; unsigned __int8
2BEE00:  STR.W           R8, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEE04:  VSTR            S0, [SP,#0x3C8+var_388]
2BEE08:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEE0C:  ADD             R4, SP, #0x3C8+var_390
2BEE0E:  MOVS            R1, #0; unsigned __int8
2BEE10:  MOVS            R2, #0; unsigned __int8
2BEE12:  MOVS            R3, #0; unsigned __int8
2BEE14:  MOV             R0, R4; this
2BEE16:  STR.W           R8, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEE1A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEE1E:  ADD             R5, SP, #0x3C8+var_394
2BEE20:  MOVS            R1, #0; unsigned __int8
2BEE22:  MOVS            R2, #0; unsigned __int8
2BEE24:  MOVS            R3, #0; unsigned __int8
2BEE26:  MOV             R0, R5; this
2BEE28:  STR.W           R10, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEE2C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEE30:  ADD             R0, SP, #0x3C8+var_398; this
2BEE32:  MOVS            R1, #0; unsigned __int8
2BEE34:  MOVS            R2, #0; unsigned __int8
2BEE36:  MOVS            R3, #0; unsigned __int8
2BEE38:  STR.W           R10, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEE3C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEE40:  STR             R0, [SP,#0x3C8+var_3C8]
2BEE42:  ADD             R0, SP, #0x3C8+var_38C
2BEE44:  MOV             R1, R6
2BEE46:  MOV             R2, R4
2BEE48:  MOV             R3, R5
2BEE4A:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2BEE4E:  MOVS            R0, #(stderr+1); this
2BEE50:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BEE54:  ADD             R0, SP, #0x3C8+var_39C; this
2BEE56:  MOVS            R1, #0xFF; unsigned __int8
2BEE58:  MOVS            R2, #0xFF; unsigned __int8
2BEE5A:  MOVS            R3, #0xFF; unsigned __int8
2BEE5C:  STR.W           R10, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEE60:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEE64:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BEE68:  VLDR            S28, [SP,#0x3C8+var_38C]
2BEE6C:  MOVS            R0, #0; this
2BEE6E:  VLDR            S2, [SP,#0x3C8+var_384]
2BEE72:  VLDR            S0, [SP,#0x3C8+var_388]
2BEE76:  VSUB.F32        S2, S2, S28
2BEE7A:  VLDR            S4, [SP,#0x3C8+var_380]
2BEE7E:  VADD.F32        S30, S0, S4
2BEE82:  VABS.F32        S17, S2
2BEE86:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BEE8A:  VMOV            S0, R0
2BEE8E:  MOVW            R0, #0xFEF8
2BEE92:  VMUL.F32        S4, S17, S24
2BEE96:  MOVT            R0, #0xFFFF
2BEE9A:  VMUL.F32        S0, S0, S22
2BEE9E:  ADD.W           R1, R11, R0; CKeyGen *
2BEEA2:  VMUL.F32        S2, S30, S22
2BEEA6:  LDR             R0, [SP,#0x3C8+var_3B8]; this
2BEEA8:  VADD.F32        S28, S28, S4
2BEEAC:  VSUB.F32        S30, S2, S0
2BEEB0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BEEB4:  MOV             R2, R0; CFont *
2BEEB6:  VMOV            R1, S30; float
2BEEBA:  VMOV            R0, S28; this
2BEEBE:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BEEC2:  LDR.W           R0, [R11]
2BEEC6:  CMP             R0, #1
2BEEC8:  BNE             loc_2BEEE8
2BEECA:  ADD             R0, SP, #0x3C8+var_3A0; this
2BEECC:  MOVS            R1, #0; unsigned __int8
2BEECE:  MOVS            R2, #0x67 ; 'g'; unsigned __int8
2BEED0:  MOVS            R3, #0; unsigned __int8
2BEED2:  STR.W           R10, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEED6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEEDA:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BEEDE:  ADD             R5, SP, #0x3C8+var_164
2BEEE0:  LDR.W           R2, [R11,#-8]
2BEEE4:  ADR             R1, a1D; "$~1~%d"
2BEEE6:  B               loc_2BEF4E
2BEEE8:  LDR.W           R0, [R11,#-4]
2BEEEC:  ADD             R5, SP, #0x3C8+var_164
2BEEEE:  CMP             R0, #1
2BEEF0:  BNE             loc_2BEF34
2BEEF2:  ADD             R0, SP, #0x3C8+var_3A4; this
2BEEF4:  MOVS            R1, #0x5D ; ']'; unsigned __int8
2BEEF6:  MOVS            R2, #0x8E; unsigned __int8
2BEEF8:  MOVS            R3, #0xBE; unsigned __int8
2BEEFA:  STR.W           R10, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEEFE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEF02:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BEF06:  LDR.W           R0, [R11,#-8]
2BEF0A:  MOV             R1, #0x88888889
2BEF12:  SMMLA.W         R1, R1, R0, R0
2BEF16:  ASRS            R2, R1, #5
2BEF18:  ADD.W           R2, R2, R1,LSR#31
2BEF1C:  RSB.W           R1, R2, R2,LSL#4
2BEF20:  SUB.W           R3, R0, R1,LSL#2
2BEF24:  ADR             R1, aD2d_0; "%d:%.2d"
2BEF26:  MOV             R0, R5
2BEF28:  BL              sub_5E6BC0
2BEF2C:  B               loc_2BEF54
2BEF2E:  ALIGN 0x10
2BEF30:  DCFS 255.0
2BEF34:  ADD             R0, SP, #0x3C8+var_3A8; this
2BEF36:  MOVS            R1, #0x5D ; ']'; unsigned __int8
2BEF38:  MOVS            R2, #0x8E; unsigned __int8
2BEF3A:  MOVS            R3, #0xBE; unsigned __int8
2BEF3C:  STR.W           R10, [SP,#0x3C8+var_3C8]; unsigned __int8
2BEF40:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BEF44:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BEF48:  LDR.W           R2, [R11,#-8]
2BEF4C:  ADR             R1, dword_2BF004
2BEF4E:  MOV             R0, R5
2BEF50:  BL              sub_5E6BC0
2BEF54:  MOV             R0, R5; char *
2BEF56:  ADD             R5, SP, #0x3C8+var_37C
2BEF58:  LDRD.W          R9, R4, [SP,#0x3C8+var_3B0]
2BEF5C:  MOV             R1, R5; unsigned __int16 *
2BEF5E:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BEF62:  MOVS            R0, #(stderr+2); this
2BEF64:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BEF68:  VLDR            S0, [SP,#0x3C8+var_38C]
2BEF6C:  MOVS            R0, #0; this
2BEF6E:  VLDR            S28, [SP,#0x3C8+var_384]
2BEF72:  VLDR            S2, [SP,#0x3C8+var_388]
2BEF76:  VSUB.F32        S0, S28, S0
2BEF7A:  VLDR            S4, [SP,#0x3C8+var_380]
2BEF7E:  VADD.F32        S30, S2, S4
2BEF82:  VABS.F32        S17, S0
2BEF86:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BEF8A:  VMOV            S0, R0
2BEF8E:  MOV             R2, R5; CFont *
2BEF90:  VMUL.F32        S2, S30, S22
2BEF94:  VMUL.F32        S0, S0, S22
2BEF98:  VMUL.F32        S4, S17, S26
2BEF9C:  VSUB.F32        S0, S2, S0
2BEFA0:  VADD.F32        S2, S28, S4
2BEFA4:  VMOV            R1, S0; float
2BEFA8:  VMOV            R0, S2; this
2BEFAC:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BEFB0:  VADD.F32        S20, S18, S20
2BEFB4:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BEFB8:  ADD.W           R11, R11, #0x10C
2BEFBC:  SUBS.W          R9, R9, #1
2BEFC0:  BNE.W           loc_2BEDE2
2BEFC4:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BEFCC)
2BEFC6:  LDR             R1, [SP,#0x3C8+var_64]
2BEFC8:  ADD             R0, PC; __stack_chk_guard_ptr
2BEFCA:  LDR             R0, [R0]; __stack_chk_guard
2BEFCC:  LDR             R0, [R0]
2BEFCE:  SUBS            R0, R0, R1
2BEFD0:  ITTTT EQ
2BEFD2:  ADDEQ.W         SP, SP, #0x368
2BEFD6:  VPOPEQ          {D8-D15}
2BEFDA:  ADDEQ           SP, SP, #4
2BEFDC:  POPEQ.W         {R8-R11}
2BEFE0:  IT EQ
2BEFE2:  POPEQ           {R4-R7,PC}
2BEFE4:  BLX             __stack_chk_fail
