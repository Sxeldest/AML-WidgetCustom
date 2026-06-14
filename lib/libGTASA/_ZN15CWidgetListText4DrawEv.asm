; =========================================================
; Game Engine Function: _ZN15CWidgetListText4DrawEv
; Address            : 0x2BBBE4 - 0x2BBEF6
; =========================================================

2BBBE4:  PUSH            {R4-R7,LR}
2BBBE6:  ADD             R7, SP, #0xC
2BBBE8:  PUSH.W          {R8-R11}
2BBBEC:  SUB             SP, SP, #4
2BBBEE:  VPUSH           {D8-D15}
2BBBF2:  SUB             SP, SP, #0x168
2BBBF4:  MOV             R8, R0
2BBBF6:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BBBFC)
2BBBF8:  ADD             R0, PC; __stack_chk_guard_ptr
2BBBFA:  LDR             R0, [R0]; __stack_chk_guard
2BBBFC:  LDR             R0, [R0]
2BBBFE:  STR             R0, [SP,#0x1C8+var_64]
2BBC00:  MOV             R0, R8; this
2BBC02:  BLX             j__ZN11CWidgetList4DrawEv; CWidgetList::Draw(void)
2BBC06:  ADD.W           R0, R8, #0x10000
2BBC0A:  ADD.W           R0, R0, #0x1CA0
2BBC0E:  BLX             j__ZN7CWidget10SetScissorER5CRect; CWidget::SetScissor(CRect &)
2BBC12:  MOV             R1, #0x11CB0
2BBC1A:  LDR.W           R0, [R8,R1]
2BBC1E:  CMP             R0, #1
2BBC20:  BLT.W           loc_2BBEC2
2BBC24:  ADD             R1, R8
2BBC26:  STR             R1, [SP,#0x1C8+var_1AC]
2BBC28:  ADD.W           R1, R8, #0x11C00
2BBC2C:  VMOV.F32        S16, #2.0
2BBC30:  ADDS            R1, #0xD5
2BBC32:  STR             R1, [SP,#0x1C8+var_1B0]
2BBC34:  ADD.W           R1, R8, #0x11000
2BBC38:  VMOV.F32        S18, #-2.0
2BBC3C:  ADD.W           R1, R1, #0xC90
2BBC40:  STR             R1, [SP,#0x1C8+var_1A8]
2BBC42:  ADD.W           R1, R8, #0x11800
2BBC46:  VMOV.F32        S22, #3.0
2BBC4A:  ADD.W           R1, R1, #0x498
2BBC4E:  STR             R1, [SP,#0x1C8+var_1B4]
2BBC50:  ADD.W           R1, R8, #0x11C00
2BBC54:  VMOV.F32        S24, #10.0
2BBC58:  ADDS            R1, #0xD7
2BBC5A:  STR             R1, [SP,#0x1C8+var_1A4]
2BBC5C:  ADD.W           R1, R8, #0x11800
2BBC60:  VMOV.F32        S26, #30.0
2BBC64:  ADD.W           R1, R1, #0x4C8
2BBC68:  STR             R1, [SP,#0x1C8+var_1B8]
2BBC6A:  ADD.W           R1, R8, #0x11C00
2BBC6E:  VMOV.F32        S28, #0.5
2BBC72:  ADD.W           R10, R1, #0xB4
2BBC76:  ADD.W           R1, R8, #0x11C00
2BBC7A:  ADD.W           R9, R1, #0x9C
2BBC7E:  LDR             R1, =(RsGlobal_ptr - 0x2BBC8C)
2BBC80:  VMOV.F32        S30, #1.0
2BBC84:  ADD.W           R5, R8, #0x90
2BBC88:  ADD             R1, PC; RsGlobal_ptr
2BBC8A:  VLDR            S20, =640.0
2BBC8E:  MOVS            R6, #0
2BBC90:  LDR             R1, [R1]; RsGlobal
2BBC92:  STR             R1, [SP,#0x1C8+var_1BC]
2BBC94:  LDR             R1, =(TheText_ptr - 0x2BBC9A)
2BBC96:  ADD             R1, PC; TheText_ptr
2BBC98:  LDR             R1, [R1]; TheText
2BBC9A:  STRD.W          R1, R9, [SP,#0x1C8+var_1C4]
2BBC9E:  MOV             R1, R6
2BBCA0:  ADDS            R6, R1, #1
2BBCA2:  VMOV            S0, R1; int
2BBCA6:  VCVT.F32.S32    S17, S0
2BBCAA:  VLDR            S0, [R10]
2BBCAE:  VLDR            S2, [R8,#0x2C]
2BBCB2:  VSUB.F32        S4, S2, S0
2BBCB6:  VLDR            S2, [R9]
2BBCBA:  VMUL.F32        S6, S0, S17
2BBCBE:  VADD.F32        S4, S4, S16
2BBCC2:  VADD.F32        S6, S2, S6
2BBCC6:  VCMPE.F32       S6, S4
2BBCCA:  VMRS            APSR_nzcv, FPSCR
2BBCCE:  BLE.W           loc_2BBEB8
2BBCD2:  VMOV            S4, R6
2BBCD6:  VCVT.F32.S32    S4, S4
2BBCDA:  VLDR            S6, [R8,#0x24]
2BBCDE:  VADD.F32        S6, S0, S6
2BBCE2:  VMUL.F32        S0, S0, S4
2BBCE6:  VADD.F32        S4, S6, S18
2BBCEA:  VADD.F32        S0, S2, S0
2BBCEE:  VCMPE.F32       S0, S4
2BBCF2:  VMRS            APSR_nzcv, FPSCR
2BBCF6:  BGE.W           loc_2BBEB8
2BBCFA:  MOV             R0, R8; this
2BBCFC:  BLX             j__ZN11CWidgetList15GetAlphaAtIndexEi; CWidgetList::GetAlphaAtIndex(int)
2BBD00:  LDR             R4, [SP,#0x1C8+var_1BC]
2BBD02:  MOV             R11, R0
2BBD04:  VLDR            S0, [R4,#4]
2BBD08:  VCVT.F32.S32    S0, S0
2BBD0C:  VMOV            R0, S0; this
2BBD10:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2BBD14:  MOVS            R0, #(stderr+1); this
2BBD16:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BBD1A:  MOVS            R0, #0; this
2BBD1C:  MOVS            R1, #0; unsigned __int8
2BBD1E:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BBD22:  LDR             R0, [SP,#0x1C8+var_1B8]
2BBD24:  LDR             R0, [R0]; this
2BBD26:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BBD2A:  MOVS            R0, #(stderr+1); this
2BBD2C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BBD30:  LDR             R0, [R4,#4]
2BBD32:  VMOV            S0, R0
2BBD36:  VCVT.F32.S32    S0, S0
2BBD3A:  VDIV.F32        S0, S0, S20
2BBD3E:  VMUL.F32        S0, S0, S20
2BBD42:  VMOV            R0, S0; this
2BBD46:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
2BBD4A:  MOVS            R0, #(stderr+1); this
2BBD4C:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BBD50:  LDRB.W          R0, [R8,#0x4C]
2BBD54:  VMOV            S19, R11
2BBD58:  MOVS            R1, #0xFF; unsigned __int8
2BBD5A:  MOVS            R2, #0xFF; unsigned __int8
2BBD5C:  MOVS            R3, #0xFF; unsigned __int8
2BBD5E:  VMOV            S0, R0
2BBD62:  VCVT.F32.U32    S0, S0
2BBD66:  VMUL.F32        S0, S19, S0
2BBD6A:  VCVT.U32.F32    S0, S0
2BBD6E:  VMOV            R0, S0
2BBD72:  STR             R0, [SP,#0x1C8+var_1C8]; unsigned __int8
2BBD74:  ADD             R0, SP, #0x1C8+var_78; this
2BBD76:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BBD7A:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BBD7E:  LDRB.W          R0, [R8,#0x4C]
2BBD82:  MOVS            R1, #0; unsigned __int8
2BBD84:  MOVS            R2, #0; unsigned __int8
2BBD86:  MOVS            R3, #0; unsigned __int8
2BBD88:  VMOV            S0, R0
2BBD8C:  VCVT.F32.U32    S0, S0
2BBD90:  VMUL.F32        S0, S19, S0
2BBD94:  VCVT.U32.F32    S0, S0
2BBD98:  VMOV            R0, S0
2BBD9C:  STR             R0, [SP,#0x1C8+var_1C8]; unsigned __int8
2BBD9E:  ADD             R0, SP, #0x1C8+var_7C; this
2BBDA0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BBDA4:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BBDA8:  MOVS            R0, #0; this
2BBDAA:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BBDAE:  MOVS            R0, #(dword_38+1); this
2BBDB0:  MOVS            R1, #0; unsigned __int16
2BBDB2:  BLX             j__ZN5CFont16GetCharacterSizeEtb; CFont::GetCharacterSize(ushort,bool)
2BBDB6:  VMOV            S0, R0
2BBDBA:  LDR             R0, [SP,#0x1C8+var_1A8]
2BBDBC:  VMUL.F32        S19, S0, S22
2BBDC0:  VLDR            S2, [R0]
2BBDC4:  LDR             R0, [SP,#0x1C8+var_1B4]
2BBDC6:  VLDR            S4, [R0]
2BBDCA:  VCMPE.F32       S19, S24
2BBDCE:  VMRS            APSR_nzcv, FPSCR
2BBDD2:  VSUB.F32        S0, S4, S2
2BBDD6:  VABS.F32        S0, S0
2BBDDA:  IT LT
2BBDDC:  VMOVLT.F32      S19, S26
2BBDE0:  LDR             R0, [SP,#0x1C8+var_1A4]
2BBDE2:  VSUB.F32        S2, S0, S19
2BBDE6:  LDRB            R0, [R0]
2BBDE8:  CMP             R0, #0
2BBDEA:  MOV             R0, R8; this
2BBDEC:  IT NE
2BBDEE:  VMOVNE.F32      S0, S2
2BBDF2:  VADD.F32        S0, S0, S18
2BBDF6:  VMOV            R1, S0; float
2BBDFA:  BLX             j__ZN11CWidgetList15ShrinkTextToFitEf; CWidgetList::ShrinkTextToFit(float)
2BBDFE:  LDR             R0, [SP,#0x1C8+var_1B0]
2BBE00:  LDRB            R0, [R0]
2BBE02:  CBZ             R0, loc_2BBE16
2BBE04:  LDR             R0, [SP,#0x1C8+var_1C4]; this
2BBE06:  MOV             R1, R5; CKeyGen *
2BBE08:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BBE0C:  MOV             R1, R0; unsigned __int16 *
2BBE0E:  ADD             R0, SP, #0x1C8+var_180; unsigned __int16 *
2BBE10:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
2BBE14:  B               loc_2BBE1E
2BBE16:  ADD             R1, SP, #0x1C8+var_180; unsigned __int16 *
2BBE18:  MOV             R0, R5; char *
2BBE1A:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BBE1E:  VLDR            S0, [R10]
2BBE22:  MOVS            R0, #0; this
2BBE24:  VLDR            S4, [R9]
2BBE28:  VMUL.F32        S2, S0, S17
2BBE2C:  VMUL.F32        S17, S0, S28
2BBE30:  VADD.F32        S21, S4, S2
2BBE34:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BBE38:  VMOV            S0, R0
2BBE3C:  LDR             R0, [SP,#0x1C8+var_1A4]
2BBE3E:  VADD.F32        S2, S17, S21
2BBE42:  VMUL.F32        S0, S0, S28
2BBE46:  LDRB            R0, [R0]
2BBE48:  CMP             R0, #0
2BBE4A:  VSUB.F32        S17, S2, S0
2BBE4E:  BEQ             loc_2BBE9C
2BBE50:  ADD             R4, SP, #0x1C8+var_74
2BBE52:  ADR             R1, dword_2BBF08
2BBE54:  MOV             R2, R6
2BBE56:  MOV             R0, R4
2BBE58:  BL              sub_5E6BC0
2BBE5C:  MOV             R9, R10
2BBE5E:  ADD.W           R10, SP, #0x1C8+var_1A0
2BBE62:  MOV             R0, R4; char *
2BBE64:  MOV             R1, R10; unsigned __int16 *
2BBE66:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BBE6A:  LDR             R0, [SP,#0x1C8+var_1A8]
2BBE6C:  VMOV            R4, S17
2BBE70:  MOV             R2, R10; CFont *
2BBE72:  MOV             R10, R9
2BBE74:  LDR.W           R9, [SP,#0x1C8+var_1C0]
2BBE78:  VLDR            S0, [R0]
2BBE7C:  MOV             R11, R0
2BBE7E:  VADD.F32        S0, S0, S30
2BBE82:  VMOV            R0, S0; this
2BBE86:  MOV             R1, R4; float
2BBE88:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BBE8C:  VLDR            S0, [R11]
2BBE90:  MOV             R1, R4
2BBE92:  VADD.F32        S0, S0, S30
2BBE96:  VADD.F32        S0, S19, S0
2BBE9A:  B               loc_2BBEAA
2BBE9C:  LDR             R0, [SP,#0x1C8+var_1A8]
2BBE9E:  VMOV            R1, S17; float
2BBEA2:  VLDR            S0, [R0]
2BBEA6:  VADD.F32        S0, S0, S30
2BBEAA:  VMOV            R0, S0; this
2BBEAE:  ADD             R2, SP, #0x1C8+var_180; CFont *
2BBEB0:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BBEB4:  LDR             R0, [SP,#0x1C8+var_1AC]
2BBEB6:  LDR             R0, [R0]; this
2BBEB8:  ADD.W           R5, R5, #0x11C
2BBEBC:  CMP             R6, R0
2BBEBE:  BLT.W           loc_2BBC9E
2BBEC2:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BBEC6:  VMOV.I32        Q8, #0
2BBECA:  ADD             R0, SP, #0x1C8+var_180
2BBECC:  VST1.64         {D16-D17}, [R0]
2BBED0:  BLX             j__ZN7CWidget10SetScissorER5CRect; CWidget::SetScissor(CRect &)
2BBED4:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BBEDC)
2BBED6:  LDR             R1, [SP,#0x1C8+var_64]
2BBED8:  ADD             R0, PC; __stack_chk_guard_ptr
2BBEDA:  LDR             R0, [R0]; __stack_chk_guard
2BBEDC:  LDR             R0, [R0]
2BBEDE:  SUBS            R0, R0, R1
2BBEE0:  ITTTT EQ
2BBEE2:  ADDEQ           SP, SP, #0x168
2BBEE4:  VPOPEQ          {D8-D15}
2BBEE8:  ADDEQ           SP, SP, #4
2BBEEA:  POPEQ.W         {R8-R11}
2BBEEE:  IT EQ
2BBEF0:  POPEQ           {R4-R7,PC}
2BBEF2:  BLX             __stack_chk_fail
