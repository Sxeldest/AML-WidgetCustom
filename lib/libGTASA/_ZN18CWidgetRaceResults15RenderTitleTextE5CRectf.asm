; =========================================================
; Game Engine Function: _ZN18CWidgetRaceResults15RenderTitleTextE5CRectf
; Address            : 0x2BF028 - 0x2BF12E
; =========================================================

2BF028:  PUSH            {R4-R7,LR}
2BF02A:  ADD             R7, SP, #0xC
2BF02C:  PUSH.W          {R8}
2BF030:  VPUSH           {D8-D12}
2BF034:  SUB             SP, SP, #8
2BF036:  MOV             R6, R0
2BF038:  MOVS            R0, #0; this
2BF03A:  MOV             R8, R3
2BF03C:  MOV             R4, R2
2BF03E:  MOV             R5, R1
2BF040:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BF044:  MOVS            R0, #0; this
2BF046:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BF04A:  VLDR            S0, =255.0
2BF04E:  MOVS            R1, #0xFF; unsigned __int8
2BF050:  VLDR            S2, [R7,#arg_4]
2BF054:  MOVS            R2, #0xFF; unsigned __int8
2BF056:  MOVS            R3, #0xFF; unsigned __int8
2BF058:  VMUL.F32        S0, S2, S0
2BF05C:  VCVT.U32.F32    S0, S0
2BF060:  VMOV            R0, S0
2BF064:  STR             R0, [SP,#0x40+var_40]; unsigned __int8
2BF066:  ADD             R0, SP, #0x40+var_3C; this
2BF068:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF06C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BF070:  VLDR            S16, [R7,#arg_0]
2BF074:  VMOV            S18, R4
2BF078:  VLDR            S2, =0.0325
2BF07C:  VSUB.F32        S0, S18, S16
2BF080:  VABS.F32        S0, S0
2BF084:  VMUL.F32        S20, S0, S2
2BF088:  VMOV            R0, S20; this
2BF08C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BF090:  LDR             R0, =(TheText_ptr - 0x2BF09A)
2BF092:  ADDW            R6, R6, #0x5CC
2BF096:  ADD             R0, PC; TheText_ptr
2BF098:  MOV             R1, R6; CKeyGen *
2BF09A:  LDR             R0, [R0]; TheText ; this
2BF09C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BF0A0:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BF0A2:  MOVS            R2, #0; unsigned __int8
2BF0A4:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BF0A8:  VMOV            S22, R5
2BF0AC:  VMOV            S24, R8
2BF0B0:  VMOV.F32        S2, #0.875
2BF0B4:  VSUB.F32        S0, S24, S22
2BF0B8:  VABS.F32        S0, S0
2BF0BC:  VMUL.F32        S0, S0, S2
2BF0C0:  VMOV            S2, R0
2BF0C4:  VCMPE.F32       S2, S0
2BF0C8:  VMRS            APSR_nzcv, FPSCR
2BF0CC:  BLE             loc_2BF0DE
2BF0CE:  VDIV.F32        S0, S0, S2
2BF0D2:  VMUL.F32        S0, S20, S0
2BF0D6:  VMOV            R0, S0; this
2BF0DA:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BF0DE:  MOVS            R0, #0; this
2BF0E0:  VMOV.F32        S20, #0.5
2BF0E4:  VADD.F32        S16, S18, S16
2BF0E8:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BF0EC:  VMOV            S0, R0
2BF0F0:  LDR             R0, =(TheText_ptr - 0x2BF100)
2BF0F2:  VADD.F32        S2, S22, S24
2BF0F6:  MOV             R1, R6; CKeyGen *
2BF0F8:  VMUL.F32        S4, S16, S20
2BF0FC:  ADD             R0, PC; TheText_ptr
2BF0FE:  VMUL.F32        S0, S0, S20
2BF102:  LDR             R0, [R0]; TheText ; this
2BF104:  VMUL.F32        S16, S2, S20
2BF108:  VSUB.F32        S18, S4, S0
2BF10C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BF110:  MOV             R2, R0; CFont *
2BF112:  VMOV            R0, S16; this
2BF116:  VMOV            R1, S18; float
2BF11A:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BF11E:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BF122:  ADD             SP, SP, #8
2BF124:  VPOP            {D8-D12}
2BF128:  POP.W           {R8}
2BF12C:  POP             {R4-R7,PC}
