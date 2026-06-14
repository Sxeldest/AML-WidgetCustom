; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo10DrawWantedEv
; Address            : 0x2BDF48 - 0x2BE21E
; =========================================================

2BDF48:  PUSH            {R4-R7,LR}
2BDF4A:  ADD             R7, SP, #0xC
2BDF4C:  PUSH.W          {R8-R11}
2BDF50:  SUB             SP, SP, #4
2BDF52:  VPUSH           {D8-D13}
2BDF56:  SUB             SP, SP, #0x70
2BDF58:  MOV             R4, R0
2BDF5A:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BDF60)
2BDF5C:  ADD             R0, PC; __stack_chk_guard_ptr
2BDF5E:  LDR             R0, [R0]; __stack_chk_guard
2BDF60:  LDR             R0, [R0]
2BDF62:  STR             R0, [SP,#0xC0+var_54]
2BDF64:  MOV.W           R0, #0xFFFFFFFF; int
2BDF68:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2BDF6C:  LDR.W           R11, [R0,#0x2C]
2BDF70:  MOV.W           R0, #0xFFFFFFFF; int
2BDF74:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2BDF78:  LDR             R0, [R0,#0x30]
2BDF7A:  MOVS            R1, #0
2BDF7C:  STR             R0, [SP,#0xC0+var_A4]
2BDF7E:  LDR.W           R0, [R4,#0x90]
2BDF82:  CMP             R0, R11
2BDF84:  ITTE NE
2BDF86:  STRNE.W         R11, [R4,#0x90]
2BDF8A:  MOVNE           R0, #0
2BDF8C:  MOVEQ           R0, #1
2BDF8E:  CMP.W           R11, #0
2BDF92:  IT GT
2BDF94:  MOVGT           R1, #1
2BDF96:  LDR             R2, [SP,#0xC0+var_A4]; unsigned __int8
2BDF98:  CMP             R2, #0
2BDF9A:  BGT             loc_2BDFA4
2BDF9C:  ANDS            R0, R1
2BDF9E:  CMP             R0, #1
2BDFA0:  BNE.W           loc_2BE1FC
2BDFA4:  MOVS            R0, #0; this
2BDFA6:  MOVS            R1, #0; unsigned __int8
2BDFA8:  MOV.W           R9, #0
2BDFAC:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BDFB0:  MOVS            R0, #(stderr+2); this
2BDFB2:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BDFB6:  MOVS            R0, #(stderr+1); this
2BDFB8:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BDFBC:  LDR             R0, =(_ZN5CFont18UsingEFIGSLanguageE_ptr - 0x2BDFC2)
2BDFBE:  ADD             R0, PC; _ZN5CFont18UsingEFIGSLanguageE_ptr
2BDFC0:  LDR             R0, [R0]; CFont::UsingEFIGSLanguage ...
2BDFC2:  LDRB            R1, [R0]; unsigned __int8
2BDFC4:  MOVS            R0, #4
2BDFC6:  CMP             R1, #0
2BDFC8:  IT NE
2BDFCA:  MOVNE           R0, #0; this
2BDFCC:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BDFD0:  MOVS            R0, #0x5D ; ']'
2BDFD2:  ADD             R1, SP, #0xC0+var_90; unsigned __int16 *
2BDFD4:  STRH.W          R0, [SP,#0xC0+var_68]
2BDFD8:  ADD             R0, SP, #0xC0+var_68; char *
2BDFDA:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BDFDE:  MOVS            R0, #0; this
2BDFE0:  VLDR            S18, [R4,#0x24]
2BDFE4:  VLDR            S16, [R4,#0x28]
2BDFE8:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BDFEC:  LDR             R1, =(_ZN5CDraw15ms_fAspectRatioE_ptr - 0x2BDFFE)
2BDFEE:  VMOV            S0, R0
2BDFF2:  VLDR            D16, =1.9
2BDFF6:  VMOV.F32        S2, #-30.0
2BDFFA:  ADD             R1, PC; _ZN5CDraw15ms_fAspectRatioE_ptr
2BDFFC:  VSUB.F32        S0, S18, S0
2BE000:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BE00A)
2BE002:  ADD             R6, SP, #0xC0+var_94
2BE004:  LDR             R1, [R1]; signed __int8
2BE006:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BE008:  VLDR            D9, =0.007
2BE00C:  VLDR            S20, =-0.15
2BE010:  VLDR            S4, [R1]
2BE014:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2BE016:  VCVT.F64.F32    D17, S4
2BE01A:  VCMPE.F64       D17, D16
2BE01E:  VMRS            APSR_nzcv, FPSCR
2BE022:  VADD.F32        S2, S0, S2
2BE026:  VLDR            S22, =0.8
2BE02A:  VLDR            S24, =0.7
2BE02E:  VLDR            D13, =0.0075
2BE032:  IT GT
2BE034:  VMOVGT.F32      S0, S2
2BE038:  STR             R0, [SP,#0xC0+var_A8]
2BE03A:  LDR             R0, =(HudColour_ptr - 0x2BE044)
2BE03C:  VMOV            R8, S0
2BE040:  ADD             R0, PC; HudColour_ptr
2BE042:  LDR             R0, [R0]; HudColour
2BE044:  STR             R0, [SP,#0xC0+var_AC]
2BE046:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BE04C)
2BE048:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BE04A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2BE04C:  STR             R0, [SP,#0xC0+var_B4]
2BE04E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BE054)
2BE050:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BE052:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2BE054:  STR             R0, [SP,#0xC0+var_B0]
2BE056:  LDR             R0, =(HudColour_ptr - 0x2BE05C)
2BE058:  ADD             R0, PC; HudColour_ptr
2BE05A:  LDR             R0, [R0]; HudColour
2BE05C:  STR             R0, [SP,#0xC0+var_B8]
2BE05E:  MOVS            R0, #(stderr+1); this
2BE060:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BE064:  LDRB.W          R0, [R4,#0x4C]
2BE068:  MOVS            R1, #0; unsigned __int8
2BE06A:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
2BE06C:  MOV             R0, R6; this
2BE06E:  MOVS            R2, #0; unsigned __int8
2BE070:  MOVS            R3, #0; unsigned __int8
2BE072:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE076:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BE07A:  VLDR            S0, [R4,#0x20]
2BE07E:  VLDR            S2, [R4,#0x28]
2BE082:  VSUB.F32        S0, S2, S0
2BE086:  VABS.F32        S0, S0
2BE08A:  VCVT.F64.F32    D16, S0
2BE08E:  VMUL.F64        D16, D16, D9
2BE092:  VCVT.F32.F64    S0, D16
2BE096:  VMOV            R0, S0; this
2BE09A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BE09E:  CMP             R11, R9
2BE0A0:  BLE             loc_2BE0F0
2BE0A2:  LDR             R0, [SP,#0xC0+var_A8]
2BE0A4:  LDR.W           R10, [R0]
2BE0A8:  MOV.W           R0, #0xFFFFFFFF; int
2BE0AC:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2BE0B0:  LDR             R0, [R0,#0xC]
2BE0B2:  ADD.W           R0, R0, #0x7D0
2BE0B6:  CMP             R10, R0
2BE0B8:  BHI             loc_2BE0D8
2BE0BA:  LDR             R0, [SP,#0xC0+var_B4]
2BE0BC:  MOV             R1, #0x5D9F7391
2BE0C4:  LDR             R0, [R0]
2BE0C6:  UMULL.W         R1, R2, R0, R1
2BE0CA:  LSRS            R1, R2, #7
2BE0CC:  MOV.W           R2, #0x15E
2BE0D0:  MLS.W           R0, R1, R2, R0
2BE0D4:  CMP             R0, #0x97
2BE0D6:  BCC             loc_2BE0F0
2BE0D8:  ADD             R5, SP, #0xC0+var_98
2BE0DA:  LDRB.W          R3, [R4,#0x4C]
2BE0DE:  LDR             R1, [SP,#0xC0+var_AC]; unsigned __int8
2BE0E0:  MOVS            R2, #7; unsigned __int8
2BE0E2:  MOV             R0, R5; this
2BE0E4:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
2BE0E8:  MOV             R0, R5
2BE0EA:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BE0EE:  B               loc_2BE1C2
2BE0F0:  LDR             R0, [SP,#0xC0+var_A4]
2BE0F2:  CMP             R0, R9
2BE0F4:  BLE             loc_2BE16A
2BE0F6:  LDR             R0, [SP,#0xC0+var_B0]
2BE0F8:  MOV             R1, #0x5D9F7391
2BE100:  LDR             R0, [R0]
2BE102:  UMULL.W         R1, R2, R0, R1
2BE106:  LSRS            R1, R2, #7
2BE108:  MOV.W           R2, #0x15E
2BE10C:  MLS.W           R0, R1, R2, R0
2BE110:  CMP             R0, #0x97
2BE112:  NOP
2BE114:  LDR             R2, [SP,#0xC0+var_B8]
2BE116:  LDRB            R0, [R2,#0x1C]
2BE118:  LDRB            R1, [R2,#0x1D]
2BE11A:  LDRB            R2, [R2,#0x1E]
2BE11C:  VMOV            S0, R0
2BE120:  VMOV            S2, R1
2BE124:  VMOV            S4, R2
2BE128:  VCVT.F32.U32    S0, S0
2BE12C:  VCVT.F32.U32    S2, S2
2BE130:  VCVT.F32.U32    S4, S4
2BE134:  LDRB.W          R0, [R4,#0x4C]
2BE138:  VMUL.F32        S0, S0, S22
2BE13C:  VMUL.F32        S2, S2, S22
2BE140:  VMUL.F32        S4, S4, S22
2BE144:  VCVT.U32.F32    S0, S0
2BE148:  VCVT.U32.F32    S2, S2
2BE14C:  VCVT.U32.F32    S4, S4
2BE150:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
2BE152:  ADD             R0, SP, #0xC0+var_9C; this
2BE154:  VMOV            R1, S0; unsigned __int8
2BE158:  VMOV            R2, S2; unsigned __int8
2BE15C:  VMOV            R3, S4; unsigned __int8
2BE160:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE164:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BE168:  B               loc_2BE1C2
2BE16A:  CMP             R11, R9
2BE16C:  BGT             loc_2BE1D2
2BE16E:  MOVS            R0, #0; this
2BE170:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BE174:  LDRB.W          R0, [R4,#0x4C]
2BE178:  MOVS            R1, #0; unsigned __int8
2BE17A:  MOVS            R2, #0; unsigned __int8
2BE17C:  MOVS            R3, #0; unsigned __int8
2BE17E:  VMOV            S0, R0
2BE182:  VCVT.F32.U32    S0, S0
2BE186:  VMUL.F32        S0, S0, S24
2BE18A:  VCVT.U32.F32    S0, S0
2BE18E:  VMOV            R0, S0
2BE192:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
2BE194:  ADD             R0, SP, #0xC0+var_A0; this
2BE196:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BE19A:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BE19E:  VLDR            S0, [R4,#0x20]
2BE1A2:  VLDR            S2, [R4,#0x28]
2BE1A6:  VSUB.F32        S0, S2, S0
2BE1AA:  VABS.F32        S0, S0
2BE1AE:  VCVT.F64.F32    D16, S0
2BE1B2:  VMUL.F64        D16, D16, D13
2BE1B6:  VCVT.F32.F64    S0, D16
2BE1BA:  VMOV            R0, S0; this
2BE1BE:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BE1C2:  VMOV            R0, S16; this
2BE1C6:  ADD             R2, SP, #0xC0+var_90; CFont *
2BE1C8:  MOV             R1, R8; float
2BE1CA:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BE1CE:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BE1D2:  VLDR            S0, [R4,#0x20]
2BE1D6:  ADD.W           R9, R9, #1
2BE1DA:  VLDR            S2, [R4,#0x28]
2BE1DE:  CMP.W           R9, #6
2BE1E2:  VSUB.F32        S0, S2, S0
2BE1E6:  VABS.F32        S0, S0
2BE1EA:  VMUL.F32        S0, S0, S20
2BE1EE:  VADD.F32        S16, S16, S0
2BE1F2:  BNE.W           loc_2BE05E
2BE1F6:  MOVS            R0, #0; this
2BE1F8:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BE1FC:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BE204)
2BE1FE:  LDR             R1, [SP,#0xC0+var_54]
2BE200:  ADD             R0, PC; __stack_chk_guard_ptr
2BE202:  LDR             R0, [R0]; __stack_chk_guard
2BE204:  LDR             R0, [R0]
2BE206:  SUBS            R0, R0, R1
2BE208:  ITTTT EQ
2BE20A:  ADDEQ           SP, SP, #0x70 ; 'p'
2BE20C:  VPOPEQ          {D8-D13}
2BE210:  ADDEQ           SP, SP, #4
2BE212:  POPEQ.W         {R8-R11}
2BE216:  IT EQ
2BE218:  POPEQ           {R4-R7,PC}
2BE21A:  BLX             __stack_chk_fail
