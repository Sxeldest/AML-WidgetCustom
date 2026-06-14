; =========================================================
; Game Engine Function: _ZN12CMenuManager16DrawWindowedTextEfffPcS0_h
; Address            : 0x432C84 - 0x432FBA
; =========================================================

432C84:  PUSH            {R4-R7,LR}
432C86:  ADD             R7, SP, #0xC
432C88:  PUSH.W          {R8-R11}
432C8C:  SUB             SP, SP, #4
432C8E:  VPUSH           {D8-D15}
432C92:  SUB             SP, SP, #0x28
432C94:  LDR             R0, =(RsGlobal_ptr - 0x432CA4)
432C96:  VMOV.F32        S20, #10.0
432C9A:  VLDR            S18, =640.0
432C9E:  MOV             R10, R1
432CA0:  ADD             R0, PC; RsGlobal_ptr
432CA2:  VMOV            S16, R3
432CA6:  VMOV            S24, R10
432CAA:  MOVW            R1, #0x2400
432CAE:  LDR             R6, [R0]; RsGlobal
432CB0:  MOVT            R1, #0x4974
432CB4:  VADD.F32        S22, S24, S16
432CB8:  MOV             R11, R2
432CBA:  VLDR            S0, [R6,#4]
432CBE:  VCVT.F32.S32    S0, S0
432CC2:  STR             R1, [SP,#0x88+var_64]
432CC4:  STR             R1, [SP,#0x88+var_70]
432CC6:  MOV             R1, #0xC9742400; float
432CCE:  STRD.W          R1, R1, [SP,#0x88+var_6C]
432CD2:  VDIV.F32        S0, S0, S18
432CD6:  VMUL.F32        S0, S0, S20
432CDA:  VSUB.F32        S0, S22, S0
432CDE:  VMOV            R0, S0; this
432CE2:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
432CE6:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
432CE8:  VSUB.F32        S24, S24, S16
432CEC:  VMOV            S0, R0
432CF0:  VCVT.F32.S32    S0, S0
432CF4:  VDIV.F32        S0, S0, S18
432CF8:  VMUL.F32        S0, S0, S20
432CFC:  VADD.F32        S0, S24, S0
432D00:  VMOV            R0, S0; this
432D04:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
432D08:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
432D0A:  VMOV.F32        S26, #-2.0
432D0E:  VMOV            S0, R0
432D12:  VCVT.F32.S32    S0, S0
432D16:  VDIV.F32        S0, S0, S18
432D1A:  VMUL.F32        S0, S0, S20
432D1E:  VMUL.F32        S0, S0, S26
432D22:  VADD.F32        S0, S16, S0
432D26:  VMOV            R0, S0; this
432D2A:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
432D2E:  MOVS            R0, #(stderr+1); this
432D30:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
432D34:  LDR.W           R8, [R7,#arg_8]
432D38:  MOV             R0, R8; this
432D3A:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
432D3E:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
432D40:  VMOV.F32        S28, #1.0
432D44:  VLDR            S30, =0.0022321
432D48:  CMP.W           R0, #0x1C0
432D4C:  VMOV            S0, R0
432D50:  VCVT.F32.S32    S0, S0
432D54:  VMUL.F32        S0, S0, S30
432D58:  IT EQ
432D5A:  VMOVEQ.F32      S0, S28
432D5E:  VMOV            R0, S0; this
432D62:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
432D66:  LDR             R0, =(TheText_ptr - 0x432D70)
432D68:  LDR.W           R9, [R7,#arg_4]
432D6C:  ADD             R0, PC; TheText_ptr
432D6E:  LDR             R0, [R0]; TheText ; this
432D70:  MOV             R1, R9; CKeyGen *
432D72:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
432D76:  ADD             R5, SP, #0x88+var_70
432D78:  MOV             R3, R0
432D7A:  MOV             R1, R10
432D7C:  MOV             R2, R11
432D7E:  MOV             R0, R5
432D80:  BLX             j__ZN5CFont11GetTextRectEP5CRectffPt; CFont::GetTextRect(CRect *,float,float,ushort *)
432D84:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
432D86:  VMOV.F32        S4, #22.0
432D8A:  VLDR            S2, =0.049107
432D8E:  ADD             R4, SP, #0x88+var_74
432D90:  CMP.W           R0, #0x1C0
432D94:  MOV.W           R1, #0; unsigned __int8
432D98:  VMOV            S0, R0
432D9C:  MOV.W           R0, #0xBE
432DA0:  MOV.W           R2, #0; unsigned __int8
432DA4:  MOV.W           R3, #0; unsigned __int8
432DA8:  VCVT.F32.S32    S0, S0
432DAC:  VMUL.F32        S0, S0, S2
432DB0:  VMOV.F32        S2, #-4.0
432DB4:  IT EQ
432DB6:  VMOVEQ.F32      S0, S4
432DBA:  VLDR            S4, [SP,#0x88+var_70]
432DBE:  VLDR            S6, [SP,#0x88+var_64]
432DC2:  STR             R0, [SP,#0x88+var_88]; unsigned __int8
432DC4:  MOV             R0, R4; this
432DC6:  VADD.F32        S0, S6, S0
432DCA:  VADD.F32        S2, S4, S2
432DCE:  VSTR            S2, [SP,#0x88+var_70]
432DD2:  VSTR            S0, [SP,#0x88+var_64]
432DD6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
432DDA:  MOV             R0, R5
432DDC:  MOV             R1, R4
432DDE:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
432DE2:  ADD             R0, SP, #0x88+var_78; this
432DE4:  MOVS            R4, #0xFF
432DE6:  MOVS            R1, #0xE1; unsigned __int8
432DE8:  MOVS            R2, #0xE1; unsigned __int8
432DEA:  MOVS            R3, #0xE1; unsigned __int8
432DEC:  STR             R4, [SP,#0x88+var_88]; unsigned __int8
432DEE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
432DF2:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
432DF6:  ADD             R0, SP, #0x88+var_7C; this
432DF8:  MOVS            R1, #0; unsigned __int8
432DFA:  MOVS            R2, #0; unsigned __int8
432DFC:  MOVS            R3, #0; unsigned __int8
432DFE:  STR             R4, [SP,#0x88+var_88]; unsigned __int8
432E00:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
432E04:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
432E08:  MOVS            R0, #(stderr+2); this
432E0A:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
432E0E:  MOVS            R0, #(stderr+1); this
432E10:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
432E14:  MOVS            R0, #0; this
432E16:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
432E1A:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
432E1C:  VLDR            S17, =448.0
432E20:  VLDR            S2, =1.4
432E24:  VMOV            S0, R0
432E28:  VCVT.F32.S32    S0, S0
432E2C:  VDIV.F32        S0, S0, S17
432E30:  VMUL.F32        S0, S0, S2
432E34:  VMOV            R0, S0; this
432E38:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
432E3C:  LDR             R0, [SP,#0x88+var_68]; this
432E3E:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
432E42:  LDR             R1, [R7,#arg_0]; CKeyGen *
432E44:  CMP             R1, #0
432E46:  ITT NE
432E48:  LDRBNE          R0, [R1]
432E4A:  CMPNE           R0, #0
432E4C:  BEQ             loc_432EA8
432E4E:  LDR             R0, =(RsGlobal_ptr - 0x432E5C)
432E50:  VMOV.F32        S6, #16.0
432E54:  VLDR            S4, =-448.0
432E58:  ADD             R0, PC; RsGlobal_ptr
432E5A:  LDR             R0, [R0]; RsGlobal
432E5C:  VLDR            S0, [R0,#4]
432E60:  VLDR            S2, [R0,#8]
432E64:  VCVT.F32.S32    S0, S0
432E68:  LDR             R0, =(TheText_ptr - 0x432E72)
432E6A:  VCVT.F32.S32    S2, S2
432E6E:  ADD             R0, PC; TheText_ptr
432E70:  LDR             R0, [R0]; TheText ; this
432E72:  VDIV.F32        S0, S0, S18
432E76:  VDIV.F32        S2, S2, S4
432E7A:  VMOV.F32        S4, #20.0
432E7E:  VMUL.F32        S2, S2, S6
432E82:  VLDR            S6, [SP,#0x88+var_6C]
432E86:  VMUL.F32        S0, S0, S4
432E8A:  VLDR            S4, [SP,#0x88+var_70]
432E8E:  VADD.F32        S21, S6, S2
432E92:  VADD.F32        S19, S4, S0
432E96:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
432E9A:  MOV             R2, R0; CFont *
432E9C:  VMOV            R0, S19; this
432EA0:  VMOV            R1, S21; float
432EA4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
432EA8:  CMP.W           R9, #0
432EAC:  ITT NE
432EAE:  LDRBNE.W        R0, [R9]
432EB2:  CMPNE           R0, #0
432EB4:  BEQ             loc_432FAC
432EB6:  LDR             R0, =(RsGlobal_ptr - 0x432EC0)
432EB8:  VMOV            S19, R11
432EBC:  ADD             R0, PC; RsGlobal_ptr
432EBE:  LDR             R5, [R0]; RsGlobal
432EC0:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
432EC2:  VMOV            S0, R0
432EC6:  VCVT.F32.S32    S0, S0
432ECA:  VDIV.F32        S0, S0, S18
432ECE:  VMUL.F32        S0, S0, S20
432ED2:  VSUB.F32        S0, S22, S0
432ED6:  VMOV            R0, S0; this
432EDA:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
432EDE:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
432EE0:  VMOV            S0, R0
432EE4:  VCVT.F32.S32    S0, S0
432EE8:  VDIV.F32        S0, S0, S18
432EEC:  VMUL.F32        S0, S0, S20
432EF0:  VADD.F32        S0, S24, S0
432EF4:  VMOV            R0, S0; this
432EF8:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
432EFC:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
432EFE:  VMOV            S0, R0
432F02:  VCVT.F32.S32    S0, S0
432F06:  VDIV.F32        S0, S0, S18
432F0A:  VMUL.F32        S0, S0, S20
432F0E:  VMUL.F32        S0, S0, S26
432F12:  VADD.F32        S0, S16, S0
432F16:  VMOV            R0, S0; this
432F1A:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
432F1E:  MOVS            R0, #(stderr+1); this
432F20:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
432F24:  MOV             R0, R8; this
432F26:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
432F2A:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
432F2C:  CMP.W           R0, #0x1C0
432F30:  VMOV            S0, R0
432F34:  VCVT.F32.S32    S0, S0
432F38:  VMUL.F32        S0, S0, S30
432F3C:  IT EQ
432F3E:  VMOVEQ.F32      S0, S28
432F42:  VMOV            R0, S0; this
432F46:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
432F4A:  LDR             R0, =(HudColour_ptr - 0x432F54)
432F4C:  ADD             R4, SP, #0x88+var_80
432F4E:  MOVS            R2, #3
432F50:  ADD             R0, PC; HudColour_ptr
432F52:  LDR             R1, [R0]; HudColour ; unsigned __int8
432F54:  MOV             R0, R4; this
432F56:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
432F5A:  MOV             R0, R4
432F5C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
432F60:  MOVS            R0, #(stderr+2); this
432F62:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
432F66:  MOVS            R0, #0xFF
432F68:  MOVS            R1, #0; unsigned __int8
432F6A:  STR             R0, [SP,#0x88+var_88]; unsigned __int8
432F6C:  ADD             R0, SP, #0x88+var_84; this
432F6E:  MOVS            R2, #0; unsigned __int8
432F70:  MOVS            R3, #0; unsigned __int8
432F72:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
432F76:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
432F7A:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
432F7C:  VMOV.F32        S2, #15.0
432F80:  MOV             R1, R9; CKeyGen *
432F82:  VMOV            S0, R0
432F86:  LDR             R0, =(TheText_ptr - 0x432F90)
432F88:  VCVT.F32.S32    S0, S0
432F8C:  ADD             R0, PC; TheText_ptr
432F8E:  LDR             R0, [R0]; TheText ; this
432F90:  VDIV.F32        S0, S0, S17
432F94:  VMUL.F32        S0, S0, S2
432F98:  VADD.F32        S16, S0, S19
432F9C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
432FA0:  VMOV            R1, S16; float
432FA4:  MOV             R2, R0; CFont *
432FA6:  MOV             R0, R10; this
432FA8:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
432FAC:  ADD             SP, SP, #0x28 ; '('
432FAE:  VPOP            {D8-D15}
432FB2:  ADD             SP, SP, #4
432FB4:  POP.W           {R8-R11}
432FB8:  POP             {R4-R7,PC}
