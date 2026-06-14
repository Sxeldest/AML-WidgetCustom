; =========================================================
; Game Engine Function: _ZN8CCredits13RenderCreditsEv
; Address            : 0x45CEA0 - 0x462828
; =========================================================

45CEA0:  PUSH            {R4-R7,LR}
45CEA2:  ADD             R7, SP, #0xC
45CEA4:  PUSH.W          {R8-R11}
45CEA8:  SUB             SP, SP, #4
45CEAA:  VPUSH           {D8-D10}
45CEAE:  SUB             SP, SP, #0x10
45CEB0:  BLX             j__Z14DefinedState2dv; DefinedState2d(void)
45CEB4:  LDR.W           R0, =(_ZN8CCredits16CreditsStartTimeE_ptr - 0x45CEC4)
45CEB8:  MOV.W           R11, #0
45CEBC:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x45CECA)
45CEC0:  ADD             R0, PC; _ZN8CCredits16CreditsStartTimeE_ptr
45CEC2:  STR.W           R11, [SP,#0x48+var_3C]
45CEC6:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
45CEC8:  LDR             R0, [R0]; CCredits::CreditsStartTime ...
45CECA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
45CECC:  LDR             R4, [R0]; CCredits::CreditsStartTime
45CECE:  MOVS            R0, #0; this
45CED0:  LDR             R5, [R1]; CTimer::m_snTimeInMilliseconds
45CED2:  MOVS            R1, #0; unsigned __int8
45CED4:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
45CED8:  LDR.W           R0, =(RsGlobal_ptr - 0x45CEE4)
45CEDC:  VLDR            S2, =0.92
45CEE0:  ADD             R0, PC; RsGlobal_ptr
45CEE2:  LDR             R0, [R0]; RsGlobal
45CEE4:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
45CEE6:  VMOV            S0, R0
45CEEA:  VCVT.F32.S32    S0, S0
45CEEE:  VMUL.F32        S0, S0, S2
45CEF2:  VMOV            R0, S0; this
45CEF6:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
45CEFA:  MOVS            R0, #0; this
45CEFC:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
45CF00:  MOVS            R0, #(stderr+1); this
45CF02:  MOV.W           R8, #1
45CF06:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
45CF0A:  MOVS            R0, #(stderr+1); this
45CF0C:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
45CF10:  MOVS            R0, #0; this
45CF12:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
45CF16:  MOVS            R0, #(elf_hash_bucket+3)
45CF18:  MOVS            R1, #0; unsigned __int8
45CF1A:  STR             R0, [SP,#0x48+var_48]; unsigned int *
45CF1C:  ADD             R0, SP, #0x48+var_40; this
45CF1E:  MOVS            R2, #0; unsigned __int8
45CF20:  MOVS            R3, #0; unsigned __int8
45CF22:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
45CF26:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
45CF2A:  SUBS            R0, R5, R4
45CF2C:  VMOV.F32        S0, #23.0
45CF30:  LDR.W           R1, =(aCred000 - 0x45CF40); "CRED000"
45CF34:  VMOV            S2, R0
45CF38:  LDR.W           R0, =(TheText_ptr - 0x45CF46)
45CF3C:  ADD             R1, PC; "CRED000"
45CF3E:  VCVT.F32.U32    S2, S2
45CF42:  ADD             R0, PC; TheText_ptr
45CF44:  LDR             R4, [R0]; TheText
45CF46:  MOV             R0, R4; this
45CF48:  VDIV.F32        S16, S2, S0
45CF4C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45CF50:  MOVW            R10, #0xCCCD
45CF54:  ADD             R5, SP, #0x48+var_3C
45CF56:  MOVT            R10, #0x3F8C
45CF5A:  MOV             R2, R0; float
45CF5C:  MOV             R1, R10; float
45CF5E:  MOV             R3, R5; unsigned __int16 *
45CF60:  STR.W           R8, [SP,#0x48+var_44]; float
45CF64:  VSTR            S16, [SP,#0x48+var_48]
45CF68:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45CF6C:  VLDR            S0, [SP,#0x48+var_3C]
45CF70:  MOV             R0, R4; this
45CF72:  VLDR            S18, =37.5
45CF76:  VCVT.F32.U32    S0, S0
45CF7A:  LDR.W           R1, =(aCred001 - 0x45CF82); "CRED001"
45CF7E:  ADD             R1, PC; "CRED001"
45CF80:  VADD.F32        S0, S0, S18
45CF84:  VCVT.U32.F32    S0, S0
45CF88:  VSTR            S0, [SP,#0x48+var_3C]
45CF8C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45CF90:  MOV             R1, R10; float
45CF92:  MOV             R2, R0; float
45CF94:  MOV             R3, R5; unsigned __int16 *
45CF96:  STR.W           R8, [SP,#0x48+var_44]; float
45CF9A:  VSTR            S16, [SP,#0x48+var_48]
45CF9E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45CFA2:  LDR.W           R1, =(aCred002 - 0x45CFAC); "CRED002"
45CFA6:  MOV             R0, R4; this
45CFA8:  ADD             R1, PC; "CRED002"
45CFAA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45CFAE:  MOV             R1, R10; float
45CFB0:  MOV             R2, R0; float
45CFB2:  MOV             R3, R5; unsigned __int16 *
45CFB4:  STR.W           R11, [SP,#0x48+var_44]; float
45CFB8:  VSTR            S16, [SP,#0x48+var_48]
45CFBC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45CFC0:  VLDR            S0, [SP,#0x48+var_3C]
45CFC4:  MOV             R0, R4; this
45CFC6:  LDR.W           R1, =(aCred003 - 0x45CFD2); "CRED003"
45CFCA:  VCVT.F32.U32    S0, S0
45CFCE:  ADD             R1, PC; "CRED003"
45CFD0:  VADD.F32        S0, S0, S18
45CFD4:  VCVT.U32.F32    S0, S0
45CFD8:  VSTR            S0, [SP,#0x48+var_3C]
45CFDC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45CFE0:  MOV             R1, R10; float
45CFE2:  MOV             R2, R0; float
45CFE4:  MOV             R3, R5; unsigned __int16 *
45CFE6:  STR.W           R8, [SP,#0x48+var_44]; float
45CFEA:  VSTR            S16, [SP,#0x48+var_48]
45CFEE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45CFF2:  LDR.W           R1, =(aCred004 - 0x45CFFC); "CRED004"
45CFF6:  MOV             R0, R4; this
45CFF8:  ADD             R1, PC; "CRED004"
45CFFA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45CFFE:  MOV             R1, R10; float
45D000:  MOV             R2, R0; float
45D002:  MOV             R3, R5; unsigned __int16 *
45D004:  STR.W           R11, [SP,#0x48+var_44]; float
45D008:  VSTR            S16, [SP,#0x48+var_48]
45D00C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D010:  VLDR            S0, [SP,#0x48+var_3C]
45D014:  MOV             R0, R4; this
45D016:  LDR.W           R1, =(aCred005 - 0x45D022); "CRED005"
45D01A:  VCVT.F32.U32    S0, S0
45D01E:  ADD             R1, PC; "CRED005"
45D020:  VADD.F32        S0, S0, S18
45D024:  VCVT.U32.F32    S0, S0
45D028:  VSTR            S0, [SP,#0x48+var_3C]
45D02C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D030:  MOV             R1, R10; float
45D032:  MOV             R2, R0; float
45D034:  MOV             R3, R5; unsigned __int16 *
45D036:  STR.W           R8, [SP,#0x48+var_44]; float
45D03A:  VSTR            S16, [SP,#0x48+var_48]
45D03E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D042:  LDR.W           R1, =(aCred006 - 0x45D04C); "CRED006"
45D046:  MOV             R0, R4; this
45D048:  ADD             R1, PC; "CRED006"
45D04A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D04E:  MOV             R1, R10; float
45D050:  MOV             R2, R0; float
45D052:  MOV             R3, R5; unsigned __int16 *
45D054:  STR.W           R11, [SP,#0x48+var_44]; float
45D058:  VSTR            S16, [SP,#0x48+var_48]
45D05C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D060:  LDR.W           R1, =(aCred007 - 0x45D06A); "CRED007"
45D064:  MOV             R0, R4; this
45D066:  ADD             R1, PC; "CRED007"
45D068:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D06C:  MOV             R1, R10; float
45D06E:  MOV             R2, R0; float
45D070:  MOV             R3, R5; unsigned __int16 *
45D072:  STR.W           R11, [SP,#0x48+var_44]; float
45D076:  VSTR            S16, [SP,#0x48+var_48]
45D07A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D07E:  VLDR            S0, [SP,#0x48+var_3C]
45D082:  MOV             R0, R4; this
45D084:  LDR.W           R1, =(aCred008 - 0x45D090); "CRED008"
45D088:  VCVT.F32.U32    S0, S0
45D08C:  ADD             R1, PC; "CRED008"
45D08E:  VADD.F32        S0, S0, S18
45D092:  VCVT.U32.F32    S0, S0
45D096:  VSTR            S0, [SP,#0x48+var_3C]
45D09A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D09E:  MOV             R1, R10; float
45D0A0:  MOV             R2, R0; float
45D0A2:  MOV             R3, R5; unsigned __int16 *
45D0A4:  STR.W           R8, [SP,#0x48+var_44]; float
45D0A8:  VSTR            S16, [SP,#0x48+var_48]
45D0AC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D0B0:  LDR.W           R1, =(aCred009 - 0x45D0BA); "CRED009"
45D0B4:  MOV             R0, R4; this
45D0B6:  ADD             R1, PC; "CRED009"
45D0B8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D0BC:  MOV             R1, R10; float
45D0BE:  MOV             R2, R0; float
45D0C0:  MOV             R3, R5; unsigned __int16 *
45D0C2:  STR.W           R11, [SP,#0x48+var_44]; float
45D0C6:  VSTR            S16, [SP,#0x48+var_48]
45D0CA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D0CE:  VLDR            S0, [SP,#0x48+var_3C]
45D0D2:  MOV             R0, R4; this
45D0D4:  LDR.W           R1, =(aCrd009a - 0x45D0E0); "CRD009A"
45D0D8:  VCVT.F32.U32    S0, S0
45D0DC:  ADD             R1, PC; "CRD009A"
45D0DE:  VADD.F32        S0, S0, S18
45D0E2:  VCVT.U32.F32    S0, S0
45D0E6:  VSTR            S0, [SP,#0x48+var_3C]
45D0EA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D0EE:  MOV             R1, R10; float
45D0F0:  MOV             R2, R0; float
45D0F2:  MOV             R3, R5; unsigned __int16 *
45D0F4:  STR.W           R8, [SP,#0x48+var_44]; float
45D0F8:  VSTR            S16, [SP,#0x48+var_48]
45D0FC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D100:  LDR.W           R1, =(aCrd009b - 0x45D10A); "CRD009B"
45D104:  MOV             R0, R4; this
45D106:  ADD             R1, PC; "CRD009B"
45D108:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D10C:  MOV             R1, R10; float
45D10E:  MOV             R2, R0; float
45D110:  MOV             R3, R5; unsigned __int16 *
45D112:  STR.W           R11, [SP,#0x48+var_44]; float
45D116:  VSTR            S16, [SP,#0x48+var_48]
45D11A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D11E:  LDR.W           R1, =(aCrd009c - 0x45D128); "CRD009C"
45D122:  MOV             R0, R4; this
45D124:  ADD             R1, PC; "CRD009C"
45D126:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D12A:  MOV             R1, R10; float
45D12C:  MOV             R2, R0; float
45D12E:  MOV             R3, R5; unsigned __int16 *
45D130:  STR.W           R11, [SP,#0x48+var_44]; float
45D134:  VSTR            S16, [SP,#0x48+var_48]
45D138:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D13C:  LDR.W           R1, =(aCrd009d - 0x45D146); "CRD009D"
45D140:  MOV             R0, R4; this
45D142:  ADD             R1, PC; "CRD009D"
45D144:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D148:  MOV             R1, R10; float
45D14A:  MOV             R2, R0; float
45D14C:  MOV             R3, R5; unsigned __int16 *
45D14E:  STR.W           R11, [SP,#0x48+var_44]; float
45D152:  VSTR            S16, [SP,#0x48+var_48]
45D156:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D15A:  VLDR            S0, [SP,#0x48+var_3C]
45D15E:  MOV             R0, R4; this
45D160:  LDR.W           R1, =(aCred019 - 0x45D16C); "CRED019"
45D164:  VCVT.F32.U32    S0, S0
45D168:  ADD             R1, PC; "CRED019"
45D16A:  VADD.F32        S0, S0, S18
45D16E:  VCVT.U32.F32    S0, S0
45D172:  VSTR            S0, [SP,#0x48+var_3C]
45D176:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D17A:  MOV             R1, R10; float
45D17C:  MOV             R2, R0; float
45D17E:  MOV             R3, R5; unsigned __int16 *
45D180:  STR.W           R8, [SP,#0x48+var_44]; float
45D184:  VSTR            S16, [SP,#0x48+var_48]
45D188:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D18C:  LDR.W           R1, =(aCred020 - 0x45D196); "CRED020"
45D190:  MOV             R0, R4; this
45D192:  ADD             R1, PC; "CRED020"
45D194:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D198:  MOV             R1, R10; float
45D19A:  MOV             R2, R0; float
45D19C:  MOV             R3, R5; unsigned __int16 *
45D19E:  STR.W           R11, [SP,#0x48+var_44]; float
45D1A2:  VSTR            S16, [SP,#0x48+var_48]
45D1A6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D1AA:  VLDR            S0, [SP,#0x48+var_3C]
45D1AE:  MOV             R0, R4; this
45D1B0:  LDR.W           R1, =(aCred010 - 0x45D1BC); "CRED010"
45D1B4:  VCVT.F32.U32    S0, S0
45D1B8:  ADD             R1, PC; "CRED010"
45D1BA:  VADD.F32        S0, S0, S18
45D1BE:  VCVT.U32.F32    S0, S0
45D1C2:  VSTR            S0, [SP,#0x48+var_3C]
45D1C6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D1CA:  MOV             R1, R10; float
45D1CC:  MOV             R2, R0; float
45D1CE:  MOV             R3, R5; unsigned __int16 *
45D1D0:  STR.W           R8, [SP,#0x48+var_44]; float
45D1D4:  VSTR            S16, [SP,#0x48+var_48]
45D1D8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D1DC:  LDR.W           R1, =(aCred011 - 0x45D1E6); "CRED011"
45D1E0:  MOV             R0, R4; this
45D1E2:  ADD             R1, PC; "CRED011"
45D1E4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D1E8:  MOV             R1, R10; float
45D1EA:  MOV             R2, R0; float
45D1EC:  MOV             R3, R5; unsigned __int16 *
45D1EE:  STR.W           R11, [SP,#0x48+var_44]; float
45D1F2:  VSTR            S16, [SP,#0x48+var_48]
45D1F6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D1FA:  VLDR            S0, [SP,#0x48+var_3C]
45D1FE:  MOV             R0, R4; this
45D200:  LDR.W           R1, =(aCred012 - 0x45D20C); "CRED012"
45D204:  VCVT.F32.U32    S0, S0
45D208:  ADD             R1, PC; "CRED012"
45D20A:  VADD.F32        S0, S0, S18
45D20E:  VCVT.U32.F32    S0, S0
45D212:  VSTR            S0, [SP,#0x48+var_3C]
45D216:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D21A:  MOV             R1, R10; float
45D21C:  MOV             R2, R0; float
45D21E:  MOV             R3, R5; unsigned __int16 *
45D220:  STR.W           R8, [SP,#0x48+var_44]; float
45D224:  VSTR            S16, [SP,#0x48+var_48]
45D228:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D22C:  LDR.W           R1, =(aCred013 - 0x45D236); "CRED013"
45D230:  MOV             R0, R4; this
45D232:  ADD             R1, PC; "CRED013"
45D234:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D238:  MOV             R1, R10; float
45D23A:  MOV             R2, R0; float
45D23C:  MOV             R3, R5; unsigned __int16 *
45D23E:  STR.W           R11, [SP,#0x48+var_44]; float
45D242:  VSTR            S16, [SP,#0x48+var_48]
45D246:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D24A:  LDR.W           R1, =(aCred014 - 0x45D254); "CRED014"
45D24E:  MOV             R0, R4; this
45D250:  ADD             R1, PC; "CRED014"
45D252:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D256:  MOV             R1, R10; float
45D258:  MOV             R2, R0; float
45D25A:  MOV             R3, R5; unsigned __int16 *
45D25C:  STR.W           R11, [SP,#0x48+var_44]; float
45D260:  VSTR            S16, [SP,#0x48+var_48]
45D264:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D268:  LDR.W           R1, =(aCrd014a - 0x45D272); "CRD014A"
45D26C:  MOV             R0, R4; this
45D26E:  ADD             R1, PC; "CRD014A"
45D270:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D274:  MOV             R1, R10; float
45D276:  MOV             R2, R0; float
45D278:  MOV             R3, R5; unsigned __int16 *
45D27A:  STR.W           R11, [SP,#0x48+var_44]; float
45D27E:  VSTR            S16, [SP,#0x48+var_48]
45D282:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D286:  LDR.W           R1, =(aCred015 - 0x45D290); "CRED015"
45D28A:  MOV             R0, R4; this
45D28C:  ADD             R1, PC; "CRED015"
45D28E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D292:  MOV             R1, R10; float
45D294:  MOV             R2, R0; float
45D296:  MOV             R3, R5; unsigned __int16 *
45D298:  STR.W           R11, [SP,#0x48+var_44]; float
45D29C:  VSTR            S16, [SP,#0x48+var_48]
45D2A0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D2A4:  VLDR            S0, [SP,#0x48+var_3C]
45D2A8:  MOV             R0, R4; this
45D2AA:  LDR.W           R1, =(aCred016 - 0x45D2B6); "CRED016"
45D2AE:  VCVT.F32.U32    S0, S0
45D2B2:  ADD             R1, PC; "CRED016"
45D2B4:  VADD.F32        S0, S0, S18
45D2B8:  VCVT.U32.F32    S0, S0
45D2BC:  VSTR            S0, [SP,#0x48+var_3C]
45D2C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D2C4:  MOV             R1, R10; float
45D2C6:  MOV             R2, R0; float
45D2C8:  MOV             R3, R5; unsigned __int16 *
45D2CA:  B.W             loc_45D2D8
45D2CE:  ALIGN 0x10
45D2D0:  DCFS 0.92
45D2D4:  DCFS 37.5
45D2D8:  STR.W           R8, [SP,#0x48+var_44]; float
45D2DC:  VSTR            S16, [SP,#0x48+var_48]
45D2E0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D2E4:  LDR.W           R1, =(aCrd016a - 0x45D2EE); "CRD016A"
45D2E8:  MOV             R0, R4; this
45D2EA:  ADD             R1, PC; "CRD016A"
45D2EC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D2F0:  MOV             R1, R10; float
45D2F2:  MOV             R2, R0; float
45D2F4:  MOV             R3, R5; unsigned __int16 *
45D2F6:  STR.W           R11, [SP,#0x48+var_44]; float
45D2FA:  VSTR            S16, [SP,#0x48+var_48]
45D2FE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D302:  LDR.W           R1, =(aCred017 - 0x45D30C); "CRED017"
45D306:  MOV             R0, R4; this
45D308:  ADD             R1, PC; "CRED017"
45D30A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D30E:  MOV             R1, R10; float
45D310:  MOV             R2, R0; float
45D312:  MOV             R3, R5; unsigned __int16 *
45D314:  STR.W           R11, [SP,#0x48+var_44]; float
45D318:  VSTR            S16, [SP,#0x48+var_48]
45D31C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D320:  LDR.W           R1, =(aCred018 - 0x45D32A); "CRED018"
45D324:  MOV             R0, R4; this
45D326:  ADD             R1, PC; "CRED018"
45D328:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D32C:  MOV             R1, R10; float
45D32E:  MOV             R2, R0; float
45D330:  MOV             R3, R5; unsigned __int16 *
45D332:  STR.W           R11, [SP,#0x48+var_44]; float
45D336:  VSTR            S16, [SP,#0x48+var_48]
45D33A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D33E:  VLDR            S0, [SP,#0x48+var_3C]
45D342:  MOV             R0, R4; this
45D344:  LDR.W           R1, =(aCred028 - 0x45D350); "CRED028"
45D348:  VCVT.F32.U32    S0, S0
45D34C:  ADD             R1, PC; "CRED028"
45D34E:  VADD.F32        S0, S0, S18
45D352:  VCVT.U32.F32    S0, S0
45D356:  VSTR            S0, [SP,#0x48+var_3C]
45D35A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D35E:  MOV             R1, R10; float
45D360:  MOV             R2, R0; float
45D362:  MOV             R3, R5; unsigned __int16 *
45D364:  STR.W           R8, [SP,#0x48+var_44]; float
45D368:  VSTR            S16, [SP,#0x48+var_48]
45D36C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D370:  LDR.W           R1, =(aCred029 - 0x45D37A); "CRED029"
45D374:  MOV             R0, R4; this
45D376:  ADD             R1, PC; "CRED029"
45D378:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D37C:  MOV             R1, R10; float
45D37E:  MOV             R2, R0; float
45D380:  MOV             R3, R5; unsigned __int16 *
45D382:  STR.W           R11, [SP,#0x48+var_44]; float
45D386:  VSTR            S16, [SP,#0x48+var_48]
45D38A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D38E:  VLDR            S0, [SP,#0x48+var_3C]
45D392:  MOV             R0, R4; this
45D394:  LDR.W           R1, =(aCred030 - 0x45D3A0); "CRED030"
45D398:  VCVT.F32.U32    S0, S0
45D39C:  ADD             R1, PC; "CRED030"
45D39E:  VADD.F32        S0, S0, S18
45D3A2:  VCVT.U32.F32    S0, S0
45D3A6:  VSTR            S0, [SP,#0x48+var_3C]
45D3AA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D3AE:  MOV             R1, R10; float
45D3B0:  MOV             R2, R0; float
45D3B2:  MOV             R3, R5; unsigned __int16 *
45D3B4:  STR.W           R8, [SP,#0x48+var_44]; float
45D3B8:  VSTR            S16, [SP,#0x48+var_48]
45D3BC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D3C0:  LDR.W           R1, =(aCred031 - 0x45D3CA); "CRED031"
45D3C4:  MOV             R0, R4; this
45D3C6:  ADD             R1, PC; "CRED031"
45D3C8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D3CC:  MOV             R1, R10; float
45D3CE:  MOV             R2, R0; float
45D3D0:  MOV             R3, R5; unsigned __int16 *
45D3D2:  STR.W           R11, [SP,#0x48+var_44]; float
45D3D6:  VSTR            S16, [SP,#0x48+var_48]
45D3DA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D3DE:  VLDR            S0, [SP,#0x48+var_3C]
45D3E2:  MOV             R0, R4; this
45D3E4:  LDR.W           R1, =(aCred032 - 0x45D3F0); "CRED032"
45D3E8:  VCVT.F32.U32    S0, S0
45D3EC:  ADD             R1, PC; "CRED032"
45D3EE:  VADD.F32        S0, S0, S18
45D3F2:  VCVT.U32.F32    S0, S0
45D3F6:  VSTR            S0, [SP,#0x48+var_3C]
45D3FA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D3FE:  MOV             R1, R10; float
45D400:  MOV             R2, R0; float
45D402:  MOV             R3, R5; unsigned __int16 *
45D404:  STR.W           R8, [SP,#0x48+var_44]; float
45D408:  VSTR            S16, [SP,#0x48+var_48]
45D40C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D410:  LDR.W           R1, =(aCred033 - 0x45D41A); "CRED033"
45D414:  MOV             R0, R4; this
45D416:  ADD             R1, PC; "CRED033"
45D418:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D41C:  MOV             R1, R10; float
45D41E:  MOV             R2, R0; float
45D420:  MOV             R3, R5; unsigned __int16 *
45D422:  STR.W           R11, [SP,#0x48+var_44]; float
45D426:  VSTR            S16, [SP,#0x48+var_48]
45D42A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D42E:  LDR.W           R1, =(aCred034 - 0x45D438); "CRED034"
45D432:  MOV             R0, R4; this
45D434:  ADD             R1, PC; "CRED034"
45D436:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D43A:  MOV             R1, R10; float
45D43C:  MOV             R2, R0; float
45D43E:  MOV             R3, R5; unsigned __int16 *
45D440:  STR.W           R11, [SP,#0x48+var_44]; float
45D444:  VSTR            S16, [SP,#0x48+var_48]
45D448:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D44C:  LDR.W           R1, =(aCred035 - 0x45D456); "CRED035"
45D450:  MOV             R0, R4; this
45D452:  ADD             R1, PC; "CRED035"
45D454:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D458:  MOV             R1, R10; float
45D45A:  MOV             R2, R0; float
45D45C:  MOV             R3, R5; unsigned __int16 *
45D45E:  STR.W           R11, [SP,#0x48+var_44]; float
45D462:  VSTR            S16, [SP,#0x48+var_48]
45D466:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D46A:  LDR.W           R1, =(aCred036 - 0x45D474); "CRED036"
45D46E:  MOV             R0, R4; this
45D470:  ADD             R1, PC; "CRED036"
45D472:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D476:  MOV             R1, R10; float
45D478:  MOV             R2, R0; float
45D47A:  MOV             R3, R5; unsigned __int16 *
45D47C:  STR.W           R11, [SP,#0x48+var_44]; float
45D480:  VSTR            S16, [SP,#0x48+var_48]
45D484:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D488:  VLDR            S0, [SP,#0x48+var_3C]
45D48C:  MOV             R0, R4; this
45D48E:  LDR.W           R1, =(aCred047 - 0x45D49A); "CRED047"
45D492:  VCVT.F32.U32    S0, S0
45D496:  ADD             R1, PC; "CRED047"
45D498:  VADD.F32        S0, S0, S18
45D49C:  VCVT.U32.F32    S0, S0
45D4A0:  VSTR            S0, [SP,#0x48+var_3C]
45D4A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D4A8:  MOV             R1, R10; float
45D4AA:  MOV             R2, R0; float
45D4AC:  MOV             R3, R5; unsigned __int16 *
45D4AE:  STR.W           R8, [SP,#0x48+var_44]; float
45D4B2:  VSTR            S16, [SP,#0x48+var_48]
45D4B6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D4BA:  LDR.W           R1, =(aCred048 - 0x45D4C4); "CRED048"
45D4BE:  MOV             R0, R4; this
45D4C0:  ADD             R1, PC; "CRED048"
45D4C2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D4C6:  MOV             R1, R10; float
45D4C8:  MOV             R2, R0; float
45D4CA:  MOV             R3, R5; unsigned __int16 *
45D4CC:  STR.W           R11, [SP,#0x48+var_44]; float
45D4D0:  VSTR            S16, [SP,#0x48+var_48]
45D4D4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D4D8:  VLDR            S0, [SP,#0x48+var_3C]
45D4DC:  MOV             R0, R4; this
45D4DE:  LDR.W           R1, =(aCred049 - 0x45D4EA); "CRED049"
45D4E2:  VCVT.F32.U32    S0, S0
45D4E6:  ADD             R1, PC; "CRED049"
45D4E8:  VADD.F32        S0, S0, S18
45D4EC:  VCVT.U32.F32    S0, S0
45D4F0:  VSTR            S0, [SP,#0x48+var_3C]
45D4F4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D4F8:  MOV             R1, R10; float
45D4FA:  MOV             R2, R0; float
45D4FC:  MOV             R3, R5; unsigned __int16 *
45D4FE:  STR.W           R8, [SP,#0x48+var_44]; float
45D502:  VSTR            S16, [SP,#0x48+var_48]
45D506:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D50A:  LDR.W           R1, =(aCred050 - 0x45D514); "CRED050"
45D50E:  MOV             R0, R4; this
45D510:  ADD             R1, PC; "CRED050"
45D512:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D516:  MOV             R1, R10; float
45D518:  MOV             R2, R0; float
45D51A:  MOV             R3, R5; unsigned __int16 *
45D51C:  STR.W           R11, [SP,#0x48+var_44]; float
45D520:  VSTR            S16, [SP,#0x48+var_48]
45D524:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D528:  LDR.W           R1, =(aCred051 - 0x45D532); "CRED051"
45D52C:  MOV             R0, R4; this
45D52E:  ADD             R1, PC; "CRED051"
45D530:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D534:  MOV             R1, R10; float
45D536:  MOV             R2, R0; float
45D538:  MOV             R3, R5; unsigned __int16 *
45D53A:  STR.W           R11, [SP,#0x48+var_44]; float
45D53E:  VSTR            S16, [SP,#0x48+var_48]
45D542:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D546:  LDR.W           R1, =(aCred052 - 0x45D550); "CRED052"
45D54A:  MOV             R0, R4; this
45D54C:  ADD             R1, PC; "CRED052"
45D54E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D552:  MOV             R1, R10; float
45D554:  MOV             R2, R0; float
45D556:  MOV             R3, R5; unsigned __int16 *
45D558:  STR.W           R11, [SP,#0x48+var_44]; float
45D55C:  VSTR            S16, [SP,#0x48+var_48]
45D560:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D564:  VLDR            S0, [SP,#0x48+var_3C]
45D568:  MOV             R0, R4; this
45D56A:  LDR.W           R1, =(aCred053 - 0x45D576); "CRED053"
45D56E:  VCVT.F32.U32    S0, S0
45D572:  ADD             R1, PC; "CRED053"
45D574:  VADD.F32        S0, S0, S18
45D578:  VCVT.U32.F32    S0, S0
45D57C:  VSTR            S0, [SP,#0x48+var_3C]
45D580:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D584:  MOV             R1, R10; float
45D586:  MOV             R2, R0; float
45D588:  MOV             R3, R5; unsigned __int16 *
45D58A:  STR.W           R8, [SP,#0x48+var_44]; float
45D58E:  VSTR            S16, [SP,#0x48+var_48]
45D592:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D596:  LDR.W           R1, =(aCred054 - 0x45D5A0); "CRED054"
45D59A:  MOV             R0, R4; this
45D59C:  ADD             R1, PC; "CRED054"
45D59E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D5A2:  MOV             R1, R10; float
45D5A4:  MOV             R2, R0; float
45D5A6:  MOV             R3, R5; unsigned __int16 *
45D5A8:  STR.W           R11, [SP,#0x48+var_44]; float
45D5AC:  VSTR            S16, [SP,#0x48+var_48]
45D5B0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D5B4:  VLDR            S0, [SP,#0x48+var_3C]
45D5B8:  MOV             R0, R4; this
45D5BA:  LDR.W           R1, =(aCred055 - 0x45D5C6); "CRED055"
45D5BE:  VCVT.F32.U32    S0, S0
45D5C2:  ADD             R1, PC; "CRED055"
45D5C4:  VADD.F32        S0, S0, S18
45D5C8:  VCVT.U32.F32    S0, S0
45D5CC:  VSTR            S0, [SP,#0x48+var_3C]
45D5D0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D5D4:  MOV             R1, R10; float
45D5D6:  MOV             R2, R0; float
45D5D8:  MOV             R3, R5; unsigned __int16 *
45D5DA:  STR.W           R8, [SP,#0x48+var_44]; float
45D5DE:  VSTR            S16, [SP,#0x48+var_48]
45D5E2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D5E6:  LDR.W           R1, =(aCred056 - 0x45D5F0); "CRED056"
45D5EA:  MOV             R0, R4; this
45D5EC:  ADD             R1, PC; "CRED056"
45D5EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D5F2:  MOV             R1, R10; float
45D5F4:  MOV             R2, R0; float
45D5F6:  MOV             R3, R5; unsigned __int16 *
45D5F8:  STR.W           R11, [SP,#0x48+var_44]; float
45D5FC:  VSTR            S16, [SP,#0x48+var_48]
45D600:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D604:  LDR.W           R1, =(aCred057 - 0x45D60E); "CRED057"
45D608:  MOV             R0, R4; this
45D60A:  ADD             R1, PC; "CRED057"
45D60C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D610:  MOV             R1, R10; float
45D612:  MOV             R2, R0; float
45D614:  MOV             R3, R5; unsigned __int16 *
45D616:  STR.W           R11, [SP,#0x48+var_44]; float
45D61A:  VSTR            S16, [SP,#0x48+var_48]
45D61E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D622:  VLDR            S0, [SP,#0x48+var_3C]
45D626:  MOV             R0, R4; this
45D628:  LDR.W           R1, =(aCred058 - 0x45D634); "CRED058"
45D62C:  VCVT.F32.U32    S0, S0
45D630:  ADD             R1, PC; "CRED058"
45D632:  VADD.F32        S0, S0, S18
45D636:  VCVT.U32.F32    S0, S0
45D63A:  VSTR            S0, [SP,#0x48+var_3C]
45D63E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D642:  MOV             R1, R10; float
45D644:  MOV             R2, R0; float
45D646:  MOV             R3, R5; unsigned __int16 *
45D648:  STR.W           R8, [SP,#0x48+var_44]; float
45D64C:  VSTR            S16, [SP,#0x48+var_48]
45D650:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D654:  LDR.W           R1, =(aCred059 - 0x45D65E); "CRED059"
45D658:  MOV             R0, R4; this
45D65A:  ADD             R1, PC; "CRED059"
45D65C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D660:  MOV             R1, R10; float
45D662:  MOV             R2, R0; float
45D664:  MOV             R3, R5; unsigned __int16 *
45D666:  STR.W           R11, [SP,#0x48+var_44]; float
45D66A:  VSTR            S16, [SP,#0x48+var_48]
45D66E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D672:  VLDR            S0, [SP,#0x48+var_3C]
45D676:  MOV             R0, R4; this
45D678:  LDR.W           R1, =(aCred060 - 0x45D684); "CRED060"
45D67C:  VCVT.F32.U32    S0, S0
45D680:  ADD             R1, PC; "CRED060"
45D682:  VADD.F32        S0, S0, S18
45D686:  VCVT.U32.F32    S0, S0
45D68A:  VSTR            S0, [SP,#0x48+var_3C]
45D68E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D692:  MOV             R1, R10; float
45D694:  MOV             R2, R0; float
45D696:  MOV             R3, R5; unsigned __int16 *
45D698:  STR.W           R8, [SP,#0x48+var_44]; float
45D69C:  VSTR            S16, [SP,#0x48+var_48]
45D6A0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D6A4:  LDR.W           R1, =(aCred061 - 0x45D6AE); "CRED061"
45D6A8:  MOV             R0, R4; this
45D6AA:  ADD             R1, PC; "CRED061"
45D6AC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D6B0:  MOV             R1, R10; float
45D6B2:  MOV             R2, R0; float
45D6B4:  MOV             R3, R5; unsigned __int16 *
45D6B6:  STR.W           R11, [SP,#0x48+var_44]; float
45D6BA:  VSTR            S16, [SP,#0x48+var_48]
45D6BE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D6C2:  LDR.W           R1, =(aCred062 - 0x45D6CC); "CRED062"
45D6C6:  MOV             R0, R4; this
45D6C8:  ADD             R1, PC; "CRED062"
45D6CA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D6CE:  MOV             R1, R10; float
45D6D0:  MOV             R2, R0; float
45D6D2:  MOV             R3, R5; unsigned __int16 *
45D6D4:  STR.W           R11, [SP,#0x48+var_44]; float
45D6D8:  VSTR            S16, [SP,#0x48+var_48]
45D6DC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D6E0:  LDR.W           R1, =(aCred063 - 0x45D6EA); "CRED063"
45D6E4:  MOV             R0, R4; this
45D6E6:  ADD             R1, PC; "CRED063"
45D6E8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D6EC:  MOV             R1, R10; float
45D6EE:  MOV             R2, R0; float
45D6F0:  MOV             R3, R5; unsigned __int16 *
45D6F2:  STR.W           R11, [SP,#0x48+var_44]; float
45D6F6:  VSTR            S16, [SP,#0x48+var_48]
45D6FA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D6FE:  VLDR            S0, [SP,#0x48+var_3C]
45D702:  MOV             R0, R4; this
45D704:  LDR.W           R1, =(aCred021 - 0x45D710); "CRED021"
45D708:  VCVT.F32.U32    S0, S0
45D70C:  ADD             R1, PC; "CRED021"
45D70E:  VADD.F32        S0, S0, S18
45D712:  VCVT.U32.F32    S0, S0
45D716:  VSTR            S0, [SP,#0x48+var_3C]
45D71A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D71E:  MOV             R1, R10; float
45D720:  MOV             R2, R0; float
45D722:  MOV             R3, R5; unsigned __int16 *
45D724:  STR.W           R8, [SP,#0x48+var_44]; float
45D728:  VSTR            S16, [SP,#0x48+var_48]
45D72C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D730:  LDR.W           R1, =(aCred022 - 0x45D73A); "CRED022"
45D734:  MOV             R0, R4; this
45D736:  ADD             R1, PC; "CRED022"
45D738:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D73C:  MOV             R1, R10; float
45D73E:  MOV             R2, R0; float
45D740:  MOV             R3, R5; unsigned __int16 *
45D742:  STR.W           R11, [SP,#0x48+var_44]; float
45D746:  VSTR            S16, [SP,#0x48+var_48]
45D74A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D74E:  VLDR            S0, [SP,#0x48+var_3C]
45D752:  MOV             R0, R4; this
45D754:  LDR.W           R1, =(aCred023 - 0x45D760); "CRED023"
45D758:  VCVT.F32.U32    S0, S0
45D75C:  ADD             R1, PC; "CRED023"
45D75E:  VADD.F32        S0, S0, S18
45D762:  VCVT.U32.F32    S0, S0
45D766:  VSTR            S0, [SP,#0x48+var_3C]
45D76A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D76E:  MOV             R1, R10; float
45D770:  MOV             R2, R0; float
45D772:  MOV             R3, R5; unsigned __int16 *
45D774:  STR.W           R8, [SP,#0x48+var_44]; float
45D778:  VSTR            S16, [SP,#0x48+var_48]
45D77C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D780:  LDR.W           R1, =(aCred024 - 0x45D78A); "CRED024"
45D784:  MOV             R0, R4; this
45D786:  ADD             R1, PC; "CRED024"
45D788:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D78C:  MOV             R1, R10; float
45D78E:  MOV             R2, R0; float
45D790:  MOV             R3, R5; unsigned __int16 *
45D792:  STR.W           R11, [SP,#0x48+var_44]; float
45D796:  VSTR            S16, [SP,#0x48+var_48]
45D79A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D79E:  LDR.W           R1, =(aCred025 - 0x45D7A8); "CRED025"
45D7A2:  MOV             R0, R4; this
45D7A4:  ADD             R1, PC; "CRED025"
45D7A6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D7AA:  MOV             R1, R10; float
45D7AC:  MOV             R2, R0; float
45D7AE:  MOV             R3, R5; unsigned __int16 *
45D7B0:  STR.W           R11, [SP,#0x48+var_44]; float
45D7B4:  VSTR            S16, [SP,#0x48+var_48]
45D7B8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D7BC:  LDR.W           R1, =(aCred026 - 0x45D7C6); "CRED026"
45D7C0:  MOV             R0, R4; this
45D7C2:  ADD             R1, PC; "CRED026"
45D7C4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D7C8:  MOV             R1, R10; float
45D7CA:  MOV             R2, R0; float
45D7CC:  MOV             R3, R5; unsigned __int16 *
45D7CE:  STR.W           R11, [SP,#0x48+var_44]; float
45D7D2:  VSTR            S16, [SP,#0x48+var_48]
45D7D6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D7DA:  LDR.W           R1, =(aCred027 - 0x45D7E4); "CRED027"
45D7DE:  MOV             R0, R4; this
45D7E0:  ADD             R1, PC; "CRED027"
45D7E2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D7E6:  MOV             R1, R10; float
45D7E8:  MOV             R2, R0; float
45D7EA:  MOV             R3, R5; unsigned __int16 *
45D7EC:  STR.W           R11, [SP,#0x48+var_44]; float
45D7F0:  VSTR            S16, [SP,#0x48+var_48]
45D7F4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D7F8:  VLDR            S0, [SP,#0x48+var_3C]
45D7FC:  MOV             R0, R4; this
45D7FE:  LDR.W           R1, =(aCred064 - 0x45D80A); "CRED064"
45D802:  VCVT.F32.U32    S0, S0
45D806:  ADD             R1, PC; "CRED064"
45D808:  VADD.F32        S0, S0, S18
45D80C:  VCVT.U32.F32    S0, S0
45D810:  VSTR            S0, [SP,#0x48+var_3C]
45D814:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D818:  MOV             R1, R10; float
45D81A:  MOV             R2, R0; float
45D81C:  MOV             R3, R5; unsigned __int16 *
45D81E:  STR.W           R8, [SP,#0x48+var_44]; float
45D822:  VSTR            S16, [SP,#0x48+var_48]
45D826:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D82A:  LDR.W           R1, =(aCred065 - 0x45D834); "CRED065"
45D82E:  MOV             R0, R4; this
45D830:  ADD             R1, PC; "CRED065"
45D832:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D836:  MOV             R1, R10; float
45D838:  MOV             R2, R0; float
45D83A:  MOV             R3, R5; unsigned __int16 *
45D83C:  STR.W           R11, [SP,#0x48+var_44]; float
45D840:  VSTR            S16, [SP,#0x48+var_48]
45D844:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D848:  VLDR            S0, [SP,#0x48+var_3C]
45D84C:  MOV             R0, R4; this
45D84E:  LDR.W           R1, =(aCred066 - 0x45D85A); "CRED066"
45D852:  VCVT.F32.U32    S0, S0
45D856:  ADD             R1, PC; "CRED066"
45D858:  VADD.F32        S0, S0, S18
45D85C:  VCVT.U32.F32    S0, S0
45D860:  VSTR            S0, [SP,#0x48+var_3C]
45D864:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D868:  MOV             R1, R10; float
45D86A:  MOV             R2, R0; float
45D86C:  MOV             R3, R5; unsigned __int16 *
45D86E:  STR.W           R8, [SP,#0x48+var_44]; float
45D872:  VSTR            S16, [SP,#0x48+var_48]
45D876:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D87A:  LDR.W           R1, =(aCred067 - 0x45D884); "CRED067"
45D87E:  MOV             R0, R4; this
45D880:  ADD             R1, PC; "CRED067"
45D882:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D886:  MOV             R1, R10; float
45D888:  MOV             R2, R0; float
45D88A:  MOV             R3, R5; unsigned __int16 *
45D88C:  STR.W           R11, [SP,#0x48+var_44]; float
45D890:  VSTR            S16, [SP,#0x48+var_48]
45D894:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D898:  LDR.W           R1, =(aCred068 - 0x45D8A2); "CRED068"
45D89C:  MOV             R0, R4; this
45D89E:  ADD             R1, PC; "CRED068"
45D8A0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D8A4:  MOV             R1, R10; float
45D8A6:  MOV             R2, R0; float
45D8A8:  MOV             R3, R5; unsigned __int16 *
45D8AA:  STR.W           R11, [SP,#0x48+var_44]; float
45D8AE:  VSTR            S16, [SP,#0x48+var_48]
45D8B2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D8B6:  VLDR            S0, [SP,#0x48+var_3C]
45D8BA:  MOV             R0, R4; this
45D8BC:  LDR.W           R1, =(aCred069 - 0x45D8C8); "CRED069"
45D8C0:  VCVT.F32.U32    S0, S0
45D8C4:  ADD             R1, PC; "CRED069"
45D8C6:  VADD.F32        S0, S0, S18
45D8CA:  VCVT.U32.F32    S0, S0
45D8CE:  VSTR            S0, [SP,#0x48+var_3C]
45D8D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D8D6:  MOV             R1, R10; float
45D8D8:  MOV             R2, R0; float
45D8DA:  MOV             R3, R5; unsigned __int16 *
45D8DC:  STR.W           R8, [SP,#0x48+var_44]; float
45D8E0:  VSTR            S16, [SP,#0x48+var_48]
45D8E4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D8E8:  LDR.W           R1, =(aCred070 - 0x45D8F2); "CRED070"
45D8EC:  MOV             R0, R4; this
45D8EE:  ADD             R1, PC; "CRED070"
45D8F0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D8F4:  MOV             R1, R10; float
45D8F6:  MOV             R2, R0; float
45D8F8:  MOV             R3, R5; unsigned __int16 *
45D8FA:  STR.W           R11, [SP,#0x48+var_44]; float
45D8FE:  VSTR            S16, [SP,#0x48+var_48]
45D902:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D906:  VLDR            S0, [SP,#0x48+var_3C]
45D90A:  MOV             R0, R4; this
45D90C:  LDR.W           R1, =(aCred071 - 0x45D918); "CRED071"
45D910:  VCVT.F32.U32    S0, S0
45D914:  ADD             R1, PC; "CRED071"
45D916:  VADD.F32        S0, S0, S18
45D91A:  VCVT.U32.F32    S0, S0
45D91E:  VSTR            S0, [SP,#0x48+var_3C]
45D922:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D926:  MOV             R1, R10; float
45D928:  MOV             R2, R0; float
45D92A:  MOV             R3, R5; unsigned __int16 *
45D92C:  STR.W           R8, [SP,#0x48+var_44]; float
45D930:  VSTR            S16, [SP,#0x48+var_48]
45D934:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D938:  LDR.W           R1, =(aCred072 - 0x45D942); "CRED072"
45D93C:  MOV             R0, R4; this
45D93E:  ADD             R1, PC; "CRED072"
45D940:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D944:  MOV             R1, R10; float
45D946:  MOV             R2, R0; float
45D948:  MOV             R3, R5; unsigned __int16 *
45D94A:  STR.W           R11, [SP,#0x48+var_44]; float
45D94E:  VSTR            S16, [SP,#0x48+var_48]
45D952:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D956:  LDR.W           R1, =(aCred073 - 0x45D960); "CRED073"
45D95A:  MOV             R0, R4; this
45D95C:  ADD             R1, PC; "CRED073"
45D95E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D962:  MOV             R1, R10; float
45D964:  MOV             R2, R0; float
45D966:  MOV             R3, R5; unsigned __int16 *
45D968:  STR.W           R11, [SP,#0x48+var_44]; float
45D96C:  VSTR            S16, [SP,#0x48+var_48]
45D970:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D974:  LDR.W           R1, =(aCred074 - 0x45D97E); "CRED074"
45D978:  MOV             R0, R4; this
45D97A:  ADD             R1, PC; "CRED074"
45D97C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D980:  MOV             R1, R10; float
45D982:  MOV             R2, R0; float
45D984:  MOV             R3, R5; unsigned __int16 *
45D986:  STR.W           R11, [SP,#0x48+var_44]; float
45D98A:  VSTR            S16, [SP,#0x48+var_48]
45D98E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D992:  LDR.W           R1, =(aCred075 - 0x45D99C); "CRED075"
45D996:  MOV             R0, R4; this
45D998:  ADD             R1, PC; "CRED075"
45D99A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D99E:  MOV             R1, R10; float
45D9A0:  MOV             R2, R0; float
45D9A2:  MOV             R3, R5; unsigned __int16 *
45D9A4:  STR.W           R11, [SP,#0x48+var_44]; float
45D9A8:  VSTR            S16, [SP,#0x48+var_48]
45D9AC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D9B0:  VLDR            S0, [SP,#0x48+var_3C]
45D9B4:  MOV             R0, R4; this
45D9B6:  LDR.W           R1, =(aCred037 - 0x45D9C2); "CRED037"
45D9BA:  VCVT.F32.U32    S0, S0
45D9BE:  ADD             R1, PC; "CRED037"
45D9C0:  VADD.F32        S0, S0, S18
45D9C4:  VCVT.U32.F32    S0, S0
45D9C8:  VSTR            S0, [SP,#0x48+var_3C]
45D9CC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D9D0:  MOV             R1, R10; float
45D9D2:  MOV             R2, R0; float
45D9D4:  MOV             R3, R5; unsigned __int16 *
45D9D6:  STR.W           R8, [SP,#0x48+var_44]; float
45D9DA:  VSTR            S16, [SP,#0x48+var_48]
45D9DE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45D9E2:  LDR.W           R1, =(aCred038 - 0x45D9EC); "CRED038"
45D9E6:  MOV             R0, R4; this
45D9E8:  ADD             R1, PC; "CRED038"
45D9EA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45D9EE:  MOV             R1, R10; float
45D9F0:  MOV             R2, R0; float
45D9F2:  MOV             R3, R5; unsigned __int16 *
45D9F4:  STR.W           R11, [SP,#0x48+var_44]; float
45D9F8:  VSTR            S16, [SP,#0x48+var_48]
45D9FC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DA00:  VLDR            S0, [SP,#0x48+var_3C]
45DA04:  MOV             R0, R4; this
45DA06:  LDR.W           R1, =(aCred039 - 0x45DA12); "CRED039"
45DA0A:  VCVT.F32.U32    S0, S0
45DA0E:  ADD             R1, PC; "CRED039"
45DA10:  VADD.F32        S0, S0, S18
45DA14:  VCVT.U32.F32    S0, S0
45DA18:  VSTR            S0, [SP,#0x48+var_3C]
45DA1C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DA20:  MOV             R1, R10; float
45DA22:  MOV             R2, R0; float
45DA24:  MOV             R3, R5; unsigned __int16 *
45DA26:  STR.W           R8, [SP,#0x48+var_44]; float
45DA2A:  VSTR            S16, [SP,#0x48+var_48]
45DA2E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DA32:  LDR.W           R1, =(aCred040 - 0x45DA3C); "CRED040"
45DA36:  MOV             R0, R4; this
45DA38:  ADD             R1, PC; "CRED040"
45DA3A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DA3E:  MOV             R1, R10; float
45DA40:  MOV             R2, R0; float
45DA42:  MOV             R3, R5; unsigned __int16 *
45DA44:  STR.W           R11, [SP,#0x48+var_44]; float
45DA48:  VSTR            S16, [SP,#0x48+var_48]
45DA4C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DA50:  VLDR            S0, [SP,#0x48+var_3C]
45DA54:  MOV             R0, R4; this
45DA56:  LDR.W           R1, =(aCred041 - 0x45DA62); "CRED041"
45DA5A:  VCVT.F32.U32    S0, S0
45DA5E:  ADD             R1, PC; "CRED041"
45DA60:  VADD.F32        S0, S0, S18
45DA64:  VCVT.U32.F32    S0, S0
45DA68:  VSTR            S0, [SP,#0x48+var_3C]
45DA6C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DA70:  MOV             R1, R10; float
45DA72:  MOV             R2, R0; float
45DA74:  MOV             R3, R5; unsigned __int16 *
45DA76:  STR.W           R8, [SP,#0x48+var_44]; float
45DA7A:  VSTR            S16, [SP,#0x48+var_48]
45DA7E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DA82:  LDR.W           R1, =(aCred042 - 0x45DA8C); "CRED042"
45DA86:  MOV             R0, R4; this
45DA88:  ADD             R1, PC; "CRED042"
45DA8A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DA8E:  MOV             R1, R10; float
45DA90:  MOV             R2, R0; float
45DA92:  MOV             R3, R5; unsigned __int16 *
45DA94:  STR.W           R11, [SP,#0x48+var_44]; float
45DA98:  VSTR            S16, [SP,#0x48+var_48]
45DA9C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DAA0:  LDR.W           R1, =(aCred043 - 0x45DAAA); "CRED043"
45DAA4:  MOV             R0, R4; this
45DAA6:  ADD             R1, PC; "CRED043"
45DAA8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DAAC:  MOV             R1, R10; float
45DAAE:  MOV             R2, R0; float
45DAB0:  MOV             R3, R5; unsigned __int16 *
45DAB2:  STR.W           R11, [SP,#0x48+var_44]; float
45DAB6:  VSTR            S16, [SP,#0x48+var_48]
45DABA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DABE:  VLDR            S0, [SP,#0x48+var_3C]
45DAC2:  MOV             R0, R4; this
45DAC4:  LDR.W           R1, =(aCred044 - 0x45DAD0); "CRED044"
45DAC8:  VCVT.F32.U32    S0, S0
45DACC:  ADD             R1, PC; "CRED044"
45DACE:  VADD.F32        S0, S0, S18
45DAD2:  VCVT.U32.F32    S0, S0
45DAD6:  VSTR            S0, [SP,#0x48+var_3C]
45DADA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DADE:  MOV             R1, R10; float
45DAE0:  MOV             R2, R0; float
45DAE2:  MOV             R3, R5; unsigned __int16 *
45DAE4:  STR.W           R8, [SP,#0x48+var_44]; float
45DAE8:  VSTR            S16, [SP,#0x48+var_48]
45DAEC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DAF0:  LDR.W           R1, =(aCred991 - 0x45DAFA); "CRED991"
45DAF4:  MOV             R0, R4; this
45DAF6:  ADD             R1, PC; "CRED991"
45DAF8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DAFC:  MOV             R1, R10; float
45DAFE:  MOV             R2, R0; float
45DB00:  MOV             R3, R5; unsigned __int16 *
45DB02:  STR.W           R11, [SP,#0x48+var_44]; float
45DB06:  VSTR            S16, [SP,#0x48+var_48]
45DB0A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DB0E:  LDR.W           R1, =(aCred045 - 0x45DB18); "CRED045"
45DB12:  MOV             R0, R4; this
45DB14:  ADD             R1, PC; "CRED045"
45DB16:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DB1A:  MOV             R1, R10; float
45DB1C:  MOV             R2, R0; float
45DB1E:  MOV             R3, R5; unsigned __int16 *
45DB20:  STR.W           R11, [SP,#0x48+var_44]; float
45DB24:  VSTR            S16, [SP,#0x48+var_48]
45DB28:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DB2C:  LDR.W           R1, =(aCred046 - 0x45DB36); "CRED046"
45DB30:  MOV             R0, R4; this
45DB32:  ADD             R1, PC; "CRED046"
45DB34:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DB38:  MOV             R1, R10; float
45DB3A:  MOV             R2, R0; float
45DB3C:  MOV             R3, R5; unsigned __int16 *
45DB3E:  STR.W           R11, [SP,#0x48+var_44]; float
45DB42:  VSTR            S16, [SP,#0x48+var_48]
45DB46:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DB4A:  VLDR            S0, [SP,#0x48+var_3C]
45DB4E:  MOV             R0, R4; this
45DB50:  LDR.W           R1, =(aCred076 - 0x45DB5C); "CRED076"
45DB54:  VCVT.F32.U32    S0, S0
45DB58:  ADD             R1, PC; "CRED076"
45DB5A:  VADD.F32        S0, S0, S18
45DB5E:  VCVT.U32.F32    S0, S0
45DB62:  VSTR            S0, [SP,#0x48+var_3C]
45DB66:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DB6A:  MOV             R1, R10; float
45DB6C:  MOV             R2, R0; float
45DB6E:  MOV             R3, R5; unsigned __int16 *
45DB70:  STR.W           R8, [SP,#0x48+var_44]; float
45DB74:  VSTR            S16, [SP,#0x48+var_48]
45DB78:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DB7C:  LDR.W           R1, =(aCred077 - 0x45DB86); "CRED077"
45DB80:  MOV             R0, R4; this
45DB82:  ADD             R1, PC; "CRED077"
45DB84:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DB88:  MOV             R1, R10; float
45DB8A:  MOV             R2, R0; float
45DB8C:  MOV             R3, R5; unsigned __int16 *
45DB8E:  STR.W           R11, [SP,#0x48+var_44]; float
45DB92:  VSTR            S16, [SP,#0x48+var_48]
45DB96:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DB9A:  LDR.W           R1, =(aCred078 - 0x45DBA4); "CRED078"
45DB9E:  MOV             R0, R4; this
45DBA0:  ADD             R1, PC; "CRED078"
45DBA2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DBA6:  MOV             R1, R10; float
45DBA8:  MOV             R2, R0; float
45DBAA:  MOV             R3, R5; unsigned __int16 *
45DBAC:  STR.W           R11, [SP,#0x48+var_44]; float
45DBB0:  VSTR            S16, [SP,#0x48+var_48]
45DBB4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DBB8:  LDR.W           R1, =(aCred079 - 0x45DBC2); "CRED079"
45DBBC:  MOV             R0, R4; this
45DBBE:  ADD             R1, PC; "CRED079"
45DBC0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DBC4:  MOV             R1, R10; float
45DBC6:  MOV             R2, R0; float
45DBC8:  MOV             R3, R5; unsigned __int16 *
45DBCA:  STR.W           R11, [SP,#0x48+var_44]; float
45DBCE:  VSTR            S16, [SP,#0x48+var_48]
45DBD2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DBD6:  LDR.W           R1, =(aCred080 - 0x45DBE0); "CRED080"
45DBDA:  MOV             R0, R4; this
45DBDC:  ADD             R1, PC; "CRED080"
45DBDE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DBE2:  MOV             R1, R10; float
45DBE4:  MOV             R2, R0; float
45DBE6:  MOV             R3, R5; unsigned __int16 *
45DBE8:  STR.W           R11, [SP,#0x48+var_44]; float
45DBEC:  VSTR            S16, [SP,#0x48+var_48]
45DBF0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DBF4:  LDR.W           R1, =(aCred081 - 0x45DBFE); "CRED081"
45DBF8:  MOV             R0, R4; this
45DBFA:  ADD             R1, PC; "CRED081"
45DBFC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DC00:  MOV             R1, R10; float
45DC02:  MOV             R2, R0; float
45DC04:  MOV             R3, R5; unsigned __int16 *
45DC06:  STR.W           R11, [SP,#0x48+var_44]; float
45DC0A:  VSTR            S16, [SP,#0x48+var_48]
45DC0E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DC12:  LDR.W           R1, =(aCred100 - 0x45DC1C); "CRED100"
45DC16:  MOV             R0, R4; this
45DC18:  ADD             R1, PC; "CRED100"
45DC1A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DC1E:  MOV             R1, R10; float
45DC20:  MOV             R2, R0; float
45DC22:  MOV             R3, R5; unsigned __int16 *
45DC24:  STR.W           R11, [SP,#0x48+var_44]; float
45DC28:  VSTR            S16, [SP,#0x48+var_48]
45DC2C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DC30:  LDR             R1, =(aCred082 - 0x45DC38); "CRED082"
45DC32:  MOV             R0, R4; this
45DC34:  ADD             R1, PC; "CRED082"
45DC36:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DC3A:  MOV             R1, R10; float
45DC3C:  MOV             R2, R0; float
45DC3E:  MOV             R3, R5; unsigned __int16 *
45DC40:  STR.W           R11, [SP,#0x48+var_44]; float
45DC44:  VSTR            S16, [SP,#0x48+var_48]
45DC48:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DC4C:  LDR             R1, =(aCred083 - 0x45DC54); "CRED083"
45DC4E:  MOV             R0, R4; this
45DC50:  ADD             R1, PC; "CRED083"
45DC52:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DC56:  MOV             R1, R10; float
45DC58:  MOV             R2, R0; float
45DC5A:  MOV             R3, R5; unsigned __int16 *
45DC5C:  STR.W           R11, [SP,#0x48+var_44]; float
45DC60:  VSTR            S16, [SP,#0x48+var_48]
45DC64:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DC68:  LDR             R1, =(aCred084 - 0x45DC70); "CRED084"
45DC6A:  MOV             R0, R4; this
45DC6C:  ADD             R1, PC; "CRED084"
45DC6E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DC72:  MOV             R1, R10; float
45DC74:  MOV             R2, R0; float
45DC76:  MOV             R3, R5; unsigned __int16 *
45DC78:  STR.W           R11, [SP,#0x48+var_44]; float
45DC7C:  VSTR            S16, [SP,#0x48+var_48]
45DC80:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DC84:  LDR             R1, =(aCred085 - 0x45DC8C); "CRED085"
45DC86:  MOV             R0, R4; this
45DC88:  ADD             R1, PC; "CRED085"
45DC8A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DC8E:  MOV             R1, R10; float
45DC90:  MOV             R2, R0; float
45DC92:  MOV             R3, R5; unsigned __int16 *
45DC94:  STR.W           R11, [SP,#0x48+var_44]; float
45DC98:  VSTR            S16, [SP,#0x48+var_48]
45DC9C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DCA0:  LDR             R1, =(aCred086 - 0x45DCA8); "CRED086"
45DCA2:  MOV             R0, R4; this
45DCA4:  ADD             R1, PC; "CRED086"
45DCA6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DCAA:  MOV             R1, R10; float
45DCAC:  MOV             R2, R0; float
45DCAE:  MOV             R3, R5; unsigned __int16 *
45DCB0:  STR.W           R11, [SP,#0x48+var_44]; float
45DCB4:  VSTR            S16, [SP,#0x48+var_48]
45DCB8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DCBC:  LDR             R1, =(aCred087 - 0x45DCC4); "CRED087"
45DCBE:  MOV             R0, R4; this
45DCC0:  ADD             R1, PC; "CRED087"
45DCC2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DCC6:  MOV             R1, R10; float
45DCC8:  MOV             R2, R0; float
45DCCA:  MOV             R3, R5; unsigned __int16 *
45DCCC:  STR.W           R11, [SP,#0x48+var_44]; float
45DCD0:  VSTR            S16, [SP,#0x48+var_48]
45DCD4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DCD8:  VLDR            S0, [SP,#0x48+var_3C]
45DCDC:  MOV             R0, R4; this
45DCDE:  LDR             R1, =(aCred088 - 0x45DCE8); "CRED088"
45DCE0:  VCVT.F32.U32    S0, S0
45DCE4:  ADD             R1, PC; "CRED088"
45DCE6:  VADD.F32        S0, S0, S18
45DCEA:  VCVT.U32.F32    S0, S0
45DCEE:  VSTR            S0, [SP,#0x48+var_3C]
45DCF2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DCF6:  MOV             R1, R10; float
45DCF8:  MOV             R2, R0; float
45DCFA:  MOV             R3, R5; unsigned __int16 *
45DCFC:  STR.W           R8, [SP,#0x48+var_44]; float
45DD00:  VSTR            S16, [SP,#0x48+var_48]
45DD04:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DD08:  LDR             R1, =(aCred089 - 0x45DD10); "CRED089"
45DD0A:  MOV             R0, R4; this
45DD0C:  ADD             R1, PC; "CRED089"
45DD0E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DD12:  MOV             R1, R10; float
45DD14:  MOV             R2, R0; float
45DD16:  MOV             R3, R5; unsigned __int16 *
45DD18:  STR.W           R11, [SP,#0x48+var_44]; float
45DD1C:  VSTR            S16, [SP,#0x48+var_48]
45DD20:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DD24:  LDR             R1, =(aCred090 - 0x45DD2C); "CRED090"
45DD26:  MOV             R0, R4; this
45DD28:  ADD             R1, PC; "CRED090"
45DD2A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DD2E:  MOV             R1, R10; float
45DD30:  MOV             R2, R0; float
45DD32:  MOV             R3, R5; unsigned __int16 *
45DD34:  STR.W           R11, [SP,#0x48+var_44]; float
45DD38:  VSTR            S16, [SP,#0x48+var_48]
45DD3C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DD40:  LDR             R1, =(aCred091 - 0x45DD48); "CRED091"
45DD42:  MOV             R0, R4; this
45DD44:  ADD             R1, PC; "CRED091"
45DD46:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DD4A:  MOV             R1, R10; float
45DD4C:  MOV             R2, R0; float
45DD4E:  MOV             R3, R5; unsigned __int16 *
45DD50:  STR.W           R11, [SP,#0x48+var_44]; float
45DD54:  VSTR            S16, [SP,#0x48+var_48]
45DD58:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DD5C:  LDR             R1, =(aCred092 - 0x45DD64); "CRED092"
45DD5E:  MOV             R0, R4; this
45DD60:  ADD             R1, PC; "CRED092"
45DD62:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DD66:  MOV             R1, R10; float
45DD68:  MOV             R2, R0; float
45DD6A:  MOV             R3, R5; unsigned __int16 *
45DD6C:  STR.W           R11, [SP,#0x48+var_44]; float
45DD70:  VSTR            S16, [SP,#0x48+var_48]
45DD74:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DD78:  LDR             R1, =(aCred093 - 0x45DD80); "CRED093"
45DD7A:  MOV             R0, R4; this
45DD7C:  ADD             R1, PC; "CRED093"
45DD7E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DD82:  MOV             R1, R10; float
45DD84:  MOV             R2, R0; float
45DD86:  MOV             R3, R5; unsigned __int16 *
45DD88:  STR.W           R11, [SP,#0x48+var_44]; float
45DD8C:  VSTR            S16, [SP,#0x48+var_48]
45DD90:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DD94:  LDR             R1, =(aCred094 - 0x45DD9C); "CRED094"
45DD96:  MOV             R0, R4; this
45DD98:  ADD             R1, PC; "CRED094"
45DD9A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DD9E:  MOV             R1, R10; float
45DDA0:  MOV             R2, R0; float
45DDA2:  MOV             R3, R5; unsigned __int16 *
45DDA4:  STR.W           R11, [SP,#0x48+var_44]; float
45DDA8:  VSTR            S16, [SP,#0x48+var_48]
45DDAC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DDB0:  LDR             R1, =(aCred095 - 0x45DDB8); "CRED095"
45DDB2:  MOV             R0, R4; this
45DDB4:  ADD             R1, PC; "CRED095"
45DDB6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DDBA:  MOV             R1, R10; float
45DDBC:  MOV             R2, R0; float
45DDBE:  MOV             R3, R5; unsigned __int16 *
45DDC0:  STR.W           R11, [SP,#0x48+var_44]; float
45DDC4:  VSTR            S16, [SP,#0x48+var_48]
45DDC8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DDCC:  LDR             R1, =(aCred096 - 0x45DDD4); "CRED096"
45DDCE:  MOV             R0, R4; this
45DDD0:  ADD             R1, PC; "CRED096"
45DDD2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DDD6:  MOV             R1, R10; float
45DDD8:  MOV             R2, R0; float
45DDDA:  MOV             R3, R5; unsigned __int16 *
45DDDC:  STR.W           R11, [SP,#0x48+var_44]; float
45DDE0:  VSTR            S16, [SP,#0x48+var_48]
45DDE4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DDE8:  LDR             R1, =(aCred097 - 0x45DDF0); "CRED097"
45DDEA:  MOV             R0, R4; this
45DDEC:  ADD             R1, PC; "CRED097"
45DDEE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DDF2:  MOV             R1, R10; float
45DDF4:  MOV             R2, R0; float
45DDF6:  MOV             R3, R5; unsigned __int16 *
45DDF8:  STR.W           R11, [SP,#0x48+var_44]; float
45DDFC:  VSTR            S16, [SP,#0x48+var_48]
45DE00:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DE04:  LDR             R1, =(aCred098 - 0x45DE0C); "CRED098"
45DE06:  MOV             R0, R4; this
45DE08:  ADD             R1, PC; "CRED098"
45DE0A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DE0E:  MOV             R1, R10; float
45DE10:  MOV             R2, R0; float
45DE12:  MOV             R3, R5; unsigned __int16 *
45DE14:  STR.W           R11, [SP,#0x48+var_44]; float
45DE18:  VSTR            S16, [SP,#0x48+var_48]
45DE1C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DE20:  LDR             R1, =(aCred099 - 0x45DE28); "CRED099"
45DE22:  MOV             R0, R4; this
45DE24:  ADD             R1, PC; "CRED099"
45DE26:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DE2A:  MOV             R1, R10; float
45DE2C:  MOV             R2, R0; float
45DE2E:  MOV             R3, R5; unsigned __int16 *
45DE30:  STR.W           R11, [SP,#0x48+var_44]; float
45DE34:  VSTR            S16, [SP,#0x48+var_48]
45DE38:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DE3C:  LDR             R1, =(aCred101 - 0x45DE44); "CRED101"
45DE3E:  MOV             R0, R4; this
45DE40:  ADD             R1, PC; "CRED101"
45DE42:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DE46:  MOV             R1, R10; float
45DE48:  MOV             R2, R0; float
45DE4A:  MOV             R3, R5; unsigned __int16 *
45DE4C:  STR.W           R11, [SP,#0x48+var_44]; float
45DE50:  VSTR            S16, [SP,#0x48+var_48]
45DE54:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DE58:  LDR             R1, =(aCred102 - 0x45DE60); "CRED102"
45DE5A:  MOV             R0, R4; this
45DE5C:  ADD             R1, PC; "CRED102"
45DE5E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45DE62:  MOV             R1, R10; float
45DE64:  MOV             R2, R0; float
45DE66:  MOV             R3, R5; unsigned __int16 *
45DE68:  STR.W           R11, [SP,#0x48+var_44]; float
45DE6C:  VSTR            S16, [SP,#0x48+var_48]
45DE70:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45DE74:  VLDR            S0, [SP,#0x48+var_3C]
45DE78:  MOV             R0, R4; this
45DE7A:  LDR             R1, =(aCred103 - 0x45DE84); "CRED103"
45DE7C:  VCVT.F32.U32    S0, S0
45DE80:  ADD             R1, PC; "CRED103"
45DE82:  B.W             loc_45E224
45DE86:  ALIGN 4
45DE88:  DCD _ZN8CCredits16CreditsStartTimeE_ptr - 0x45CEC4
45DE8C:  DCD _ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x45CECA
45DE90:  DCD RsGlobal_ptr - 0x45CEE4
45DE94:  DCD aCred000 - 0x45CF40
45DE98:  DCD TheText_ptr - 0x45CF46
45DE9C:  DCD aCred001 - 0x45CF82
45DEA0:  DCD aCred002 - 0x45CFAC
45DEA4:  DCD aCred003 - 0x45CFD2
45DEA8:  DCD aCred004 - 0x45CFFC
45DEAC:  DCD aCred005 - 0x45D022
45DEB0:  DCD aCred006 - 0x45D04C
45DEB4:  DCD aCred007 - 0x45D06A
45DEB8:  DCD aCred008 - 0x45D090
45DEBC:  DCD aCred009 - 0x45D0BA
45DEC0:  DCD aCrd009a - 0x45D0E0
45DEC4:  DCD aCrd009b - 0x45D10A
45DEC8:  DCD aCrd009c - 0x45D128
45DECC:  DCD aCrd009d - 0x45D146
45DED0:  DCD aCred019 - 0x45D16C
45DED4:  DCD aCred020 - 0x45D196
45DED8:  DCD aCred010 - 0x45D1BC
45DEDC:  DCD aCred011 - 0x45D1E6
45DEE0:  DCD aCred012 - 0x45D20C
45DEE4:  DCD aCred013 - 0x45D236
45DEE8:  DCD aCred014 - 0x45D254
45DEEC:  DCD aCrd014a - 0x45D272
45DEF0:  DCD aCred015 - 0x45D290
45DEF4:  DCD aCred016 - 0x45D2B6
45DEF8:  DCD aCrd016a - 0x45D2EE
45DEFC:  DCD aCred017 - 0x45D30C
45DF00:  DCD aCred018 - 0x45D32A
45DF04:  DCD aCred028 - 0x45D350
45DF08:  DCD aCred029 - 0x45D37A
45DF0C:  DCD aCred030 - 0x45D3A0
45DF10:  DCD aCred031 - 0x45D3CA
45DF14:  DCD aCred032 - 0x45D3F0
45DF18:  DCD aCred033 - 0x45D41A
45DF1C:  DCD aCred034 - 0x45D438
45DF20:  DCD aCred035 - 0x45D456
45DF24:  DCD aCred036 - 0x45D474
45DF28:  DCD aCred047 - 0x45D49A
45DF2C:  DCD aCred048 - 0x45D4C4
45DF30:  DCD aCred049 - 0x45D4EA
45DF34:  DCD aCred050 - 0x45D514
45DF38:  DCD aCred051 - 0x45D532
45DF3C:  DCD aCred052 - 0x45D550
45DF40:  DCD aCred053 - 0x45D576
45DF44:  DCD aCred054 - 0x45D5A0
45DF48:  DCD aCred055 - 0x45D5C6
45DF4C:  DCD aCred056 - 0x45D5F0
45DF50:  DCD aCred057 - 0x45D60E
45DF54:  DCD aCred058 - 0x45D634
45DF58:  DCD aCred059 - 0x45D65E
45DF5C:  DCD aCred060 - 0x45D684
45DF60:  DCD aCred061 - 0x45D6AE
45DF64:  DCD aCred062 - 0x45D6CC
45DF68:  DCD aCred063 - 0x45D6EA
45DF6C:  DCD aCred021 - 0x45D710
45DF70:  DCD aCred022 - 0x45D73A
45DF74:  DCD aCred023 - 0x45D760
45DF78:  DCD aCred024 - 0x45D78A
45DF7C:  DCD aCred025 - 0x45D7A8
45DF80:  DCD aCred026 - 0x45D7C6
45DF84:  DCD aCred027 - 0x45D7E4
45DF88:  DCD aCred064 - 0x45D80A
45DF8C:  DCD aCred065 - 0x45D834
45DF90:  DCD aCred066 - 0x45D85A
45DF94:  DCD aCred067 - 0x45D884
45DF98:  DCD aCred068 - 0x45D8A2
45DF9C:  DCD aCred069 - 0x45D8C8
45DFA0:  DCD aCred070 - 0x45D8F2
45DFA4:  DCD aCred071 - 0x45D918
45DFA8:  DCD aCred072 - 0x45D942
45DFAC:  DCD aCred073 - 0x45D960
45DFB0:  DCD aCred074 - 0x45D97E
45DFB4:  DCD aCred075 - 0x45D99C
45DFB8:  DCD aCred037 - 0x45D9C2
45DFBC:  DCD aCred038 - 0x45D9EC
45DFC0:  DCD aCred039 - 0x45DA12
45DFC4:  DCD aCred040 - 0x45DA3C
45DFC8:  DCD aCred041 - 0x45DA62
45DFCC:  DCD aCred042 - 0x45DA8C
45DFD0:  DCD aCred043 - 0x45DAAA
45DFD4:  DCD aCred044 - 0x45DAD0
45DFD8:  DCD aCred991 - 0x45DAFA
45DFDC:  DCD aCred045 - 0x45DB18
45DFE0:  DCD aCred046 - 0x45DB36
45DFE4:  DCD aCred076 - 0x45DB5C
45DFE8:  DCD aCred077 - 0x45DB86
45DFEC:  DCD aCred078 - 0x45DBA4
45DFF0:  DCD aCred079 - 0x45DBC2
45DFF4:  DCD aCred080 - 0x45DBE0
45DFF8:  DCD aCred081 - 0x45DBFE
45DFFC:  DCD aCred100 - 0x45DC1C
45E000:  DCD aCred082 - 0x45DC38
45E004:  DCD aCred083 - 0x45DC54
45E008:  DCD aCred084 - 0x45DC70
45E00C:  DCD aCred085 - 0x45DC8C
45E010:  DCD aCred086 - 0x45DCA8
45E014:  DCD aCred087 - 0x45DCC4
45E018:  DCD aCred088 - 0x45DCE8
45E01C:  DCD aCred089 - 0x45DD10
45E020:  DCD aCred090 - 0x45DD2C
45E024:  DCD aCred091 - 0x45DD48
45E028:  DCD aCred092 - 0x45DD64
45E02C:  DCD aCred093 - 0x45DD80
45E030:  DCD aCred094 - 0x45DD9C
45E034:  DCD aCred095 - 0x45DDB8
45E038:  DCD aCred096 - 0x45DDD4
45E03C:  DCD aCred097 - 0x45DDF0
45E040:  DCD aCred098 - 0x45DE0C
45E044:  DCD aCred099 - 0x45DE28
45E048:  DCD aCred101 - 0x45DE44
45E04C:  DCD aCred102 - 0x45DE60
45E050:  DCD aCred103 - 0x45DE84
45E054:  DCD aCred104 - 0x45E250
45E058:  DCD aCred105 - 0x45E276
45E05C:  DCD aCred106 - 0x45E2A0
45E060:  DCD aCred107 - 0x45E2C6
45E064:  DCD aCred108 - 0x45E2F2
45E068:  DCD aCred109 - 0x45E318
45E06C:  DCD aCred110 - 0x45E342
45E070:  DCD aCred111 - 0x45E368
45E074:  DCD aCred112 - 0x45E39E
45E078:  DCD aCred113 - 0x45E3D0
45E07C:  DCD aCred114 - 0x45E3FA
45E080:  DCD aCred115 - 0x45E418
45E084:  DCD aCred116 - 0x45E43E
45E088:  DCD aCred117 - 0x45E468
45E08C:  DCD aCred118 - 0x45E48E
45E090:  DCD aCred997 - 0x45E4B8
45E094:  DCD aCrd118a - 0x45E4D6
45E098:  DCD aCred119 - 0x45E4F4
45E09C:  DCD aCred120 - 0x45E512
45E0A0:  DCD aCred996 - 0x45E530
45E0A4:  DCD aCrd120a - 0x45E54E
45E0A8:  DCD aCred121 - 0x45E56C
45E0AC:  DCD aCrd121a - 0x45E58A
45E0B0:  DCD aCred995 - 0x45E5A8
45E0B4:  DCD aCred122 - 0x45E5C6
45E0B8:  DCD aCred994 - 0x45E5E4
45E0BC:  DCD aCred123 - 0x45E602
45E0C0:  DCD aCred124 - 0x45E620
45E0C4:  DCD aCred125 - 0x45E63E
45E0C8:  DCD aCred126 - 0x45E65C
45E0CC:  DCD aCrd126a - 0x45E67A
45E0D0:  DCD aCrd126b - 0x45E698
45E0D4:  DCD aCred127 - 0x45E6B6
45E0D8:  DCD aCred128 - 0x45E6D4
45E0DC:  DCD aCred129 - 0x45E6F2
45E0E0:  DCD aCrd129a - 0x45E710
45E0E4:  DCD aCred130 - 0x45E72E
45E0E8:  DCD aCred131 - 0x45E74C
45E0EC:  DCD aCred132 - 0x45E76A
45E0F0:  DCD aCred133 - 0x45E788
45E0F4:  DCD aCred134 - 0x45E7A6
45E0F8:  DCD aCred992 - 0x45E7C4
45E0FC:  DCD aCrd134a - 0x45E7E2
45E100:  DCD aCred135 - 0x45E800
45E104:  DCD aCred136 - 0x45E81E
45E108:  DCD aCrd136a - 0x45E83C
45E10C:  DCD aCred137 - 0x45E85A
45E110:  DCD aCred138 - 0x45E878
45E114:  DCD aCrd138a - 0x45E896
45E118:  DCD aCred139 - 0x45E8B4
45E11C:  DCD aCred140 - 0x45E8D2
45E120:  DCD aCred141 - 0x45E8F0
45E124:  DCD aCred993 - 0x45E90E
45E128:  DCD aCred142 - 0x45E92C
45E12C:  DCD aCred143 - 0x45E94A
45E130:  DCD aCred144 - 0x45E970
45E134:  DCD aCred145 - 0x45E99A
45E138:  DCD aCred146 - 0x45E9C0
45E13C:  DCD aCred147 - 0x45E9EA
45E140:  DCD aCred148 - 0x45EA10
45E144:  DCD aCred149 - 0x45EA3A
45E148:  DCD aCred150 - 0x45EA60
45E14C:  DCD aCred151 - 0x45EA8A
45E150:  DCD aCred152 - 0x45EAB0
45E154:  DCD aCred153 - 0x45EADA
45E158:  DCD aCrd153a - 0x45EAF8
45E15C:  DCD aCred154 - 0x45EB16
45E160:  DCD aCrd154a - 0x45EB34
45E164:  DCD aCred155 - 0x45EB5A
45E168:  DCD aCred156 - 0x45EB84
45E16C:  DCD aCred157 - 0x45EBAA
45E170:  DCD aCred158 - 0x45EBD4
45E174:  DCD aCred159 - 0x45EBF2
45E178:  DCD aCred199 - 0x45EC18
45E17C:  DCD aCred200 - 0x45EC56
45E180:  DCD aCred201 - 0x45EC80
45E184:  DCD aCred202 - 0x45ECA6
45E188:  DCD aCred203 - 0x45ECD0
45E18C:  DCD aCred204 - 0x45ECF6
45E190:  DCD aCred205 - 0x45ED20
45E194:  DCD aCred206 - 0x45ED46
45E198:  DCD aCred207 - 0x45ED70
45E19C:  DCD aCred208 - 0x45ED96
45E1A0:  DCD aCred209 - 0x45EDC0
45E1A4:  DCD aCred210 - 0x45EDE6
45E1A8:  DCD aCred211 - 0x45EE10
45E1AC:  DCD aCred212 - 0x45EE36
45E1B0:  DCD aCred213 - 0x45EE60
45E1B4:  DCD aCred214 - 0x45EE86
45E1B8:  DCD aCred215 - 0x45EEB0
45E1BC:  DCD aCred216 - 0x45EECE
45E1C0:  DCD aCred217 - 0x45EEEC
45E1C4:  DCD aCred218 - 0x45EF12
45E1C8:  DCD aCred219 - 0x45EF3C
45E1CC:  DCD aCred220 - 0x45EF5A
45E1D0:  DCD aCred221 - 0x45EF78
45E1D4:  DCD aCred222 - 0x45EF96
45E1D8:  DCD aCred223 - 0x45EFB4
45E1DC:  DCD aCred224 - 0x45EFD2
45E1E0:  DCD aCred225 - 0x45EFF0
45E1E4:  DCD aCred226 - 0x45F00E
45E1E8:  DCD aCred227 - 0x45F02C
45E1EC:  DCD aCred228 - 0x45F04A
45E1F0:  DCD aCred229 - 0x45F068
45E1F4:  DCD aCred230 - 0x45F086
45E1F8:  DCD aCred231 - 0x45F0A4
45E1FC:  DCD aCred232 - 0x45F0C2
45E200:  DCD aCred233 - 0x45F0E0
45E204:  DCD aCred234 - 0x45F0FE
45E208:  DCD aCred235 - 0x45F124
45E20C:  DCD aCred236 - 0x45F14E
45E210:  DCD aCred237 - 0x45F174
45E214:  DCD aCred238 - 0x45F19E
45E218:  DCD aCred239 - 0x45F1BC
45E21C:  DCD aCred240 - 0x45F1E2
45E220:  DCD aCred241 - 0x45F20C
45E224:  VADD.F32        S0, S0, S18
45E228:  VCVT.U32.F32    S0, S0
45E22C:  VSTR            S0, [SP,#0x48+var_3C]
45E230:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E234:  MOV             R1, R10; float
45E236:  MOV             R2, R0; float
45E238:  MOV             R3, R5; unsigned __int16 *
45E23A:  STR.W           R8, [SP,#0x48+var_44]; float
45E23E:  VSTR            S16, [SP,#0x48+var_48]
45E242:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E246:  LDR.W           R1, =(aCred104 - 0x45E250); "CRED104"
45E24A:  MOV             R0, R4; this
45E24C:  ADD             R1, PC; "CRED104"
45E24E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E252:  MOV             R1, R10; float
45E254:  MOV             R2, R0; float
45E256:  MOV             R3, R5; unsigned __int16 *
45E258:  STR.W           R11, [SP,#0x48+var_44]; float
45E25C:  VSTR            S16, [SP,#0x48+var_48]
45E260:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E264:  VLDR            S0, [SP,#0x48+var_3C]
45E268:  MOV             R0, R4; this
45E26A:  LDR.W           R1, =(aCred105 - 0x45E276); "CRED105"
45E26E:  VCVT.F32.U32    S0, S0
45E272:  ADD             R1, PC; "CRED105"
45E274:  VADD.F32        S0, S0, S18
45E278:  VCVT.U32.F32    S0, S0
45E27C:  VSTR            S0, [SP,#0x48+var_3C]
45E280:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E284:  MOV             R1, R10; float
45E286:  MOV             R2, R0; float
45E288:  MOV             R3, R5; unsigned __int16 *
45E28A:  STR.W           R8, [SP,#0x48+var_44]; float
45E28E:  VSTR            S16, [SP,#0x48+var_48]
45E292:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E296:  LDR.W           R1, =(aCred106 - 0x45E2A0); "CRED106"
45E29A:  MOV             R0, R4; this
45E29C:  ADD             R1, PC; "CRED106"
45E29E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E2A2:  MOV             R1, R10; float
45E2A4:  MOV             R2, R0; float
45E2A6:  MOV             R3, R5; unsigned __int16 *
45E2A8:  STR.W           R11, [SP,#0x48+var_44]; float
45E2AC:  VSTR            S16, [SP,#0x48+var_48]
45E2B0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E2B4:  VLDR            S0, [SP,#0x48+var_3C]
45E2B8:  MOV             R0, R4; this
45E2BA:  LDR.W           R9, =(aCred107 - 0x45E2C6); "CRED107"
45E2BE:  VCVT.F32.U32    S0, S0
45E2C2:  ADD             R9, PC; "CRED107"
45E2C4:  MOV             R1, R9; CKeyGen *
45E2C6:  VADD.F32        S0, S0, S18
45E2CA:  VCVT.U32.F32    S0, S0
45E2CE:  VSTR            S0, [SP,#0x48+var_3C]
45E2D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E2D6:  MOV             R1, R10; float
45E2D8:  MOV             R2, R0; float
45E2DA:  MOV             R3, R5; unsigned __int16 *
45E2DC:  STR.W           R8, [SP,#0x48+var_44]; float
45E2E0:  VSTR            S16, [SP,#0x48+var_48]
45E2E4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E2E8:  LDR.W           R1, =(aCred108 - 0x45E2F2); "CRED108"
45E2EC:  MOV             R0, R4; this
45E2EE:  ADD             R1, PC; "CRED108"
45E2F0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E2F4:  MOV             R1, R10; float
45E2F6:  MOV             R2, R0; float
45E2F8:  MOV             R3, R5; unsigned __int16 *
45E2FA:  STR.W           R11, [SP,#0x48+var_44]; float
45E2FE:  VSTR            S16, [SP,#0x48+var_48]
45E302:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E306:  VLDR            S0, [SP,#0x48+var_3C]
45E30A:  MOV             R0, R4; this
45E30C:  LDR.W           R1, =(aCred109 - 0x45E318); "CRED109"
45E310:  VCVT.F32.U32    S0, S0
45E314:  ADD             R1, PC; "CRED109"
45E316:  VADD.F32        S0, S0, S18
45E31A:  VCVT.U32.F32    S0, S0
45E31E:  VSTR            S0, [SP,#0x48+var_3C]
45E322:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E326:  MOV             R1, R10; float
45E328:  MOV             R2, R0; float
45E32A:  MOV             R3, R5; unsigned __int16 *
45E32C:  STR.W           R8, [SP,#0x48+var_44]; float
45E330:  VSTR            S16, [SP,#0x48+var_48]
45E334:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E338:  LDR.W           R1, =(aCred110 - 0x45E342); "CRED110"
45E33C:  MOV             R0, R4; this
45E33E:  ADD             R1, PC; "CRED110"
45E340:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E344:  MOV             R1, R10; float
45E346:  MOV             R2, R0; float
45E348:  MOV             R3, R5; unsigned __int16 *
45E34A:  STR.W           R11, [SP,#0x48+var_44]; float
45E34E:  VSTR            S16, [SP,#0x48+var_48]
45E352:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E356:  VLDR            S0, [SP,#0x48+var_3C]
45E35A:  MOV             R0, R4; this
45E35C:  LDR.W           R1, =(aCred111 - 0x45E368); "CRED111"
45E360:  VCVT.F32.U32    S0, S0
45E364:  ADD             R1, PC; "CRED111"
45E366:  VADD.F32        S0, S0, S18
45E36A:  VCVT.U32.F32    S0, S0
45E36E:  VSTR            S0, [SP,#0x48+var_3C]
45E372:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E376:  MOV             R1, R10; float
45E378:  MOV             R2, R0; float
45E37A:  MOV             R3, R5; unsigned __int16 *
45E37C:  STR.W           R8, [SP,#0x48+var_44]; float
45E380:  VSTR            S16, [SP,#0x48+var_48]
45E384:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E388:  VLDR            S0, [SP,#0x48+var_3C]
45E38C:  VMOV.F32        S20, #25.0
45E390:  LDR.W           R1, =(aCred112 - 0x45E39E); "CRED112"
45E394:  MOV             R0, R4; this
45E396:  VCVT.F32.U32    S0, S0
45E39A:  ADD             R1, PC; "CRED112"
45E39C:  VADD.F32        S0, S0, S20
45E3A0:  VCVT.U32.F32    S0, S0
45E3A4:  VSTR            S0, [SP,#0x48+var_3C]
45E3A8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E3AC:  MOV             R1, R10; float
45E3AE:  MOV             R2, R0; float
45E3B0:  MOV             R3, R5; unsigned __int16 *
45E3B2:  STR.W           R11, [SP,#0x48+var_44]; float
45E3B6:  VSTR            S16, [SP,#0x48+var_48]
45E3BA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E3BE:  VLDR            S0, [SP,#0x48+var_3C]
45E3C2:  MOV             R0, R4; this
45E3C4:  LDR.W           R1, =(aCred113 - 0x45E3D0); "CRED113"
45E3C8:  VCVT.F32.U32    S0, S0
45E3CC:  ADD             R1, PC; "CRED113"
45E3CE:  VADD.F32        S0, S0, S18
45E3D2:  VCVT.U32.F32    S0, S0
45E3D6:  VSTR            S0, [SP,#0x48+var_3C]
45E3DA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E3DE:  MOV             R1, R10; float
45E3E0:  MOV             R2, R0; float
45E3E2:  MOV             R3, R5; unsigned __int16 *
45E3E4:  STR.W           R8, [SP,#0x48+var_44]; float
45E3E8:  VSTR            S16, [SP,#0x48+var_48]
45E3EC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E3F0:  LDR.W           R1, =(aCred114 - 0x45E3FA); "CRED114"
45E3F4:  MOV             R0, R4; this
45E3F6:  ADD             R1, PC; "CRED114"
45E3F8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E3FC:  MOV             R1, R10; float
45E3FE:  MOV             R2, R0; float
45E400:  MOV             R3, R5; unsigned __int16 *
45E402:  STR.W           R11, [SP,#0x48+var_44]; float
45E406:  VSTR            S16, [SP,#0x48+var_48]
45E40A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E40E:  LDR.W           R1, =(aCred115 - 0x45E418); "CRED115"
45E412:  MOV             R0, R4; this
45E414:  ADD             R1, PC; "CRED115"
45E416:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E41A:  MOV             R1, R10; float
45E41C:  MOV             R2, R0; float
45E41E:  MOV             R3, R5; unsigned __int16 *
45E420:  STR.W           R11, [SP,#0x48+var_44]; float
45E424:  VSTR            S16, [SP,#0x48+var_48]
45E428:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E42C:  VLDR            S0, [SP,#0x48+var_3C]
45E430:  MOV             R0, R4; this
45E432:  LDR.W           R1, =(aCred116 - 0x45E43E); "CRED116"
45E436:  VCVT.F32.U32    S0, S0
45E43A:  ADD             R1, PC; "CRED116"
45E43C:  VADD.F32        S0, S0, S18
45E440:  VCVT.U32.F32    S0, S0
45E444:  VSTR            S0, [SP,#0x48+var_3C]
45E448:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E44C:  MOV             R1, R10; float
45E44E:  MOV             R2, R0; float
45E450:  MOV             R3, R5; unsigned __int16 *
45E452:  STR.W           R8, [SP,#0x48+var_44]; float
45E456:  VSTR            S16, [SP,#0x48+var_48]
45E45A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E45E:  LDR.W           R1, =(aCred117 - 0x45E468); "CRED117"
45E462:  MOV             R0, R4; this
45E464:  ADD             R1, PC; "CRED117"
45E466:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E46A:  MOV             R1, R10; float
45E46C:  MOV             R2, R0; float
45E46E:  MOV             R3, R5; unsigned __int16 *
45E470:  STR.W           R11, [SP,#0x48+var_44]; float
45E474:  VSTR            S16, [SP,#0x48+var_48]
45E478:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E47C:  VLDR            S0, [SP,#0x48+var_3C]
45E480:  MOV             R0, R4; this
45E482:  LDR.W           R1, =(aCred118 - 0x45E48E); "CRED118"
45E486:  VCVT.F32.U32    S0, S0
45E48A:  ADD             R1, PC; "CRED118"
45E48C:  VADD.F32        S0, S0, S18
45E490:  VCVT.U32.F32    S0, S0
45E494:  VSTR            S0, [SP,#0x48+var_3C]
45E498:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E49C:  MOV             R1, R10; float
45E49E:  MOV             R2, R0; float
45E4A0:  MOV             R3, R5; unsigned __int16 *
45E4A2:  STR.W           R8, [SP,#0x48+var_44]; float
45E4A6:  VSTR            S16, [SP,#0x48+var_48]
45E4AA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E4AE:  LDR.W           R1, =(aCred997 - 0x45E4B8); "CRED997"
45E4B2:  MOV             R0, R4; this
45E4B4:  ADD             R1, PC; "CRED997"
45E4B6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E4BA:  MOV             R1, R10; float
45E4BC:  MOV             R2, R0; float
45E4BE:  MOV             R3, R5; unsigned __int16 *
45E4C0:  STR.W           R11, [SP,#0x48+var_44]; float
45E4C4:  VSTR            S16, [SP,#0x48+var_48]
45E4C8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E4CC:  LDR.W           R1, =(aCrd118a - 0x45E4D6); "CRD118A"
45E4D0:  MOV             R0, R4; this
45E4D2:  ADD             R1, PC; "CRD118A"
45E4D4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E4D8:  MOV             R1, R10; float
45E4DA:  MOV             R2, R0; float
45E4DC:  MOV             R3, R5; unsigned __int16 *
45E4DE:  STR.W           R11, [SP,#0x48+var_44]; float
45E4E2:  VSTR            S16, [SP,#0x48+var_48]
45E4E6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E4EA:  LDR.W           R1, =(aCred119 - 0x45E4F4); "CRED119"
45E4EE:  MOV             R0, R4; this
45E4F0:  ADD             R1, PC; "CRED119"
45E4F2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E4F6:  MOV             R1, R10; float
45E4F8:  MOV             R2, R0; float
45E4FA:  MOV             R3, R5; unsigned __int16 *
45E4FC:  STR.W           R11, [SP,#0x48+var_44]; float
45E500:  VSTR            S16, [SP,#0x48+var_48]
45E504:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E508:  LDR.W           R1, =(aCred120 - 0x45E512); "CRED120"
45E50C:  MOV             R0, R4; this
45E50E:  ADD             R1, PC; "CRED120"
45E510:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E514:  MOV             R1, R10; float
45E516:  MOV             R2, R0; float
45E518:  MOV             R3, R5; unsigned __int16 *
45E51A:  STR.W           R11, [SP,#0x48+var_44]; float
45E51E:  VSTR            S16, [SP,#0x48+var_48]
45E522:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E526:  LDR.W           R1, =(aCred996 - 0x45E530); "CRED996"
45E52A:  MOV             R0, R4; this
45E52C:  ADD             R1, PC; "CRED996"
45E52E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E532:  MOV             R1, R10; float
45E534:  MOV             R2, R0; float
45E536:  MOV             R3, R5; unsigned __int16 *
45E538:  STR.W           R11, [SP,#0x48+var_44]; float
45E53C:  VSTR            S16, [SP,#0x48+var_48]
45E540:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E544:  LDR.W           R1, =(aCrd120a - 0x45E54E); "CRD120A"
45E548:  MOV             R0, R4; this
45E54A:  ADD             R1, PC; "CRD120A"
45E54C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E550:  MOV             R1, R10; float
45E552:  MOV             R2, R0; float
45E554:  MOV             R3, R5; unsigned __int16 *
45E556:  STR.W           R11, [SP,#0x48+var_44]; float
45E55A:  VSTR            S16, [SP,#0x48+var_48]
45E55E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E562:  LDR.W           R1, =(aCred121 - 0x45E56C); "CRED121"
45E566:  MOV             R0, R4; this
45E568:  ADD             R1, PC; "CRED121"
45E56A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E56E:  MOV             R1, R10; float
45E570:  MOV             R2, R0; float
45E572:  MOV             R3, R5; unsigned __int16 *
45E574:  STR.W           R11, [SP,#0x48+var_44]; float
45E578:  VSTR            S16, [SP,#0x48+var_48]
45E57C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E580:  LDR.W           R1, =(aCrd121a - 0x45E58A); "CRD121A"
45E584:  MOV             R0, R4; this
45E586:  ADD             R1, PC; "CRD121A"
45E588:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E58C:  MOV             R1, R10; float
45E58E:  MOV             R2, R0; float
45E590:  MOV             R3, R5; unsigned __int16 *
45E592:  STR.W           R11, [SP,#0x48+var_44]; float
45E596:  VSTR            S16, [SP,#0x48+var_48]
45E59A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E59E:  LDR.W           R1, =(aCred995 - 0x45E5A8); "CRED995"
45E5A2:  MOV             R0, R4; this
45E5A4:  ADD             R1, PC; "CRED995"
45E5A6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E5AA:  MOV             R1, R10; float
45E5AC:  MOV             R2, R0; float
45E5AE:  MOV             R3, R5; unsigned __int16 *
45E5B0:  STR.W           R11, [SP,#0x48+var_44]; float
45E5B4:  VSTR            S16, [SP,#0x48+var_48]
45E5B8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E5BC:  LDR.W           R1, =(aCred122 - 0x45E5C6); "CRED122"
45E5C0:  MOV             R0, R4; this
45E5C2:  ADD             R1, PC; "CRED122"
45E5C4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E5C8:  MOV             R1, R10; float
45E5CA:  MOV             R2, R0; float
45E5CC:  MOV             R3, R5; unsigned __int16 *
45E5CE:  STR.W           R11, [SP,#0x48+var_44]; float
45E5D2:  VSTR            S16, [SP,#0x48+var_48]
45E5D6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E5DA:  LDR.W           R1, =(aCred994 - 0x45E5E4); "CRED994"
45E5DE:  MOV             R0, R4; this
45E5E0:  ADD             R1, PC; "CRED994"
45E5E2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E5E6:  MOV             R1, R10; float
45E5E8:  MOV             R2, R0; float
45E5EA:  MOV             R3, R5; unsigned __int16 *
45E5EC:  STR.W           R11, [SP,#0x48+var_44]; float
45E5F0:  VSTR            S16, [SP,#0x48+var_48]
45E5F4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E5F8:  LDR.W           R1, =(aCred123 - 0x45E602); "CRED123"
45E5FC:  MOV             R0, R4; this
45E5FE:  ADD             R1, PC; "CRED123"
45E600:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E604:  MOV             R1, R10; float
45E606:  MOV             R2, R0; float
45E608:  MOV             R3, R5; unsigned __int16 *
45E60A:  STR.W           R11, [SP,#0x48+var_44]; float
45E60E:  VSTR            S16, [SP,#0x48+var_48]
45E612:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E616:  LDR.W           R1, =(aCred124 - 0x45E620); "CRED124"
45E61A:  MOV             R0, R4; this
45E61C:  ADD             R1, PC; "CRED124"
45E61E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E622:  MOV             R1, R10; float
45E624:  MOV             R2, R0; float
45E626:  MOV             R3, R5; unsigned __int16 *
45E628:  STR.W           R11, [SP,#0x48+var_44]; float
45E62C:  VSTR            S16, [SP,#0x48+var_48]
45E630:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E634:  LDR.W           R1, =(aCred125 - 0x45E63E); "CRED125"
45E638:  MOV             R0, R4; this
45E63A:  ADD             R1, PC; "CRED125"
45E63C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E640:  MOV             R1, R10; float
45E642:  MOV             R2, R0; float
45E644:  MOV             R3, R5; unsigned __int16 *
45E646:  STR.W           R11, [SP,#0x48+var_44]; float
45E64A:  VSTR            S16, [SP,#0x48+var_48]
45E64E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E652:  LDR.W           R1, =(aCred126 - 0x45E65C); "CRED126"
45E656:  MOV             R0, R4; this
45E658:  ADD             R1, PC; "CRED126"
45E65A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E65E:  MOV             R1, R10; float
45E660:  MOV             R2, R0; float
45E662:  MOV             R3, R5; unsigned __int16 *
45E664:  STR.W           R11, [SP,#0x48+var_44]; float
45E668:  VSTR            S16, [SP,#0x48+var_48]
45E66C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E670:  LDR.W           R1, =(aCrd126a - 0x45E67A); "CRD126A"
45E674:  MOV             R0, R4; this
45E676:  ADD             R1, PC; "CRD126A"
45E678:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E67C:  MOV             R1, R10; float
45E67E:  MOV             R2, R0; float
45E680:  MOV             R3, R5; unsigned __int16 *
45E682:  STR.W           R11, [SP,#0x48+var_44]; float
45E686:  VSTR            S16, [SP,#0x48+var_48]
45E68A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E68E:  LDR.W           R1, =(aCrd126b - 0x45E698); "CRD126B"
45E692:  MOV             R0, R4; this
45E694:  ADD             R1, PC; "CRD126B"
45E696:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E69A:  MOV             R1, R10; float
45E69C:  MOV             R2, R0; float
45E69E:  MOV             R3, R5; unsigned __int16 *
45E6A0:  STR.W           R11, [SP,#0x48+var_44]; float
45E6A4:  VSTR            S16, [SP,#0x48+var_48]
45E6A8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E6AC:  LDR.W           R1, =(aCred127 - 0x45E6B6); "CRED127"
45E6B0:  MOV             R0, R4; this
45E6B2:  ADD             R1, PC; "CRED127"
45E6B4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E6B8:  MOV             R1, R10; float
45E6BA:  MOV             R2, R0; float
45E6BC:  MOV             R3, R5; unsigned __int16 *
45E6BE:  STR.W           R11, [SP,#0x48+var_44]; float
45E6C2:  VSTR            S16, [SP,#0x48+var_48]
45E6C6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E6CA:  LDR.W           R1, =(aCred128 - 0x45E6D4); "CRED128"
45E6CE:  MOV             R0, R4; this
45E6D0:  ADD             R1, PC; "CRED128"
45E6D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E6D6:  MOV             R1, R10; float
45E6D8:  MOV             R2, R0; float
45E6DA:  MOV             R3, R5; unsigned __int16 *
45E6DC:  STR.W           R11, [SP,#0x48+var_44]; float
45E6E0:  VSTR            S16, [SP,#0x48+var_48]
45E6E4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E6E8:  LDR.W           R1, =(aCred129 - 0x45E6F2); "CRED129"
45E6EC:  MOV             R0, R4; this
45E6EE:  ADD             R1, PC; "CRED129"
45E6F0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E6F4:  MOV             R1, R10; float
45E6F6:  MOV             R2, R0; float
45E6F8:  MOV             R3, R5; unsigned __int16 *
45E6FA:  STR.W           R11, [SP,#0x48+var_44]; float
45E6FE:  VSTR            S16, [SP,#0x48+var_48]
45E702:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E706:  LDR.W           R1, =(aCrd129a - 0x45E710); "CRD129A"
45E70A:  MOV             R0, R4; this
45E70C:  ADD             R1, PC; "CRD129A"
45E70E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E712:  MOV             R1, R10; float
45E714:  MOV             R2, R0; float
45E716:  MOV             R3, R5; unsigned __int16 *
45E718:  STR.W           R11, [SP,#0x48+var_44]; float
45E71C:  VSTR            S16, [SP,#0x48+var_48]
45E720:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E724:  LDR.W           R1, =(aCred130 - 0x45E72E); "CRED130"
45E728:  MOV             R0, R4; this
45E72A:  ADD             R1, PC; "CRED130"
45E72C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E730:  MOV             R1, R10; float
45E732:  MOV             R2, R0; float
45E734:  MOV             R3, R5; unsigned __int16 *
45E736:  STR.W           R11, [SP,#0x48+var_44]; float
45E73A:  VSTR            S16, [SP,#0x48+var_48]
45E73E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E742:  LDR.W           R1, =(aCred131 - 0x45E74C); "CRED131"
45E746:  MOV             R0, R4; this
45E748:  ADD             R1, PC; "CRED131"
45E74A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E74E:  MOV             R1, R10; float
45E750:  MOV             R2, R0; float
45E752:  MOV             R3, R5; unsigned __int16 *
45E754:  STR.W           R11, [SP,#0x48+var_44]; float
45E758:  VSTR            S16, [SP,#0x48+var_48]
45E75C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E760:  LDR.W           R1, =(aCred132 - 0x45E76A); "CRED132"
45E764:  MOV             R0, R4; this
45E766:  ADD             R1, PC; "CRED132"
45E768:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E76C:  MOV             R1, R10; float
45E76E:  MOV             R2, R0; float
45E770:  MOV             R3, R5; unsigned __int16 *
45E772:  STR.W           R11, [SP,#0x48+var_44]; float
45E776:  VSTR            S16, [SP,#0x48+var_48]
45E77A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E77E:  LDR.W           R1, =(aCred133 - 0x45E788); "CRED133"
45E782:  MOV             R0, R4; this
45E784:  ADD             R1, PC; "CRED133"
45E786:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E78A:  MOV             R1, R10; float
45E78C:  MOV             R2, R0; float
45E78E:  MOV             R3, R5; unsigned __int16 *
45E790:  STR.W           R11, [SP,#0x48+var_44]; float
45E794:  VSTR            S16, [SP,#0x48+var_48]
45E798:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E79C:  LDR.W           R1, =(aCred134 - 0x45E7A6); "CRED134"
45E7A0:  MOV             R0, R4; this
45E7A2:  ADD             R1, PC; "CRED134"
45E7A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E7A8:  MOV             R1, R10; float
45E7AA:  MOV             R2, R0; float
45E7AC:  MOV             R3, R5; unsigned __int16 *
45E7AE:  STR.W           R11, [SP,#0x48+var_44]; float
45E7B2:  VSTR            S16, [SP,#0x48+var_48]
45E7B6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E7BA:  LDR.W           R1, =(aCred992 - 0x45E7C4); "CRED992"
45E7BE:  MOV             R0, R4; this
45E7C0:  ADD             R1, PC; "CRED992"
45E7C2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E7C6:  MOV             R1, R10; float
45E7C8:  MOV             R2, R0; float
45E7CA:  MOV             R3, R5; unsigned __int16 *
45E7CC:  STR.W           R11, [SP,#0x48+var_44]; float
45E7D0:  VSTR            S16, [SP,#0x48+var_48]
45E7D4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E7D8:  LDR.W           R1, =(aCrd134a - 0x45E7E2); "CRD134A"
45E7DC:  MOV             R0, R4; this
45E7DE:  ADD             R1, PC; "CRD134A"
45E7E0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E7E4:  MOV             R1, R10; float
45E7E6:  MOV             R2, R0; float
45E7E8:  MOV             R3, R5; unsigned __int16 *
45E7EA:  STR.W           R11, [SP,#0x48+var_44]; float
45E7EE:  VSTR            S16, [SP,#0x48+var_48]
45E7F2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E7F6:  LDR.W           R1, =(aCred135 - 0x45E800); "CRED135"
45E7FA:  MOV             R0, R4; this
45E7FC:  ADD             R1, PC; "CRED135"
45E7FE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E802:  MOV             R1, R10; float
45E804:  MOV             R2, R0; float
45E806:  MOV             R3, R5; unsigned __int16 *
45E808:  STR.W           R11, [SP,#0x48+var_44]; float
45E80C:  VSTR            S16, [SP,#0x48+var_48]
45E810:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E814:  LDR.W           R1, =(aCred136 - 0x45E81E); "CRED136"
45E818:  MOV             R0, R4; this
45E81A:  ADD             R1, PC; "CRED136"
45E81C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E820:  MOV             R1, R10; float
45E822:  MOV             R2, R0; float
45E824:  MOV             R3, R5; unsigned __int16 *
45E826:  STR.W           R11, [SP,#0x48+var_44]; float
45E82A:  VSTR            S16, [SP,#0x48+var_48]
45E82E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E832:  LDR.W           R1, =(aCrd136a - 0x45E83C); "CRD136A"
45E836:  MOV             R0, R4; this
45E838:  ADD             R1, PC; "CRD136A"
45E83A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E83E:  MOV             R1, R10; float
45E840:  MOV             R2, R0; float
45E842:  MOV             R3, R5; unsigned __int16 *
45E844:  STR.W           R11, [SP,#0x48+var_44]; float
45E848:  VSTR            S16, [SP,#0x48+var_48]
45E84C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E850:  LDR.W           R1, =(aCred137 - 0x45E85A); "CRED137"
45E854:  MOV             R0, R4; this
45E856:  ADD             R1, PC; "CRED137"
45E858:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E85C:  MOV             R1, R10; float
45E85E:  MOV             R2, R0; float
45E860:  MOV             R3, R5; unsigned __int16 *
45E862:  STR.W           R11, [SP,#0x48+var_44]; float
45E866:  VSTR            S16, [SP,#0x48+var_48]
45E86A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E86E:  LDR.W           R1, =(aCred138 - 0x45E878); "CRED138"
45E872:  MOV             R0, R4; this
45E874:  ADD             R1, PC; "CRED138"
45E876:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E87A:  MOV             R1, R10; float
45E87C:  MOV             R2, R0; float
45E87E:  MOV             R3, R5; unsigned __int16 *
45E880:  STR.W           R11, [SP,#0x48+var_44]; float
45E884:  VSTR            S16, [SP,#0x48+var_48]
45E888:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E88C:  LDR.W           R1, =(aCrd138a - 0x45E896); "CRD138A"
45E890:  MOV             R0, R4; this
45E892:  ADD             R1, PC; "CRD138A"
45E894:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E898:  MOV             R1, R10; float
45E89A:  MOV             R2, R0; float
45E89C:  MOV             R3, R5; unsigned __int16 *
45E89E:  STR.W           R11, [SP,#0x48+var_44]; float
45E8A2:  VSTR            S16, [SP,#0x48+var_48]
45E8A6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E8AA:  LDR.W           R1, =(aCred139 - 0x45E8B4); "CRED139"
45E8AE:  MOV             R0, R4; this
45E8B0:  ADD             R1, PC; "CRED139"
45E8B2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E8B6:  MOV             R1, R10; float
45E8B8:  MOV             R2, R0; float
45E8BA:  MOV             R3, R5; unsigned __int16 *
45E8BC:  STR.W           R11, [SP,#0x48+var_44]; float
45E8C0:  VSTR            S16, [SP,#0x48+var_48]
45E8C4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E8C8:  LDR.W           R1, =(aCred140 - 0x45E8D2); "CRED140"
45E8CC:  MOV             R0, R4; this
45E8CE:  ADD             R1, PC; "CRED140"
45E8D0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E8D4:  MOV             R1, R10; float
45E8D6:  MOV             R2, R0; float
45E8D8:  MOV             R3, R5; unsigned __int16 *
45E8DA:  STR.W           R11, [SP,#0x48+var_44]; float
45E8DE:  VSTR            S16, [SP,#0x48+var_48]
45E8E2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E8E6:  LDR.W           R1, =(aCred141 - 0x45E8F0); "CRED141"
45E8EA:  MOV             R0, R4; this
45E8EC:  ADD             R1, PC; "CRED141"
45E8EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E8F2:  MOV             R1, R10; float
45E8F4:  MOV             R2, R0; float
45E8F6:  MOV             R3, R5; unsigned __int16 *
45E8F8:  STR.W           R11, [SP,#0x48+var_44]; float
45E8FC:  VSTR            S16, [SP,#0x48+var_48]
45E900:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E904:  LDR.W           R1, =(aCred993 - 0x45E90E); "CRED993"
45E908:  MOV             R0, R4; this
45E90A:  ADD             R1, PC; "CRED993"
45E90C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E910:  MOV             R1, R10; float
45E912:  MOV             R2, R0; float
45E914:  MOV             R3, R5; unsigned __int16 *
45E916:  STR.W           R11, [SP,#0x48+var_44]; float
45E91A:  VSTR            S16, [SP,#0x48+var_48]
45E91E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E922:  LDR.W           R1, =(aCred142 - 0x45E92C); "CRED142"
45E926:  MOV             R0, R4; this
45E928:  ADD             R1, PC; "CRED142"
45E92A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E92E:  MOV             R1, R10; float
45E930:  MOV             R2, R0; float
45E932:  MOV             R3, R5; unsigned __int16 *
45E934:  STR.W           R11, [SP,#0x48+var_44]; float
45E938:  VSTR            S16, [SP,#0x48+var_48]
45E93C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E940:  LDR.W           R1, =(aCred143 - 0x45E94A); "CRED143"
45E944:  MOV             R0, R4; this
45E946:  ADD             R1, PC; "CRED143"
45E948:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E94C:  MOV             R1, R10; float
45E94E:  MOV             R2, R0; float
45E950:  MOV             R3, R5; unsigned __int16 *
45E952:  STR.W           R11, [SP,#0x48+var_44]; float
45E956:  VSTR            S16, [SP,#0x48+var_48]
45E95A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E95E:  VLDR            S0, [SP,#0x48+var_3C]
45E962:  MOV             R0, R4; this
45E964:  LDR.W           R1, =(aCred144 - 0x45E970); "CRED144"
45E968:  VCVT.F32.U32    S0, S0
45E96C:  ADD             R1, PC; "CRED144"
45E96E:  VADD.F32        S0, S0, S18
45E972:  VCVT.U32.F32    S0, S0
45E976:  VSTR            S0, [SP,#0x48+var_3C]
45E97A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E97E:  MOV             R1, R10; float
45E980:  MOV             R2, R0; float
45E982:  MOV             R3, R5; unsigned __int16 *
45E984:  STR.W           R8, [SP,#0x48+var_44]; float
45E988:  VSTR            S16, [SP,#0x48+var_48]
45E98C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E990:  LDR.W           R1, =(aCred145 - 0x45E99A); "CRED145"
45E994:  MOV             R0, R4; this
45E996:  ADD             R1, PC; "CRED145"
45E998:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E99C:  MOV             R1, R10; float
45E99E:  MOV             R2, R0; float
45E9A0:  MOV             R3, R5; unsigned __int16 *
45E9A2:  STR.W           R11, [SP,#0x48+var_44]; float
45E9A6:  VSTR            S16, [SP,#0x48+var_48]
45E9AA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E9AE:  VLDR            S0, [SP,#0x48+var_3C]
45E9B2:  MOV             R0, R4; this
45E9B4:  LDR.W           R1, =(aCred146 - 0x45E9C0); "CRED146"
45E9B8:  VCVT.F32.U32    S0, S0
45E9BC:  ADD             R1, PC; "CRED146"
45E9BE:  VADD.F32        S0, S0, S18
45E9C2:  VCVT.U32.F32    S0, S0
45E9C6:  VSTR            S0, [SP,#0x48+var_3C]
45E9CA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E9CE:  MOV             R1, R10; float
45E9D0:  MOV             R2, R0; float
45E9D2:  MOV             R3, R5; unsigned __int16 *
45E9D4:  STR.W           R8, [SP,#0x48+var_44]; float
45E9D8:  VSTR            S16, [SP,#0x48+var_48]
45E9DC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E9E0:  LDR.W           R1, =(aCred147 - 0x45E9EA); "CRED147"
45E9E4:  MOV             R0, R4; this
45E9E6:  ADD             R1, PC; "CRED147"
45E9E8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45E9EC:  MOV             R1, R10; float
45E9EE:  MOV             R2, R0; float
45E9F0:  MOV             R3, R5; unsigned __int16 *
45E9F2:  STR.W           R11, [SP,#0x48+var_44]; float
45E9F6:  VSTR            S16, [SP,#0x48+var_48]
45E9FA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45E9FE:  VLDR            S0, [SP,#0x48+var_3C]
45EA02:  MOV             R0, R4; this
45EA04:  LDR.W           R1, =(aCred148 - 0x45EA10); "CRED148"
45EA08:  VCVT.F32.U32    S0, S0
45EA0C:  ADD             R1, PC; "CRED148"
45EA0E:  VADD.F32        S0, S0, S18
45EA12:  VCVT.U32.F32    S0, S0
45EA16:  VSTR            S0, [SP,#0x48+var_3C]
45EA1A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EA1E:  MOV             R1, R10; float
45EA20:  MOV             R2, R0; float
45EA22:  MOV             R3, R5; unsigned __int16 *
45EA24:  STR.W           R8, [SP,#0x48+var_44]; float
45EA28:  VSTR            S16, [SP,#0x48+var_48]
45EA2C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EA30:  LDR.W           R1, =(aCred149 - 0x45EA3A); "CRED149"
45EA34:  MOV             R0, R4; this
45EA36:  ADD             R1, PC; "CRED149"
45EA38:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EA3C:  MOV             R1, R10; float
45EA3E:  MOV             R2, R0; float
45EA40:  MOV             R3, R5; unsigned __int16 *
45EA42:  STR.W           R11, [SP,#0x48+var_44]; float
45EA46:  VSTR            S16, [SP,#0x48+var_48]
45EA4A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EA4E:  VLDR            S0, [SP,#0x48+var_3C]
45EA52:  MOV             R0, R4; this
45EA54:  LDR.W           R1, =(aCred150 - 0x45EA60); "CRED150"
45EA58:  VCVT.F32.U32    S0, S0
45EA5C:  ADD             R1, PC; "CRED150"
45EA5E:  VADD.F32        S0, S0, S18
45EA62:  VCVT.U32.F32    S0, S0
45EA66:  VSTR            S0, [SP,#0x48+var_3C]
45EA6A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EA6E:  MOV             R1, R10; float
45EA70:  MOV             R2, R0; float
45EA72:  MOV             R3, R5; unsigned __int16 *
45EA74:  STR.W           R8, [SP,#0x48+var_44]; float
45EA78:  VSTR            S16, [SP,#0x48+var_48]
45EA7C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EA80:  LDR.W           R1, =(aCred151 - 0x45EA8A); "CRED151"
45EA84:  MOV             R0, R4; this
45EA86:  ADD             R1, PC; "CRED151"
45EA88:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EA8C:  MOV             R1, R10; float
45EA8E:  MOV             R2, R0; float
45EA90:  MOV             R3, R5; unsigned __int16 *
45EA92:  STR.W           R11, [SP,#0x48+var_44]; float
45EA96:  VSTR            S16, [SP,#0x48+var_48]
45EA9A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EA9E:  VLDR            S0, [SP,#0x48+var_3C]
45EAA2:  MOV             R0, R4; this
45EAA4:  LDR.W           R1, =(aCred152 - 0x45EAB0); "CRED152"
45EAA8:  VCVT.F32.U32    S0, S0
45EAAC:  ADD             R1, PC; "CRED152"
45EAAE:  VADD.F32        S0, S0, S18
45EAB2:  VCVT.U32.F32    S0, S0
45EAB6:  VSTR            S0, [SP,#0x48+var_3C]
45EABA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EABE:  MOV             R1, R10; float
45EAC0:  MOV             R2, R0; float
45EAC2:  MOV             R3, R5; unsigned __int16 *
45EAC4:  STR.W           R8, [SP,#0x48+var_44]; float
45EAC8:  VSTR            S16, [SP,#0x48+var_48]
45EACC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EAD0:  LDR.W           R1, =(aCred153 - 0x45EADA); "CRED153"
45EAD4:  MOV             R0, R4; this
45EAD6:  ADD             R1, PC; "CRED153"
45EAD8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EADC:  MOV             R1, R10; float
45EADE:  MOV             R2, R0; float
45EAE0:  MOV             R3, R5; unsigned __int16 *
45EAE2:  STR.W           R11, [SP,#0x48+var_44]; float
45EAE6:  VSTR            S16, [SP,#0x48+var_48]
45EAEA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EAEE:  LDR.W           R1, =(aCrd153a - 0x45EAF8); "CRD153A"
45EAF2:  MOV             R0, R4; this
45EAF4:  ADD             R1, PC; "CRD153A"
45EAF6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EAFA:  MOV             R1, R10; float
45EAFC:  MOV             R2, R0; float
45EAFE:  MOV             R3, R5; unsigned __int16 *
45EB00:  STR.W           R11, [SP,#0x48+var_44]; float
45EB04:  VSTR            S16, [SP,#0x48+var_48]
45EB08:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EB0C:  LDR.W           R1, =(aCred154 - 0x45EB16); "CRED154"
45EB10:  MOV             R0, R4; this
45EB12:  ADD             R1, PC; "CRED154"
45EB14:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EB18:  MOV             R1, R10; float
45EB1A:  MOV             R2, R0; float
45EB1C:  MOV             R3, R5; unsigned __int16 *
45EB1E:  STR.W           R11, [SP,#0x48+var_44]; float
45EB22:  VSTR            S16, [SP,#0x48+var_48]
45EB26:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EB2A:  LDR.W           R1, =(aCrd154a - 0x45EB34); "CRD154A"
45EB2E:  MOV             R0, R4; this
45EB30:  ADD             R1, PC; "CRD154A"
45EB32:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EB36:  MOV             R1, R10; float
45EB38:  MOV             R2, R0; float
45EB3A:  MOV             R3, R5; unsigned __int16 *
45EB3C:  STR.W           R11, [SP,#0x48+var_44]; float
45EB40:  VSTR            S16, [SP,#0x48+var_48]
45EB44:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EB48:  VLDR            S0, [SP,#0x48+var_3C]
45EB4C:  MOV             R0, R4; this
45EB4E:  LDR.W           R1, =(aCred155 - 0x45EB5A); "CRED155"
45EB52:  VCVT.F32.U32    S0, S0
45EB56:  ADD             R1, PC; "CRED155"
45EB58:  VADD.F32        S0, S0, S18
45EB5C:  VCVT.U32.F32    S0, S0
45EB60:  VSTR            S0, [SP,#0x48+var_3C]
45EB64:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EB68:  MOV             R1, R10; float
45EB6A:  MOV             R2, R0; float
45EB6C:  MOV             R3, R5; unsigned __int16 *
45EB6E:  STR.W           R8, [SP,#0x48+var_44]; float
45EB72:  VSTR            S16, [SP,#0x48+var_48]
45EB76:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EB7A:  LDR.W           R1, =(aCred156 - 0x45EB84); "CRED156"
45EB7E:  MOV             R0, R4; this
45EB80:  ADD             R1, PC; "CRED156"
45EB82:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EB86:  MOV             R1, R10; float
45EB88:  MOV             R2, R0; float
45EB8A:  MOV             R3, R5; unsigned __int16 *
45EB8C:  STR.W           R11, [SP,#0x48+var_44]; float
45EB90:  VSTR            S16, [SP,#0x48+var_48]
45EB94:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EB98:  VLDR            S0, [SP,#0x48+var_3C]
45EB9C:  MOV             R0, R4; this
45EB9E:  LDR.W           R1, =(aCred157 - 0x45EBAA); "CRED157"
45EBA2:  VCVT.F32.U32    S0, S0
45EBA6:  ADD             R1, PC; "CRED157"
45EBA8:  VADD.F32        S0, S0, S18
45EBAC:  VCVT.U32.F32    S0, S0
45EBB0:  VSTR            S0, [SP,#0x48+var_3C]
45EBB4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EBB8:  MOV             R1, R10; float
45EBBA:  MOV             R2, R0; float
45EBBC:  MOV             R3, R5; unsigned __int16 *
45EBBE:  STR.W           R8, [SP,#0x48+var_44]; float
45EBC2:  VSTR            S16, [SP,#0x48+var_48]
45EBC6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EBCA:  LDR.W           R1, =(aCred158 - 0x45EBD4); "CRED158"
45EBCE:  MOV             R0, R4; this
45EBD0:  ADD             R1, PC; "CRED158"
45EBD2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EBD6:  MOV             R1, R10; float
45EBD8:  MOV             R2, R0; float
45EBDA:  MOV             R3, R5; unsigned __int16 *
45EBDC:  STR.W           R11, [SP,#0x48+var_44]; float
45EBE0:  VSTR            S16, [SP,#0x48+var_48]
45EBE4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EBE8:  LDR.W           R1, =(aCred159 - 0x45EBF2); "CRED159"
45EBEC:  MOV             R0, R4; this
45EBEE:  ADD             R1, PC; "CRED159"
45EBF0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EBF4:  MOV             R1, R10; float
45EBF6:  MOV             R2, R0; float
45EBF8:  MOV             R3, R5; unsigned __int16 *
45EBFA:  STR.W           R11, [SP,#0x48+var_44]; float
45EBFE:  VSTR            S16, [SP,#0x48+var_48]
45EC02:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EC06:  VLDR            S0, [SP,#0x48+var_3C]
45EC0A:  MOV             R0, R4; this
45EC0C:  LDR.W           R1, =(aCred199 - 0x45EC18); "CRED199"
45EC10:  VCVT.F32.U32    S0, S0
45EC14:  ADD             R1, PC; "CRED199"
45EC16:  VADD.F32        S0, S0, S18
45EC1A:  VCVT.U32.F32    S0, S0
45EC1E:  VCVT.F32.U32    S0, S0
45EC22:  VADD.F32        S0, S0, S18
45EC26:  VCVT.U32.F32    S0, S0
45EC2A:  VSTR            S0, [SP,#0x48+var_3C]
45EC2E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EC32:  MOV             R1, R10; float
45EC34:  MOV             R2, R0; float
45EC36:  MOV             R3, R5; unsigned __int16 *
45EC38:  STR.W           R8, [SP,#0x48+var_44]; float
45EC3C:  VSTR            S16, [SP,#0x48+var_48]
45EC40:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EC44:  VLDR            S0, [SP,#0x48+var_3C]
45EC48:  MOV             R0, R4; this
45EC4A:  LDR.W           R1, =(aCred200 - 0x45EC56); "CRED200"
45EC4E:  VCVT.F32.U32    S0, S0
45EC52:  ADD             R1, PC; "CRED200"
45EC54:  VADD.F32        S0, S0, S18
45EC58:  VCVT.U32.F32    S0, S0
45EC5C:  VSTR            S0, [SP,#0x48+var_3C]
45EC60:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EC64:  MOV             R1, R10; float
45EC66:  MOV             R2, R0; float
45EC68:  MOV             R3, R5; unsigned __int16 *
45EC6A:  STR.W           R8, [SP,#0x48+var_44]; float
45EC6E:  VSTR            S16, [SP,#0x48+var_48]
45EC72:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EC76:  LDR.W           R1, =(aCred201 - 0x45EC80); "CRED201"
45EC7A:  MOV             R0, R4; this
45EC7C:  ADD             R1, PC; "CRED201"
45EC7E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EC82:  MOV             R1, R10; float
45EC84:  MOV             R2, R0; float
45EC86:  MOV             R3, R5; unsigned __int16 *
45EC88:  STR.W           R11, [SP,#0x48+var_44]; float
45EC8C:  VSTR            S16, [SP,#0x48+var_48]
45EC90:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EC94:  VLDR            S0, [SP,#0x48+var_3C]
45EC98:  MOV             R0, R4; this
45EC9A:  LDR.W           R1, =(aCred202 - 0x45ECA6); "CRED202"
45EC9E:  VCVT.F32.U32    S0, S0
45ECA2:  ADD             R1, PC; "CRED202"
45ECA4:  VADD.F32        S0, S0, S18
45ECA8:  VCVT.U32.F32    S0, S0
45ECAC:  VSTR            S0, [SP,#0x48+var_3C]
45ECB0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45ECB4:  MOV             R1, R10; float
45ECB6:  MOV             R2, R0; float
45ECB8:  MOV             R3, R5; unsigned __int16 *
45ECBA:  STR.W           R8, [SP,#0x48+var_44]; float
45ECBE:  VSTR            S16, [SP,#0x48+var_48]
45ECC2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45ECC6:  LDR.W           R1, =(aCred203 - 0x45ECD0); "CRED203"
45ECCA:  MOV             R0, R4; this
45ECCC:  ADD             R1, PC; "CRED203"
45ECCE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45ECD2:  MOV             R1, R10; float
45ECD4:  MOV             R2, R0; float
45ECD6:  MOV             R3, R5; unsigned __int16 *
45ECD8:  STR.W           R11, [SP,#0x48+var_44]; float
45ECDC:  VSTR            S16, [SP,#0x48+var_48]
45ECE0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45ECE4:  VLDR            S0, [SP,#0x48+var_3C]
45ECE8:  MOV             R0, R4; this
45ECEA:  LDR.W           R1, =(aCred204 - 0x45ECF6); "CRED204"
45ECEE:  VCVT.F32.U32    S0, S0
45ECF2:  ADD             R1, PC; "CRED204"
45ECF4:  VADD.F32        S0, S0, S18
45ECF8:  VCVT.U32.F32    S0, S0
45ECFC:  VSTR            S0, [SP,#0x48+var_3C]
45ED00:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45ED04:  MOV             R1, R10; float
45ED06:  MOV             R2, R0; float
45ED08:  MOV             R3, R5; unsigned __int16 *
45ED0A:  STR.W           R8, [SP,#0x48+var_44]; float
45ED0E:  VSTR            S16, [SP,#0x48+var_48]
45ED12:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45ED16:  LDR.W           R1, =(aCred205 - 0x45ED20); "CRED205"
45ED1A:  MOV             R0, R4; this
45ED1C:  ADD             R1, PC; "CRED205"
45ED1E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45ED22:  MOV             R1, R10; float
45ED24:  MOV             R2, R0; float
45ED26:  MOV             R3, R5; unsigned __int16 *
45ED28:  STR.W           R11, [SP,#0x48+var_44]; float
45ED2C:  VSTR            S16, [SP,#0x48+var_48]
45ED30:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45ED34:  VLDR            S0, [SP,#0x48+var_3C]
45ED38:  MOV             R0, R4; this
45ED3A:  LDR.W           R1, =(aCred206 - 0x45ED46); "CRED206"
45ED3E:  VCVT.F32.U32    S0, S0
45ED42:  ADD             R1, PC; "CRED206"
45ED44:  VADD.F32        S0, S0, S18
45ED48:  VCVT.U32.F32    S0, S0
45ED4C:  VSTR            S0, [SP,#0x48+var_3C]
45ED50:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45ED54:  MOV             R1, R10; float
45ED56:  MOV             R2, R0; float
45ED58:  MOV             R3, R5; unsigned __int16 *
45ED5A:  STR.W           R8, [SP,#0x48+var_44]; float
45ED5E:  VSTR            S16, [SP,#0x48+var_48]
45ED62:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45ED66:  LDR.W           R1, =(aCred207 - 0x45ED70); "CRED207"
45ED6A:  MOV             R0, R4; this
45ED6C:  ADD             R1, PC; "CRED207"
45ED6E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45ED72:  MOV             R1, R10; float
45ED74:  MOV             R2, R0; float
45ED76:  MOV             R3, R5; unsigned __int16 *
45ED78:  STR.W           R11, [SP,#0x48+var_44]; float
45ED7C:  VSTR            S16, [SP,#0x48+var_48]
45ED80:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45ED84:  VLDR            S0, [SP,#0x48+var_3C]
45ED88:  MOV             R0, R4; this
45ED8A:  LDR.W           R1, =(aCred208 - 0x45ED96); "CRED208"
45ED8E:  VCVT.F32.U32    S0, S0
45ED92:  ADD             R1, PC; "CRED208"
45ED94:  VADD.F32        S0, S0, S18
45ED98:  VCVT.U32.F32    S0, S0
45ED9C:  VSTR            S0, [SP,#0x48+var_3C]
45EDA0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EDA4:  MOV             R1, R10; float
45EDA6:  MOV             R2, R0; float
45EDA8:  MOV             R3, R5; unsigned __int16 *
45EDAA:  STR.W           R8, [SP,#0x48+var_44]; float
45EDAE:  VSTR            S16, [SP,#0x48+var_48]
45EDB2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EDB6:  LDR.W           R1, =(aCred209 - 0x45EDC0); "CRED209"
45EDBA:  MOV             R0, R4; this
45EDBC:  ADD             R1, PC; "CRED209"
45EDBE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EDC2:  MOV             R1, R10; float
45EDC4:  MOV             R2, R0; float
45EDC6:  MOV             R3, R5; unsigned __int16 *
45EDC8:  STR.W           R11, [SP,#0x48+var_44]; float
45EDCC:  VSTR            S16, [SP,#0x48+var_48]
45EDD0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EDD4:  VLDR            S0, [SP,#0x48+var_3C]
45EDD8:  MOV             R0, R4; this
45EDDA:  LDR.W           R1, =(aCred210 - 0x45EDE6); "CRED210"
45EDDE:  VCVT.F32.U32    S0, S0
45EDE2:  ADD             R1, PC; "CRED210"
45EDE4:  VADD.F32        S0, S0, S18
45EDE8:  VCVT.U32.F32    S0, S0
45EDEC:  VSTR            S0, [SP,#0x48+var_3C]
45EDF0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EDF4:  MOV             R1, R10; float
45EDF6:  MOV             R2, R0; float
45EDF8:  MOV             R3, R5; unsigned __int16 *
45EDFA:  STR.W           R8, [SP,#0x48+var_44]; float
45EDFE:  VSTR            S16, [SP,#0x48+var_48]
45EE02:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EE06:  LDR.W           R1, =(aCred211 - 0x45EE10); "CRED211"
45EE0A:  MOV             R0, R4; this
45EE0C:  ADD             R1, PC; "CRED211"
45EE0E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EE12:  MOV             R1, R10; float
45EE14:  MOV             R2, R0; float
45EE16:  MOV             R3, R5; unsigned __int16 *
45EE18:  STR.W           R11, [SP,#0x48+var_44]; float
45EE1C:  VSTR            S16, [SP,#0x48+var_48]
45EE20:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EE24:  VLDR            S0, [SP,#0x48+var_3C]
45EE28:  MOV             R0, R4; this
45EE2A:  LDR.W           R1, =(aCred212 - 0x45EE36); "CRED212"
45EE2E:  VCVT.F32.U32    S0, S0
45EE32:  ADD             R1, PC; "CRED212"
45EE34:  VADD.F32        S0, S0, S18
45EE38:  VCVT.U32.F32    S0, S0
45EE3C:  VSTR            S0, [SP,#0x48+var_3C]
45EE40:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EE44:  MOV             R1, R10; float
45EE46:  MOV             R2, R0; float
45EE48:  MOV             R3, R5; unsigned __int16 *
45EE4A:  STR.W           R8, [SP,#0x48+var_44]; float
45EE4E:  VSTR            S16, [SP,#0x48+var_48]
45EE52:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EE56:  LDR.W           R1, =(aCred213 - 0x45EE60); "CRED213"
45EE5A:  MOV             R0, R4; this
45EE5C:  ADD             R1, PC; "CRED213"
45EE5E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EE62:  MOV             R1, R10; float
45EE64:  MOV             R2, R0; float
45EE66:  MOV             R3, R5; unsigned __int16 *
45EE68:  STR.W           R11, [SP,#0x48+var_44]; float
45EE6C:  VSTR            S16, [SP,#0x48+var_48]
45EE70:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EE74:  VLDR            S0, [SP,#0x48+var_3C]
45EE78:  MOV             R0, R4; this
45EE7A:  LDR.W           R1, =(aCred214 - 0x45EE86); "CRED214"
45EE7E:  VCVT.F32.U32    S0, S0
45EE82:  ADD             R1, PC; "CRED214"
45EE84:  VADD.F32        S0, S0, S18
45EE88:  VCVT.U32.F32    S0, S0
45EE8C:  VSTR            S0, [SP,#0x48+var_3C]
45EE90:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EE94:  MOV             R1, R10; float
45EE96:  MOV             R2, R0; float
45EE98:  MOV             R3, R5; unsigned __int16 *
45EE9A:  STR.W           R8, [SP,#0x48+var_44]; float
45EE9E:  VSTR            S16, [SP,#0x48+var_48]
45EEA2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EEA6:  LDR.W           R1, =(aCred215 - 0x45EEB0); "CRED215"
45EEAA:  MOV             R0, R4; this
45EEAC:  ADD             R1, PC; "CRED215"
45EEAE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EEB2:  MOV             R1, R10; float
45EEB4:  MOV             R2, R0; float
45EEB6:  MOV             R3, R5; unsigned __int16 *
45EEB8:  STR.W           R11, [SP,#0x48+var_44]; float
45EEBC:  VSTR            S16, [SP,#0x48+var_48]
45EEC0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EEC4:  LDR.W           R1, =(aCred216 - 0x45EECE); "CRED216"
45EEC8:  MOV             R0, R4; this
45EECA:  ADD             R1, PC; "CRED216"
45EECC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EED0:  MOV             R1, R10; float
45EED2:  MOV             R2, R0; float
45EED4:  MOV             R3, R5; unsigned __int16 *
45EED6:  STR.W           R11, [SP,#0x48+var_44]; float
45EEDA:  VSTR            S16, [SP,#0x48+var_48]
45EEDE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EEE2:  LDR.W           R1, =(aCred217 - 0x45EEEC); "CRED217"
45EEE6:  MOV             R0, R4; this
45EEE8:  ADD             R1, PC; "CRED217"
45EEEA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EEEE:  MOV             R1, R10; float
45EEF0:  MOV             R2, R0; float
45EEF2:  MOV             R3, R5; unsigned __int16 *
45EEF4:  STR.W           R11, [SP,#0x48+var_44]; float
45EEF8:  VSTR            S16, [SP,#0x48+var_48]
45EEFC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EF00:  VLDR            S0, [SP,#0x48+var_3C]
45EF04:  MOV             R0, R4; this
45EF06:  LDR.W           R1, =(aCred218 - 0x45EF12); "CRED218"
45EF0A:  VCVT.F32.U32    S0, S0
45EF0E:  ADD             R1, PC; "CRED218"
45EF10:  VADD.F32        S0, S0, S18
45EF14:  VCVT.U32.F32    S0, S0
45EF18:  VSTR            S0, [SP,#0x48+var_3C]
45EF1C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EF20:  MOV             R1, R10; float
45EF22:  MOV             R2, R0; float
45EF24:  MOV             R3, R5; unsigned __int16 *
45EF26:  STR.W           R8, [SP,#0x48+var_44]; float
45EF2A:  VSTR            S16, [SP,#0x48+var_48]
45EF2E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EF32:  LDR.W           R1, =(aCred219 - 0x45EF3C); "CRED219"
45EF36:  MOV             R0, R4; this
45EF38:  ADD             R1, PC; "CRED219"
45EF3A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EF3E:  MOV             R1, R10; float
45EF40:  MOV             R2, R0; float
45EF42:  MOV             R3, R5; unsigned __int16 *
45EF44:  STR.W           R11, [SP,#0x48+var_44]; float
45EF48:  VSTR            S16, [SP,#0x48+var_48]
45EF4C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EF50:  LDR.W           R1, =(aCred220 - 0x45EF5A); "CRED220"
45EF54:  MOV             R0, R4; this
45EF56:  ADD             R1, PC; "CRED220"
45EF58:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EF5C:  MOV             R1, R10; float
45EF5E:  MOV             R2, R0; float
45EF60:  MOV             R3, R5; unsigned __int16 *
45EF62:  STR.W           R11, [SP,#0x48+var_44]; float
45EF66:  VSTR            S16, [SP,#0x48+var_48]
45EF6A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EF6E:  LDR.W           R1, =(aCred221 - 0x45EF78); "CRED221"
45EF72:  MOV             R0, R4; this
45EF74:  ADD             R1, PC; "CRED221"
45EF76:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EF7A:  MOV             R1, R10; float
45EF7C:  MOV             R2, R0; float
45EF7E:  MOV             R3, R5; unsigned __int16 *
45EF80:  STR.W           R11, [SP,#0x48+var_44]; float
45EF84:  VSTR            S16, [SP,#0x48+var_48]
45EF88:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EF8C:  LDR.W           R1, =(aCred222 - 0x45EF96); "CRED222"
45EF90:  MOV             R0, R4; this
45EF92:  ADD             R1, PC; "CRED222"
45EF94:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EF98:  MOV             R1, R10; float
45EF9A:  MOV             R2, R0; float
45EF9C:  MOV             R3, R5; unsigned __int16 *
45EF9E:  STR.W           R11, [SP,#0x48+var_44]; float
45EFA2:  VSTR            S16, [SP,#0x48+var_48]
45EFA6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EFAA:  LDR.W           R1, =(aCred223 - 0x45EFB4); "CRED223"
45EFAE:  MOV             R0, R4; this
45EFB0:  ADD             R1, PC; "CRED223"
45EFB2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EFB6:  MOV             R1, R10; float
45EFB8:  MOV             R2, R0; float
45EFBA:  MOV             R3, R5; unsigned __int16 *
45EFBC:  STR.W           R11, [SP,#0x48+var_44]; float
45EFC0:  VSTR            S16, [SP,#0x48+var_48]
45EFC4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EFC8:  LDR.W           R1, =(aCred224 - 0x45EFD2); "CRED224"
45EFCC:  MOV             R0, R4; this
45EFCE:  ADD             R1, PC; "CRED224"
45EFD0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EFD4:  MOV             R1, R10; float
45EFD6:  MOV             R2, R0; float
45EFD8:  MOV             R3, R5; unsigned __int16 *
45EFDA:  STR.W           R11, [SP,#0x48+var_44]; float
45EFDE:  VSTR            S16, [SP,#0x48+var_48]
45EFE2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45EFE6:  LDR.W           R1, =(aCred225 - 0x45EFF0); "CRED225"
45EFEA:  MOV             R0, R4; this
45EFEC:  ADD             R1, PC; "CRED225"
45EFEE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45EFF2:  MOV             R1, R10; float
45EFF4:  MOV             R2, R0; float
45EFF6:  MOV             R3, R5; unsigned __int16 *
45EFF8:  STR.W           R11, [SP,#0x48+var_44]; float
45EFFC:  VSTR            S16, [SP,#0x48+var_48]
45F000:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F004:  LDR.W           R1, =(aCred226 - 0x45F00E); "CRED226"
45F008:  MOV             R0, R4; this
45F00A:  ADD             R1, PC; "CRED226"
45F00C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F010:  MOV             R1, R10; float
45F012:  MOV             R2, R0; float
45F014:  MOV             R3, R5; unsigned __int16 *
45F016:  STR.W           R11, [SP,#0x48+var_44]; float
45F01A:  VSTR            S16, [SP,#0x48+var_48]
45F01E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F022:  LDR.W           R1, =(aCred227 - 0x45F02C); "CRED227"
45F026:  MOV             R0, R4; this
45F028:  ADD             R1, PC; "CRED227"
45F02A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F02E:  MOV             R1, R10; float
45F030:  MOV             R2, R0; float
45F032:  MOV             R3, R5; unsigned __int16 *
45F034:  STR.W           R11, [SP,#0x48+var_44]; float
45F038:  VSTR            S16, [SP,#0x48+var_48]
45F03C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F040:  LDR.W           R1, =(aCred228 - 0x45F04A); "CRED228"
45F044:  MOV             R0, R4; this
45F046:  ADD             R1, PC; "CRED228"
45F048:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F04C:  MOV             R1, R10; float
45F04E:  MOV             R2, R0; float
45F050:  MOV             R3, R5; unsigned __int16 *
45F052:  STR.W           R11, [SP,#0x48+var_44]; float
45F056:  VSTR            S16, [SP,#0x48+var_48]
45F05A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F05E:  LDR.W           R1, =(aCred229 - 0x45F068); "CRED229"
45F062:  MOV             R0, R4; this
45F064:  ADD             R1, PC; "CRED229"
45F066:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F06A:  MOV             R1, R10; float
45F06C:  MOV             R2, R0; float
45F06E:  MOV             R3, R5; unsigned __int16 *
45F070:  STR.W           R11, [SP,#0x48+var_44]; float
45F074:  VSTR            S16, [SP,#0x48+var_48]
45F078:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F07C:  LDR.W           R1, =(aCred230 - 0x45F086); "CRED230"
45F080:  MOV             R0, R4; this
45F082:  ADD             R1, PC; "CRED230"
45F084:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F088:  MOV             R1, R10; float
45F08A:  MOV             R2, R0; float
45F08C:  MOV             R3, R5; unsigned __int16 *
45F08E:  STR.W           R11, [SP,#0x48+var_44]; float
45F092:  VSTR            S16, [SP,#0x48+var_48]
45F096:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F09A:  LDR.W           R1, =(aCred231 - 0x45F0A4); "CRED231"
45F09E:  MOV             R0, R4; this
45F0A0:  ADD             R1, PC; "CRED231"
45F0A2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F0A6:  MOV             R1, R10; float
45F0A8:  MOV             R2, R0; float
45F0AA:  MOV             R3, R5; unsigned __int16 *
45F0AC:  STR.W           R11, [SP,#0x48+var_44]; float
45F0B0:  VSTR            S16, [SP,#0x48+var_48]
45F0B4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F0B8:  LDR.W           R1, =(aCred232 - 0x45F0C2); "CRED232"
45F0BC:  MOV             R0, R4; this
45F0BE:  ADD             R1, PC; "CRED232"
45F0C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F0C4:  MOV             R1, R10; float
45F0C6:  MOV             R2, R0; float
45F0C8:  MOV             R3, R5; unsigned __int16 *
45F0CA:  STR.W           R11, [SP,#0x48+var_44]; float
45F0CE:  VSTR            S16, [SP,#0x48+var_48]
45F0D2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F0D6:  LDR.W           R1, =(aCred233 - 0x45F0E0); "CRED233"
45F0DA:  MOV             R0, R4; this
45F0DC:  ADD             R1, PC; "CRED233"
45F0DE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F0E2:  MOV             R1, R10; float
45F0E4:  MOV             R2, R0; float
45F0E6:  MOV             R3, R5; unsigned __int16 *
45F0E8:  STR.W           R11, [SP,#0x48+var_44]; float
45F0EC:  VSTR            S16, [SP,#0x48+var_48]
45F0F0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F0F4:  LDR.W           R1, =(aCred234 - 0x45F0FE); "CRED234"
45F0F8:  MOV             R0, R4; this
45F0FA:  ADD             R1, PC; "CRED234"
45F0FC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F100:  MOV             R1, R10; float
45F102:  MOV             R2, R0; float
45F104:  MOV             R3, R5; unsigned __int16 *
45F106:  STR.W           R11, [SP,#0x48+var_44]; float
45F10A:  VSTR            S16, [SP,#0x48+var_48]
45F10E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F112:  VLDR            S0, [SP,#0x48+var_3C]
45F116:  MOV             R0, R4; this
45F118:  LDR.W           R1, =(aCred235 - 0x45F124); "CRED235"
45F11C:  VCVT.F32.U32    S0, S0
45F120:  ADD             R1, PC; "CRED235"
45F122:  VADD.F32        S0, S0, S18
45F126:  VCVT.U32.F32    S0, S0
45F12A:  VSTR            S0, [SP,#0x48+var_3C]
45F12E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F132:  MOV             R1, R10; float
45F134:  MOV             R2, R0; float
45F136:  MOV             R3, R5; unsigned __int16 *
45F138:  STR.W           R8, [SP,#0x48+var_44]; float
45F13C:  VSTR            S16, [SP,#0x48+var_48]
45F140:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F144:  LDR.W           R1, =(aCred236 - 0x45F14E); "CRED236"
45F148:  MOV             R0, R4; this
45F14A:  ADD             R1, PC; "CRED236"
45F14C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F150:  MOV             R1, R10; float
45F152:  MOV             R2, R0; float
45F154:  MOV             R3, R5; unsigned __int16 *
45F156:  STR.W           R11, [SP,#0x48+var_44]; float
45F15A:  VSTR            S16, [SP,#0x48+var_48]
45F15E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F162:  VLDR            S0, [SP,#0x48+var_3C]
45F166:  MOV             R0, R4; this
45F168:  LDR.W           R1, =(aCred237 - 0x45F174); "CRED237"
45F16C:  VCVT.F32.U32    S0, S0
45F170:  ADD             R1, PC; "CRED237"
45F172:  VADD.F32        S0, S0, S18
45F176:  VCVT.U32.F32    S0, S0
45F17A:  VSTR            S0, [SP,#0x48+var_3C]
45F17E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F182:  MOV             R1, R10; float
45F184:  MOV             R2, R0; float
45F186:  MOV             R3, R5; unsigned __int16 *
45F188:  STR.W           R8, [SP,#0x48+var_44]; float
45F18C:  VSTR            S16, [SP,#0x48+var_48]
45F190:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F194:  LDR.W           R1, =(aCred238 - 0x45F19E); "CRED238"
45F198:  MOV             R0, R4; this
45F19A:  ADD             R1, PC; "CRED238"
45F19C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F1A0:  MOV             R1, R10; float
45F1A2:  MOV             R2, R0; float
45F1A4:  MOV             R3, R5; unsigned __int16 *
45F1A6:  STR.W           R11, [SP,#0x48+var_44]; float
45F1AA:  VSTR            S16, [SP,#0x48+var_48]
45F1AE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F1B2:  LDR.W           R1, =(aCred239 - 0x45F1BC); "CRED239"
45F1B6:  MOV             R0, R4; this
45F1B8:  ADD             R1, PC; "CRED239"
45F1BA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F1BE:  MOV             R1, R10; float
45F1C0:  MOV             R2, R0; float
45F1C2:  MOV             R3, R5; unsigned __int16 *
45F1C4:  STR.W           R11, [SP,#0x48+var_44]; float
45F1C8:  VSTR            S16, [SP,#0x48+var_48]
45F1CC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F1D0:  VLDR            S0, [SP,#0x48+var_3C]
45F1D4:  MOV             R0, R4; this
45F1D6:  LDR.W           R1, =(aCred240 - 0x45F1E2); "CRED240"
45F1DA:  VCVT.F32.U32    S0, S0
45F1DE:  ADD             R1, PC; "CRED240"
45F1E0:  VADD.F32        S0, S0, S18
45F1E4:  VCVT.U32.F32    S0, S0
45F1E8:  VSTR            S0, [SP,#0x48+var_3C]
45F1EC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F1F0:  MOV             R1, R10; float
45F1F2:  MOV             R2, R0; float
45F1F4:  MOV             R3, R5; unsigned __int16 *
45F1F6:  STR.W           R8, [SP,#0x48+var_44]; float
45F1FA:  VSTR            S16, [SP,#0x48+var_48]
45F1FE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F202:  LDR.W           R1, =(aCred241 - 0x45F20C); "CRED241"
45F206:  MOV             R0, R4; this
45F208:  ADD             R1, PC; "CRED241"
45F20A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F20E:  MOV             R1, R10; float
45F210:  MOV             R2, R0; float
45F212:  MOV             R3, R5; unsigned __int16 *
45F214:  STR.W           R11, [SP,#0x48+var_44]; float
45F218:  VSTR            S16, [SP,#0x48+var_48]
45F21C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F220:  LDR.W           R1, =(aCred242 - 0x45F22A); "CRED242"
45F224:  MOV             R0, R4; this
45F226:  ADD             R1, PC; "CRED242"
45F228:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F22C:  MOV             R1, R10; float
45F22E:  MOV             R2, R0; float
45F230:  MOV             R3, R5; unsigned __int16 *
45F232:  STR.W           R11, [SP,#0x48+var_44]; float
45F236:  VSTR            S16, [SP,#0x48+var_48]
45F23A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F23E:  LDR.W           R1, =(aCred243 - 0x45F248); "CRED243"
45F242:  MOV             R0, R4; this
45F244:  ADD             R1, PC; "CRED243"
45F246:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F24A:  MOV             R1, R10; float
45F24C:  MOV             R2, R0; float
45F24E:  MOV             R3, R5; unsigned __int16 *
45F250:  STR.W           R11, [SP,#0x48+var_44]; float
45F254:  VSTR            S16, [SP,#0x48+var_48]
45F258:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F25C:  LDR.W           R1, =(aCred244 - 0x45F266); "CRED244"
45F260:  MOV             R0, R4; this
45F262:  ADD             R1, PC; "CRED244"
45F264:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F268:  MOV             R1, R10; float
45F26A:  MOV             R2, R0; float
45F26C:  MOV             R3, R5; unsigned __int16 *
45F26E:  STR.W           R11, [SP,#0x48+var_44]; float
45F272:  VSTR            S16, [SP,#0x48+var_48]
45F276:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F27A:  LDR.W           R1, =(aCred245 - 0x45F284); "CRED245"
45F27E:  MOV             R0, R4; this
45F280:  ADD             R1, PC; "CRED245"
45F282:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F286:  MOV             R1, R10; float
45F288:  MOV             R2, R0; float
45F28A:  MOV             R3, R5; unsigned __int16 *
45F28C:  STR.W           R11, [SP,#0x48+var_44]; float
45F290:  VSTR            S16, [SP,#0x48+var_48]
45F294:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F298:  VLDR            S0, [SP,#0x48+var_3C]
45F29C:  MOV             R0, R4; this
45F29E:  LDR.W           R1, =(aCred246 - 0x45F2AA); "CRED246"
45F2A2:  VCVT.F32.U32    S0, S0
45F2A6:  ADD             R1, PC; "CRED246"
45F2A8:  VADD.F32        S0, S0, S18
45F2AC:  VCVT.U32.F32    S0, S0
45F2B0:  VSTR            S0, [SP,#0x48+var_3C]
45F2B4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F2B8:  MOV             R1, R10; float
45F2BA:  MOV             R2, R0; float
45F2BC:  MOV             R3, R5; unsigned __int16 *
45F2BE:  STR.W           R8, [SP,#0x48+var_44]; float
45F2C2:  VSTR            S16, [SP,#0x48+var_48]
45F2C6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F2CA:  LDR.W           R1, =(aCred247 - 0x45F2D4); "CRED247"
45F2CE:  MOV             R0, R4; this
45F2D0:  ADD             R1, PC; "CRED247"
45F2D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F2D6:  MOV             R1, R10; float
45F2D8:  MOV             R2, R0; float
45F2DA:  MOV             R3, R5; unsigned __int16 *
45F2DC:  STR.W           R11, [SP,#0x48+var_44]; float
45F2E0:  VSTR            S16, [SP,#0x48+var_48]
45F2E4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F2E8:  VLDR            S0, [SP,#0x48+var_3C]
45F2EC:  MOV             R0, R4; this
45F2EE:  LDR.W           R1, =(aCred248 - 0x45F2FA); "CRED248"
45F2F2:  VCVT.F32.U32    S0, S0
45F2F6:  ADD             R1, PC; "CRED248"
45F2F8:  VADD.F32        S0, S0, S18
45F2FC:  VCVT.U32.F32    S0, S0
45F300:  VSTR            S0, [SP,#0x48+var_3C]
45F304:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F308:  MOV             R1, R10; float
45F30A:  MOV             R2, R0; float
45F30C:  MOV             R3, R5; unsigned __int16 *
45F30E:  STR.W           R8, [SP,#0x48+var_44]; float
45F312:  VSTR            S16, [SP,#0x48+var_48]
45F316:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F31A:  LDR.W           R1, =(aCred249 - 0x45F324); "CRED249"
45F31E:  MOV             R0, R4; this
45F320:  ADD             R1, PC; "CRED249"
45F322:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F326:  MOV             R1, R10; float
45F328:  MOV             R2, R0; float
45F32A:  MOV             R3, R5; unsigned __int16 *
45F32C:  STR.W           R11, [SP,#0x48+var_44]; float
45F330:  VSTR            S16, [SP,#0x48+var_48]
45F334:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F338:  LDR.W           R1, =(aCred250 - 0x45F342); "CRED250"
45F33C:  MOV             R0, R4; this
45F33E:  ADD             R1, PC; "CRED250"
45F340:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F344:  MOV             R1, R10; float
45F346:  MOV             R2, R0; float
45F348:  MOV             R3, R5; unsigned __int16 *
45F34A:  STR.W           R11, [SP,#0x48+var_44]; float
45F34E:  VSTR            S16, [SP,#0x48+var_48]
45F352:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F356:  VLDR            S0, [SP,#0x48+var_3C]
45F35A:  MOV             R0, R4; this
45F35C:  LDR.W           R1, =(aCred251 - 0x45F368); "CRED251"
45F360:  VCVT.F32.U32    S0, S0
45F364:  ADD             R1, PC; "CRED251"
45F366:  VADD.F32        S0, S0, S18
45F36A:  VCVT.U32.F32    S0, S0
45F36E:  VSTR            S0, [SP,#0x48+var_3C]
45F372:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F376:  MOV             R1, R10; float
45F378:  MOV             R2, R0; float
45F37A:  MOV             R3, R5; unsigned __int16 *
45F37C:  STR.W           R8, [SP,#0x48+var_44]; float
45F380:  VSTR            S16, [SP,#0x48+var_48]
45F384:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F388:  LDR.W           R1, =(aCred252 - 0x45F392); "CRED252"
45F38C:  MOV             R0, R4; this
45F38E:  ADD             R1, PC; "CRED252"
45F390:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F394:  MOV             R1, R10; float
45F396:  MOV             R2, R0; float
45F398:  MOV             R3, R5; unsigned __int16 *
45F39A:  STR.W           R11, [SP,#0x48+var_44]; float
45F39E:  VSTR            S16, [SP,#0x48+var_48]
45F3A2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F3A6:  LDR.W           R1, =(aCred253 - 0x45F3B0); "CRED253"
45F3AA:  MOV             R0, R4; this
45F3AC:  ADD             R1, PC; "CRED253"
45F3AE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F3B2:  MOV             R1, R10; float
45F3B4:  MOV             R2, R0; float
45F3B6:  MOV             R3, R5; unsigned __int16 *
45F3B8:  STR.W           R11, [SP,#0x48+var_44]; float
45F3BC:  VSTR            S16, [SP,#0x48+var_48]
45F3C0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F3C4:  VLDR            S0, [SP,#0x48+var_3C]
45F3C8:  MOV             R0, R4; this
45F3CA:  LDR.W           R1, =(aCred254 - 0x45F3D6); "CRED254"
45F3CE:  VCVT.F32.U32    S0, S0
45F3D2:  ADD             R1, PC; "CRED254"
45F3D4:  VADD.F32        S0, S0, S18
45F3D8:  VCVT.U32.F32    S0, S0
45F3DC:  VSTR            S0, [SP,#0x48+var_3C]
45F3E0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F3E4:  MOV             R1, R10; float
45F3E6:  MOV             R2, R0; float
45F3E8:  MOV             R3, R5; unsigned __int16 *
45F3EA:  STR.W           R8, [SP,#0x48+var_44]; float
45F3EE:  VSTR            S16, [SP,#0x48+var_48]
45F3F2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F3F6:  LDR.W           R1, =(aCred255 - 0x45F400); "CRED255"
45F3FA:  MOV             R0, R4; this
45F3FC:  ADD             R1, PC; "CRED255"
45F3FE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F402:  MOV             R1, R10; float
45F404:  MOV             R2, R0; float
45F406:  MOV             R3, R5; unsigned __int16 *
45F408:  STR.W           R11, [SP,#0x48+var_44]; float
45F40C:  VSTR            S16, [SP,#0x48+var_48]
45F410:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F414:  LDR.W           R1, =(aCred256 - 0x45F41E); "CRED256"
45F418:  MOV             R0, R4; this
45F41A:  ADD             R1, PC; "CRED256"
45F41C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F420:  MOV             R1, R10; float
45F422:  MOV             R2, R0; float
45F424:  MOV             R3, R5; unsigned __int16 *
45F426:  STR.W           R11, [SP,#0x48+var_44]; float
45F42A:  VSTR            S16, [SP,#0x48+var_48]
45F42E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F432:  VLDR            S0, [SP,#0x48+var_3C]
45F436:  MOV             R0, R4; this
45F438:  LDR.W           R1, =(aCred257 - 0x45F444); "CRED257"
45F43C:  VCVT.F32.U32    S0, S0
45F440:  ADD             R1, PC; "CRED257"
45F442:  VADD.F32        S0, S0, S18
45F446:  VCVT.U32.F32    S0, S0
45F44A:  VSTR            S0, [SP,#0x48+var_3C]
45F44E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F452:  MOV             R1, R10; float
45F454:  MOV             R2, R0; float
45F456:  MOV             R3, R5; unsigned __int16 *
45F458:  STR.W           R8, [SP,#0x48+var_44]; float
45F45C:  VSTR            S16, [SP,#0x48+var_48]
45F460:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F464:  LDR.W           R1, =(aCred258 - 0x45F46E); "CRED258"
45F468:  MOV             R0, R4; this
45F46A:  ADD             R1, PC; "CRED258"
45F46C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F470:  MOV             R1, R10; float
45F472:  MOV             R2, R0; float
45F474:  MOV             R3, R5; unsigned __int16 *
45F476:  STR.W           R11, [SP,#0x48+var_44]; float
45F47A:  VSTR            S16, [SP,#0x48+var_48]
45F47E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F482:  VLDR            S0, [SP,#0x48+var_3C]
45F486:  MOV             R0, R4; this
45F488:  LDR.W           R1, =(aCred259 - 0x45F494); "CRED259"
45F48C:  VCVT.F32.U32    S0, S0
45F490:  ADD             R1, PC; "CRED259"
45F492:  VADD.F32        S0, S0, S18
45F496:  VCVT.U32.F32    S0, S0
45F49A:  VSTR            S0, [SP,#0x48+var_3C]
45F49E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F4A2:  MOV             R1, R10; float
45F4A4:  MOV             R2, R0; float
45F4A6:  MOV             R3, R5; unsigned __int16 *
45F4A8:  STR.W           R8, [SP,#0x48+var_44]; float
45F4AC:  VSTR            S16, [SP,#0x48+var_48]
45F4B0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F4B4:  LDR.W           R1, =(aCred260 - 0x45F4BE); "CRED260"
45F4B8:  MOV             R0, R4; this
45F4BA:  ADD             R1, PC; "CRED260"
45F4BC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F4C0:  MOV             R1, R10; float
45F4C2:  MOV             R2, R0; float
45F4C4:  MOV             R3, R5; unsigned __int16 *
45F4C6:  STR.W           R11, [SP,#0x48+var_44]; float
45F4CA:  VSTR            S16, [SP,#0x48+var_48]
45F4CE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F4D2:  VLDR            S0, [SP,#0x48+var_3C]
45F4D6:  MOV             R0, R4; this
45F4D8:  LDR.W           R1, =(aCred261 - 0x45F4E4); "CRED261"
45F4DC:  VCVT.F32.U32    S0, S0
45F4E0:  ADD             R1, PC; "CRED261"
45F4E2:  VADD.F32        S0, S0, S18
45F4E6:  VCVT.U32.F32    S0, S0
45F4EA:  VSTR            S0, [SP,#0x48+var_3C]
45F4EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F4F2:  MOV             R1, R10; float
45F4F4:  MOV             R2, R0; float
45F4F6:  MOV             R3, R5; unsigned __int16 *
45F4F8:  STR.W           R8, [SP,#0x48+var_44]; float
45F4FC:  VSTR            S16, [SP,#0x48+var_48]
45F500:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F504:  VLDR            S0, [SP,#0x48+var_3C]
45F508:  MOV             R0, R4; this
45F50A:  LDR.W           R1, =(aCred262 - 0x45F516); "CRED262"
45F50E:  VCVT.F32.U32    S0, S0
45F512:  ADD             R1, PC; "CRED262"
45F514:  VADD.F32        S0, S0, S20
45F518:  VCVT.U32.F32    S0, S0
45F51C:  VSTR            S0, [SP,#0x48+var_3C]
45F520:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F524:  MOV             R1, R10; float
45F526:  MOV             R2, R0; float
45F528:  MOV             R3, R5; unsigned __int16 *
45F52A:  STR.W           R11, [SP,#0x48+var_44]; float
45F52E:  VSTR            S16, [SP,#0x48+var_48]
45F532:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F536:  VLDR            S0, [SP,#0x48+var_3C]
45F53A:  MOV             R0, R4; this
45F53C:  LDR.W           R1, =(aCred263 - 0x45F548); "CRED263"
45F540:  VCVT.F32.U32    S0, S0
45F544:  ADD             R1, PC; "CRED263"
45F546:  VADD.F32        S0, S0, S18
45F54A:  VCVT.U32.F32    S0, S0
45F54E:  VSTR            S0, [SP,#0x48+var_3C]
45F552:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F556:  MOV             R1, R10; float
45F558:  MOV             R2, R0; float
45F55A:  MOV             R3, R5; unsigned __int16 *
45F55C:  STR.W           R8, [SP,#0x48+var_44]; float
45F560:  VSTR            S16, [SP,#0x48+var_48]
45F564:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F568:  LDR.W           R1, =(aCred264 - 0x45F572); "CRED264"
45F56C:  MOV             R0, R4; this
45F56E:  ADD             R1, PC; "CRED264"
45F570:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F574:  MOV             R1, R10; float
45F576:  MOV             R2, R0; float
45F578:  MOV             R3, R5; unsigned __int16 *
45F57A:  STR.W           R11, [SP,#0x48+var_44]; float
45F57E:  VSTR            S16, [SP,#0x48+var_48]
45F582:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F586:  VLDR            S0, [SP,#0x48+var_3C]
45F58A:  MOV             R0, R4; this
45F58C:  LDR.W           R1, =(aCred265 - 0x45F598); "CRED265"
45F590:  VCVT.F32.U32    S0, S0
45F594:  ADD             R1, PC; "CRED265"
45F596:  VADD.F32        S0, S0, S18
45F59A:  VCVT.U32.F32    S0, S0
45F59E:  VSTR            S0, [SP,#0x48+var_3C]
45F5A2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F5A6:  MOV             R1, R10; float
45F5A8:  MOV             R2, R0; float
45F5AA:  MOV             R3, R5; unsigned __int16 *
45F5AC:  STR.W           R8, [SP,#0x48+var_44]; float
45F5B0:  VSTR            S16, [SP,#0x48+var_48]
45F5B4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F5B8:  LDR.W           R1, =(aCred266 - 0x45F5C2); "CRED266"
45F5BC:  MOV             R0, R4; this
45F5BE:  ADD             R1, PC; "CRED266"
45F5C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F5C4:  MOV             R1, R10; float
45F5C6:  MOV             R2, R0; float
45F5C8:  MOV             R3, R5; unsigned __int16 *
45F5CA:  STR.W           R11, [SP,#0x48+var_44]; float
45F5CE:  VSTR            S16, [SP,#0x48+var_48]
45F5D2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F5D6:  LDR.W           R1, =(aCred267 - 0x45F5E0); "CRED267"
45F5DA:  MOV             R0, R4; this
45F5DC:  ADD             R1, PC; "CRED267"
45F5DE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F5E2:  MOV             R1, R10; float
45F5E4:  MOV             R2, R0; float
45F5E6:  MOV             R3, R5; unsigned __int16 *
45F5E8:  STR.W           R11, [SP,#0x48+var_44]; float
45F5EC:  VSTR            S16, [SP,#0x48+var_48]
45F5F0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F5F4:  VLDR            S0, [SP,#0x48+var_3C]
45F5F8:  MOV             R0, R4; this
45F5FA:  LDR.W           R1, =(aCred999 - 0x45F606); "CRED999"
45F5FE:  VCVT.F32.U32    S0, S0
45F602:  ADD             R1, PC; "CRED999"
45F604:  VADD.F32        S0, S0, S18
45F608:  VCVT.U32.F32    S0, S0
45F60C:  VSTR            S0, [SP,#0x48+var_3C]
45F610:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F614:  MOV             R1, R10; float
45F616:  MOV             R2, R0; float
45F618:  MOV             R3, R5; unsigned __int16 *
45F61A:  STR.W           R8, [SP,#0x48+var_44]; float
45F61E:  VSTR            S16, [SP,#0x48+var_48]
45F622:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F626:  VLDR            S0, [SP,#0x48+var_3C]
45F62A:  MOV             R0, R4; this
45F62C:  LDR.W           R1, =(aCred998 - 0x45F638); "CRED998"
45F630:  VCVT.F32.U32    S0, S0
45F634:  ADD             R1, PC; "CRED998"
45F636:  VADD.F32        S0, S0, S20
45F63A:  VCVT.U32.F32    S0, S0
45F63E:  VSTR            S0, [SP,#0x48+var_3C]
45F642:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F646:  MOV             R1, R10; float
45F648:  MOV             R2, R0; float
45F64A:  MOV             R3, R5; unsigned __int16 *
45F64C:  STR.W           R11, [SP,#0x48+var_44]; float
45F650:  VSTR            S16, [SP,#0x48+var_48]
45F654:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F658:  VLDR            S0, [SP,#0x48+var_3C]
45F65C:  MOV             R0, R4; this
45F65E:  LDR.W           R1, =(aCred268 - 0x45F66A); "CRED268"
45F662:  VCVT.F32.U32    S0, S0
45F666:  ADD             R1, PC; "CRED268"
45F668:  VADD.F32        S0, S0, S18
45F66C:  VCVT.U32.F32    S0, S0
45F670:  VSTR            S0, [SP,#0x48+var_3C]
45F674:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F678:  MOV             R1, R10; float
45F67A:  MOV             R2, R0; float
45F67C:  MOV             R3, R5; unsigned __int16 *
45F67E:  STR.W           R8, [SP,#0x48+var_44]; float
45F682:  VSTR            S16, [SP,#0x48+var_48]
45F686:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F68A:  LDR.W           R1, =(aCred269 - 0x45F694); "CRED269"
45F68E:  MOV             R0, R4; this
45F690:  ADD             R1, PC; "CRED269"
45F692:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F696:  MOV             R1, R10; float
45F698:  MOV             R2, R0; float
45F69A:  MOV             R3, R5; unsigned __int16 *
45F69C:  STR.W           R11, [SP,#0x48+var_44]; float
45F6A0:  VSTR            S16, [SP,#0x48+var_48]
45F6A4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F6A8:  LDR.W           R1, =(aCred270 - 0x45F6B2); "CRED270"
45F6AC:  MOV             R0, R4; this
45F6AE:  ADD             R1, PC; "CRED270"
45F6B0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F6B4:  MOV             R1, R10; float
45F6B6:  MOV             R2, R0; float
45F6B8:  MOV             R3, R5; unsigned __int16 *
45F6BA:  STR.W           R11, [SP,#0x48+var_44]; float
45F6BE:  VSTR            S16, [SP,#0x48+var_48]
45F6C2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F6C6:  LDR.W           R1, =(aCred271 - 0x45F6D0); "CRED271"
45F6CA:  MOV             R0, R4; this
45F6CC:  ADD             R1, PC; "CRED271"
45F6CE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F6D2:  MOV             R1, R10; float
45F6D4:  MOV             R2, R0; float
45F6D6:  MOV             R3, R5; unsigned __int16 *
45F6D8:  STR.W           R11, [SP,#0x48+var_44]; float
45F6DC:  VSTR            S16, [SP,#0x48+var_48]
45F6E0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F6E4:  LDR.W           R1, =(aCred272 - 0x45F6EE); "CRED272"
45F6E8:  MOV             R0, R4; this
45F6EA:  ADD             R1, PC; "CRED272"
45F6EC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F6F0:  MOV             R1, R10; float
45F6F2:  MOV             R2, R0; float
45F6F4:  MOV             R3, R5; unsigned __int16 *
45F6F6:  STR.W           R11, [SP,#0x48+var_44]; float
45F6FA:  VSTR            S16, [SP,#0x48+var_48]
45F6FE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F702:  LDR.W           R1, =(aCred273 - 0x45F70C); "CRED273"
45F706:  MOV             R0, R4; this
45F708:  ADD             R1, PC; "CRED273"
45F70A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F70E:  MOV             R1, R10; float
45F710:  MOV             R2, R0; float
45F712:  MOV             R3, R5; unsigned __int16 *
45F714:  STR.W           R11, [SP,#0x48+var_44]; float
45F718:  VSTR            S16, [SP,#0x48+var_48]
45F71C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F720:  VLDR            S0, [SP,#0x48+var_3C]
45F724:  MOV             R0, R4; this
45F726:  LDR.W           R1, =(aCred274 - 0x45F732); "CRED274"
45F72A:  VCVT.F32.U32    S0, S0
45F72E:  ADD             R1, PC; "CRED274"
45F730:  VADD.F32        S0, S0, S18
45F734:  VCVT.U32.F32    S0, S0
45F738:  VSTR            S0, [SP,#0x48+var_3C]
45F73C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F740:  MOV             R1, R10; float
45F742:  MOV             R2, R0; float
45F744:  MOV             R3, R5; unsigned __int16 *
45F746:  STR.W           R8, [SP,#0x48+var_44]; float
45F74A:  VSTR            S16, [SP,#0x48+var_48]
45F74E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F752:  LDR.W           R1, =(aCred275 - 0x45F75C); "CRED275"
45F756:  MOV             R0, R4; this
45F758:  ADD             R1, PC; "CRED275"
45F75A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F75E:  MOV             R1, R10; float
45F760:  MOV             R2, R0; float
45F762:  MOV             R3, R5; unsigned __int16 *
45F764:  STR.W           R11, [SP,#0x48+var_44]; float
45F768:  VSTR            S16, [SP,#0x48+var_48]
45F76C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F770:  LDR.W           R1, =(aCred276 - 0x45F77A); "CRED276"
45F774:  MOV             R0, R4; this
45F776:  ADD             R1, PC; "CRED276"
45F778:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F77C:  MOV             R1, R10; float
45F77E:  MOV             R2, R0; float
45F780:  MOV             R3, R5; unsigned __int16 *
45F782:  STR.W           R11, [SP,#0x48+var_44]; float
45F786:  VSTR            S16, [SP,#0x48+var_48]
45F78A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F78E:  VLDR            S0, [SP,#0x48+var_3C]
45F792:  MOV             R0, R4; this
45F794:  LDR.W           R1, =(aCred277 - 0x45F7A0); "CRED277"
45F798:  VCVT.F32.U32    S0, S0
45F79C:  ADD             R1, PC; "CRED277"
45F79E:  VADD.F32        S0, S0, S18
45F7A2:  VCVT.U32.F32    S0, S0
45F7A6:  VCVT.F32.U32    S0, S0
45F7AA:  VADD.F32        S0, S0, S18
45F7AE:  VCVT.U32.F32    S0, S0
45F7B2:  VSTR            S0, [SP,#0x48+var_3C]
45F7B6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F7BA:  MOV             R1, R10; float
45F7BC:  MOV             R2, R0; float
45F7BE:  MOV             R3, R5; unsigned __int16 *
45F7C0:  STR.W           R8, [SP,#0x48+var_44]; float
45F7C4:  VSTR            S16, [SP,#0x48+var_48]
45F7C8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F7CC:  VLDR            S0, [SP,#0x48+var_3C]
45F7D0:  MOV             R0, R4; this
45F7D2:  LDR.W           R1, =(aCred278 - 0x45F7DE); "CRED278"
45F7D6:  VCVT.F32.U32    S0, S0
45F7DA:  ADD             R1, PC; "CRED278"
45F7DC:  VADD.F32        S0, S0, S18
45F7E0:  VCVT.U32.F32    S0, S0
45F7E4:  VSTR            S0, [SP,#0x48+var_3C]
45F7E8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F7EC:  MOV             R1, R10; float
45F7EE:  MOV             R2, R0; float
45F7F0:  MOV             R3, R5; unsigned __int16 *
45F7F2:  STR.W           R8, [SP,#0x48+var_44]; float
45F7F6:  VSTR            S16, [SP,#0x48+var_48]
45F7FA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F7FE:  LDR.W           R1, =(aCred279 - 0x45F808); "CRED279"
45F802:  MOV             R0, R4; this
45F804:  ADD             R1, PC; "CRED279"
45F806:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F80A:  MOVW            R6, #0xAE14
45F80E:  MOV             R2, R0; float
45F810:  MOVT            R6, #0x3F47
45F814:  MOV             R3, R5; unsigned __int16 *
45F816:  MOV             R1, R6; float
45F818:  STR.W           R11, [SP,#0x48+var_44]; float
45F81C:  VSTR            S16, [SP,#0x48+var_48]
45F820:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F824:  VLDR            S0, [SP,#0x48+var_3C]
45F828:  VMOV.F32        S20, #12.5
45F82C:  LDR.W           R1, =(aCred280 - 0x45F83A); "CRED280"
45F830:  MOV             R0, R4; this
45F832:  VCVT.F32.U32    S0, S0
45F836:  ADD             R1, PC; "CRED280"
45F838:  VADD.F32        S0, S0, S20
45F83C:  VCVT.U32.F32    S0, S0
45F840:  VSTR            S0, [SP,#0x48+var_3C]
45F844:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F848:  MOV             R1, R6; float
45F84A:  MOV             R2, R0; float
45F84C:  MOV             R3, R5; unsigned __int16 *
45F84E:  STR.W           R11, [SP,#0x48+var_44]; float
45F852:  VSTR            S16, [SP,#0x48+var_48]
45F856:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F85A:  LDR.W           R1, =(aCred281 - 0x45F864); "CRED281"
45F85E:  MOV             R0, R4; this
45F860:  ADD             R1, PC; "CRED281"
45F862:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F866:  MOV             R1, R6; float
45F868:  MOV             R2, R0; float
45F86A:  MOV             R3, R5; unsigned __int16 *
45F86C:  STR.W           R11, [SP,#0x48+var_44]; float
45F870:  VSTR            S16, [SP,#0x48+var_48]
45F874:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F878:  LDR.W           R1, =(aCred282 - 0x45F882); "CRED282"
45F87C:  MOV             R0, R4; this
45F87E:  ADD             R1, PC; "CRED282"
45F880:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F884:  MOV             R1, R6; float
45F886:  MOV             R2, R0; float
45F888:  MOV             R3, R5; unsigned __int16 *
45F88A:  STR.W           R11, [SP,#0x48+var_44]; float
45F88E:  VSTR            S16, [SP,#0x48+var_48]
45F892:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F896:  LDR.W           R1, =(aCred283 - 0x45F8A0); "CRED283"
45F89A:  MOV             R0, R4; this
45F89C:  ADD             R1, PC; "CRED283"
45F89E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F8A2:  MOV             R1, R6; float
45F8A4:  MOV             R2, R0; float
45F8A6:  MOV             R3, R5; unsigned __int16 *
45F8A8:  STR.W           R11, [SP,#0x48+var_44]; float
45F8AC:  VSTR            S16, [SP,#0x48+var_48]
45F8B0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F8B4:  LDR.W           R1, =(aCred284 - 0x45F8BE); "CRED284"
45F8B8:  MOV             R0, R4; this
45F8BA:  ADD             R1, PC; "CRED284"
45F8BC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F8C0:  MOV             R1, R6; float
45F8C2:  MOV             R2, R0; float
45F8C4:  MOV             R3, R5; unsigned __int16 *
45F8C6:  STR.W           R11, [SP,#0x48+var_44]; float
45F8CA:  VSTR            S16, [SP,#0x48+var_48]
45F8CE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F8D2:  LDR.W           R1, =(aCred285 - 0x45F8DC); "CRED285"
45F8D6:  MOV             R0, R4; this
45F8D8:  ADD             R1, PC; "CRED285"
45F8DA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F8DE:  MOV             R1, R6; float
45F8E0:  MOV             R2, R0; float
45F8E2:  MOV             R3, R5; unsigned __int16 *
45F8E4:  STR.W           R11, [SP,#0x48+var_44]; float
45F8E8:  VSTR            S16, [SP,#0x48+var_48]
45F8EC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F8F0:  LDR.W           R1, =(aCred286 - 0x45F8FA); "CRED286"
45F8F4:  MOV             R0, R4; this
45F8F6:  ADD             R1, PC; "CRED286"
45F8F8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F8FC:  MOV             R1, R6; float
45F8FE:  MOV             R2, R0; float
45F900:  MOV             R3, R5; unsigned __int16 *
45F902:  STR.W           R11, [SP,#0x48+var_44]; float
45F906:  VSTR            S16, [SP,#0x48+var_48]
45F90A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F90E:  LDR.W           R1, =(aCred287 - 0x45F918); "CRED287"
45F912:  MOV             R0, R4; this
45F914:  ADD             R1, PC; "CRED287"
45F916:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F91A:  MOV             R1, R6; float
45F91C:  MOV             R2, R0; float
45F91E:  MOV             R3, R5; unsigned __int16 *
45F920:  STR.W           R11, [SP,#0x48+var_44]; float
45F924:  VSTR            S16, [SP,#0x48+var_48]
45F928:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F92C:  LDR.W           R1, =(aCred288 - 0x45F936); "CRED288"
45F930:  MOV             R0, R4; this
45F932:  ADD             R1, PC; "CRED288"
45F934:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F938:  MOV             R1, R6; float
45F93A:  MOV             R2, R0; float
45F93C:  MOV             R3, R5; unsigned __int16 *
45F93E:  STR.W           R11, [SP,#0x48+var_44]; float
45F942:  VSTR            S16, [SP,#0x48+var_48]
45F946:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F94A:  LDR.W           R1, =(aCred289 - 0x45F954); "CRED289"
45F94E:  MOV             R0, R4; this
45F950:  ADD             R1, PC; "CRED289"
45F952:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F956:  MOV             R1, R6; float
45F958:  MOV             R2, R0; float
45F95A:  MOV             R3, R5; unsigned __int16 *
45F95C:  STR.W           R11, [SP,#0x48+var_44]; float
45F960:  VSTR            S16, [SP,#0x48+var_48]
45F964:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F968:  LDR.W           R1, =(aCred290 - 0x45F972); "CRED290"
45F96C:  MOV             R0, R4; this
45F96E:  ADD             R1, PC; "CRED290"
45F970:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F974:  MOV             R1, R6; float
45F976:  MOV             R2, R0; float
45F978:  MOV             R3, R5; unsigned __int16 *
45F97A:  STR.W           R11, [SP,#0x48+var_44]; float
45F97E:  VSTR            S16, [SP,#0x48+var_48]
45F982:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F986:  LDR.W           R1, =(aCred291 - 0x45F990); "CRED291"
45F98A:  MOV             R0, R4; this
45F98C:  ADD             R1, PC; "CRED291"
45F98E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F992:  MOV             R1, R6; float
45F994:  MOV             R2, R0; float
45F996:  MOV             R3, R5; unsigned __int16 *
45F998:  STR.W           R11, [SP,#0x48+var_44]; float
45F99C:  VSTR            S16, [SP,#0x48+var_48]
45F9A0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F9A4:  LDR.W           R1, =(aCred292 - 0x45F9AE); "CRED292"
45F9A8:  MOV             R0, R4; this
45F9AA:  ADD             R1, PC; "CRED292"
45F9AC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F9B0:  MOV             R1, R6; float
45F9B2:  MOV             R2, R0; float
45F9B4:  MOV             R3, R5; unsigned __int16 *
45F9B6:  STR.W           R11, [SP,#0x48+var_44]; float
45F9BA:  VSTR            S16, [SP,#0x48+var_48]
45F9BE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F9C2:  LDR.W           R1, =(aCred293 - 0x45F9CC); "CRED293"
45F9C6:  MOV             R0, R4; this
45F9C8:  ADD             R1, PC; "CRED293"
45F9CA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F9CE:  MOV             R1, R6; float
45F9D0:  MOV             R2, R0; float
45F9D2:  MOV             R3, R5; unsigned __int16 *
45F9D4:  STR.W           R11, [SP,#0x48+var_44]; float
45F9D8:  VSTR            S16, [SP,#0x48+var_48]
45F9DC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F9E0:  LDR.W           R1, =(aCred294 - 0x45F9EA); "CRED294"
45F9E4:  MOV             R0, R4; this
45F9E6:  ADD             R1, PC; "CRED294"
45F9E8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45F9EC:  MOV             R1, R6; float
45F9EE:  MOV             R2, R0; float
45F9F0:  MOV             R3, R5; unsigned __int16 *
45F9F2:  STR.W           R11, [SP,#0x48+var_44]; float
45F9F6:  VSTR            S16, [SP,#0x48+var_48]
45F9FA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45F9FE:  LDR.W           R1, =(aCred295 - 0x45FA08); "CRED295"
45FA02:  MOV             R0, R4; this
45FA04:  ADD             R1, PC; "CRED295"
45FA06:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FA0A:  MOV             R1, R6; float
45FA0C:  MOV             R2, R0; float
45FA0E:  MOV             R3, R5; unsigned __int16 *
45FA10:  STR.W           R11, [SP,#0x48+var_44]; float
45FA14:  VSTR            S16, [SP,#0x48+var_48]
45FA18:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FA1C:  LDR.W           R1, =(aCred296 - 0x45FA26); "CRED296"
45FA20:  MOV             R0, R4; this
45FA22:  ADD             R1, PC; "CRED296"
45FA24:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FA28:  MOV             R1, R6; float
45FA2A:  MOV             R2, R0; float
45FA2C:  MOV             R3, R5; unsigned __int16 *
45FA2E:  STR.W           R11, [SP,#0x48+var_44]; float
45FA32:  VSTR            S16, [SP,#0x48+var_48]
45FA36:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FA3A:  LDR.W           R1, =(aCred297 - 0x45FA44); "CRED297"
45FA3E:  MOV             R0, R4; this
45FA40:  ADD             R1, PC; "CRED297"
45FA42:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FA46:  MOV             R1, R6; float
45FA48:  MOV             R2, R0; float
45FA4A:  MOV             R3, R5; unsigned __int16 *
45FA4C:  STR.W           R11, [SP,#0x48+var_44]; float
45FA50:  VSTR            S16, [SP,#0x48+var_48]
45FA54:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FA58:  LDR.W           R1, =(aCred298 - 0x45FA62); "CRED298"
45FA5C:  MOV             R0, R4; this
45FA5E:  ADD             R1, PC; "CRED298"
45FA60:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FA64:  MOV             R1, R6; float
45FA66:  MOV             R2, R0; float
45FA68:  MOV             R3, R5; unsigned __int16 *
45FA6A:  STR.W           R11, [SP,#0x48+var_44]; float
45FA6E:  VSTR            S16, [SP,#0x48+var_48]
45FA72:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FA76:  LDR.W           R1, =(aCred299 - 0x45FA80); "CRED299"
45FA7A:  MOV             R0, R4; this
45FA7C:  ADD             R1, PC; "CRED299"
45FA7E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FA82:  MOV             R1, R6; float
45FA84:  MOV             R2, R0; float
45FA86:  MOV             R3, R5; unsigned __int16 *
45FA88:  STR.W           R11, [SP,#0x48+var_44]; float
45FA8C:  VSTR            S16, [SP,#0x48+var_48]
45FA90:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FA94:  LDR.W           R1, =(aCred300 - 0x45FA9E); "CRED300"
45FA98:  MOV             R0, R4; this
45FA9A:  ADD             R1, PC; "CRED300"
45FA9C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FAA0:  MOV             R1, R6; float
45FAA2:  MOV             R2, R0; float
45FAA4:  MOV             R3, R5; unsigned __int16 *
45FAA6:  STR.W           R11, [SP,#0x48+var_44]; float
45FAAA:  VSTR            S16, [SP,#0x48+var_48]
45FAAE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FAB2:  LDR.W           R1, =(aCred301 - 0x45FABC); "CRED301"
45FAB6:  MOV             R0, R4; this
45FAB8:  ADD             R1, PC; "CRED301"
45FABA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FABE:  MOV             R1, R6; float
45FAC0:  MOV             R2, R0; float
45FAC2:  MOV             R3, R5; unsigned __int16 *
45FAC4:  STR.W           R11, [SP,#0x48+var_44]; float
45FAC8:  VSTR            S16, [SP,#0x48+var_48]
45FACC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FAD0:  LDR.W           R1, =(aCred302 - 0x45FADA); "CRED302"
45FAD4:  MOV             R0, R4; this
45FAD6:  ADD             R1, PC; "CRED302"
45FAD8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FADC:  MOV             R1, R6; float
45FADE:  MOV             R2, R0; float
45FAE0:  MOV             R3, R5; unsigned __int16 *
45FAE2:  STR.W           R11, [SP,#0x48+var_44]; float
45FAE6:  VSTR            S16, [SP,#0x48+var_48]
45FAEA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FAEE:  LDR.W           R1, =(aCred303 - 0x45FAF8); "CRED303"
45FAF2:  MOV             R0, R4; this
45FAF4:  ADD             R1, PC; "CRED303"
45FAF6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FAFA:  MOV             R1, R6; float
45FAFC:  MOV             R2, R0; float
45FAFE:  MOV             R3, R5; unsigned __int16 *
45FB00:  STR.W           R11, [SP,#0x48+var_44]; float
45FB04:  VSTR            S16, [SP,#0x48+var_48]
45FB08:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FB0C:  LDR.W           R1, =(aCred304 - 0x45FB16); "CRED304"
45FB10:  MOV             R0, R4; this
45FB12:  ADD             R1, PC; "CRED304"
45FB14:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FB18:  MOV             R1, R6; float
45FB1A:  MOV             R2, R0; float
45FB1C:  MOV             R3, R5; unsigned __int16 *
45FB1E:  STR.W           R11, [SP,#0x48+var_44]; float
45FB22:  VSTR            S16, [SP,#0x48+var_48]
45FB26:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FB2A:  LDR.W           R1, =(aCred305 - 0x45FB34); "CRED305"
45FB2E:  MOV             R0, R4; this
45FB30:  ADD             R1, PC; "CRED305"
45FB32:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FB36:  MOV             R1, R6; float
45FB38:  MOV             R2, R0; float
45FB3A:  MOV             R3, R5; unsigned __int16 *
45FB3C:  STR.W           R11, [SP,#0x48+var_44]; float
45FB40:  VSTR            S16, [SP,#0x48+var_48]
45FB44:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FB48:  LDR.W           R1, =(aCred306 - 0x45FB52); "CRED306"
45FB4C:  MOV             R0, R4; this
45FB4E:  ADD             R1, PC; "CRED306"
45FB50:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FB54:  MOV             R1, R6; float
45FB56:  MOV             R2, R0; float
45FB58:  MOV             R3, R5; unsigned __int16 *
45FB5A:  STR.W           R11, [SP,#0x48+var_44]; float
45FB5E:  VSTR            S16, [SP,#0x48+var_48]
45FB62:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FB66:  LDR.W           R1, =(aCred307 - 0x45FB70); "CRED307"
45FB6A:  MOV             R0, R4; this
45FB6C:  ADD             R1, PC; "CRED307"
45FB6E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FB72:  MOV             R1, R6; float
45FB74:  MOV             R2, R0; float
45FB76:  MOV             R3, R5; unsigned __int16 *
45FB78:  STR.W           R11, [SP,#0x48+var_44]; float
45FB7C:  VSTR            S16, [SP,#0x48+var_48]
45FB80:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FB84:  LDR.W           R1, =(aCred308 - 0x45FB8E); "CRED308"
45FB88:  MOV             R0, R4; this
45FB8A:  ADD             R1, PC; "CRED308"
45FB8C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FB90:  MOV             R1, R6; float
45FB92:  MOV             R2, R0; float
45FB94:  MOV             R3, R5; unsigned __int16 *
45FB96:  STR.W           R11, [SP,#0x48+var_44]; float
45FB9A:  VSTR            S16, [SP,#0x48+var_48]
45FB9E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FBA2:  LDR.W           R1, =(aCrd308a - 0x45FBAC); "CRD308A"
45FBA6:  MOV             R0, R4; this
45FBA8:  ADD             R1, PC; "CRD308A"
45FBAA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FBAE:  MOV             R1, R6; float
45FBB0:  MOV             R2, R0; float
45FBB2:  MOV             R3, R5; unsigned __int16 *
45FBB4:  STR.W           R11, [SP,#0x48+var_44]; float
45FBB8:  VSTR            S16, [SP,#0x48+var_48]
45FBBC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FBC0:  LDR.W           R1, =(aCrd308b - 0x45FBCA); "CRD308B"
45FBC4:  MOV             R0, R4; this
45FBC6:  ADD             R1, PC; "CRD308B"
45FBC8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FBCC:  MOV             R1, R6; float
45FBCE:  MOV             R2, R0; float
45FBD0:  MOV             R3, R5; unsigned __int16 *
45FBD2:  STR.W           R11, [SP,#0x48+var_44]; float
45FBD6:  VSTR            S16, [SP,#0x48+var_48]
45FBDA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FBDE:  LDR.W           R1, =(aCrd308c - 0x45FBE8); "CRD308C"
45FBE2:  MOV             R0, R4; this
45FBE4:  ADD             R1, PC; "CRD308C"
45FBE6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FBEA:  MOV             R1, R6; float
45FBEC:  MOV             R2, R0; float
45FBEE:  MOV             R3, R5; unsigned __int16 *
45FBF0:  STR.W           R11, [SP,#0x48+var_44]; float
45FBF4:  VSTR            S16, [SP,#0x48+var_48]
45FBF8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FBFC:  LDR.W           R1, =(aCrd308d - 0x45FC06); "CRD308D"
45FC00:  MOV             R0, R4; this
45FC02:  ADD             R1, PC; "CRD308D"
45FC04:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FC08:  MOV             R1, R6; float
45FC0A:  MOV             R2, R0; float
45FC0C:  MOV             R3, R5; unsigned __int16 *
45FC0E:  STR.W           R11, [SP,#0x48+var_44]; float
45FC12:  VSTR            S16, [SP,#0x48+var_48]
45FC16:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FC1A:  LDR.W           R1, =(aCrd308e - 0x45FC24); "CRD308E"
45FC1E:  MOV             R0, R4; this
45FC20:  ADD             R1, PC; "CRD308E"
45FC22:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FC26:  MOV             R1, R6; float
45FC28:  MOV             R2, R0; float
45FC2A:  MOV             R3, R5; unsigned __int16 *
45FC2C:  STR.W           R11, [SP,#0x48+var_44]; float
45FC30:  VSTR            S16, [SP,#0x48+var_48]
45FC34:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FC38:  LDR.W           R1, =(aCrd308f - 0x45FC42); "CRD308F"
45FC3C:  MOV             R0, R4; this
45FC3E:  ADD             R1, PC; "CRD308F"
45FC40:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FC44:  MOV             R1, R6; float
45FC46:  MOV             R2, R0; float
45FC48:  MOV             R3, R5; unsigned __int16 *
45FC4A:  STR.W           R11, [SP,#0x48+var_44]; float
45FC4E:  VSTR            S16, [SP,#0x48+var_48]
45FC52:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FC56:  LDR.W           R1, =(aCrd308g - 0x45FC60); "CRD308G"
45FC5A:  MOV             R0, R4; this
45FC5C:  ADD             R1, PC; "CRD308G"
45FC5E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FC62:  MOV             R1, R6; float
45FC64:  MOV             R2, R0; float
45FC66:  MOV             R3, R5; unsigned __int16 *
45FC68:  STR.W           R11, [SP,#0x48+var_44]; float
45FC6C:  VSTR            S16, [SP,#0x48+var_48]
45FC70:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FC74:  LDR.W           R1, =(aCrd308h - 0x45FC7E); "CRD308H"
45FC78:  MOV             R0, R4; this
45FC7A:  ADD             R1, PC; "CRD308H"
45FC7C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FC80:  MOV             R1, R6; float
45FC82:  MOV             R2, R0; float
45FC84:  MOV             R3, R5; unsigned __int16 *
45FC86:  STR.W           R11, [SP,#0x48+var_44]; float
45FC8A:  VSTR            S16, [SP,#0x48+var_48]
45FC8E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FC92:  LDR.W           R1, =(aCrd308i - 0x45FC9C); "CRD308I"
45FC96:  MOV             R0, R4; this
45FC98:  ADD             R1, PC; "CRD308I"
45FC9A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FC9E:  MOV             R1, R6; float
45FCA0:  MOV             R2, R0; float
45FCA2:  MOV             R3, R5; unsigned __int16 *
45FCA4:  STR.W           R11, [SP,#0x48+var_44]; float
45FCA8:  VSTR            S16, [SP,#0x48+var_48]
45FCAC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FCB0:  LDR.W           R1, =(aCrd308j - 0x45FCBA); "CRD308J"
45FCB4:  MOV             R0, R4; this
45FCB6:  ADD             R1, PC; "CRD308J"
45FCB8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FCBC:  MOV             R1, R6; float
45FCBE:  MOV             R2, R0; float
45FCC0:  MOV             R3, R5; unsigned __int16 *
45FCC2:  STR.W           R11, [SP,#0x48+var_44]; float
45FCC6:  VSTR            S16, [SP,#0x48+var_48]
45FCCA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FCCE:  LDR.W           R1, =(aCrd308k - 0x45FCD8); "CRD308K"
45FCD2:  MOV             R0, R4; this
45FCD4:  ADD             R1, PC; "CRD308K"
45FCD6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FCDA:  MOV             R1, R6; float
45FCDC:  MOV             R2, R0; float
45FCDE:  MOV             R3, R5; unsigned __int16 *
45FCE0:  STR.W           R11, [SP,#0x48+var_44]; float
45FCE4:  VSTR            S16, [SP,#0x48+var_48]
45FCE8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FCEC:  LDR.W           R1, =(aCrd308l - 0x45FCF6); "CRD308L"
45FCF0:  MOV             R0, R4; this
45FCF2:  ADD             R1, PC; "CRD308L"
45FCF4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FCF8:  MOV             R1, R6; float
45FCFA:  MOV             R2, R0; float
45FCFC:  MOV             R3, R5; unsigned __int16 *
45FCFE:  STR.W           R11, [SP,#0x48+var_44]; float
45FD02:  VSTR            S16, [SP,#0x48+var_48]
45FD06:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FD0A:  VLDR            S0, [SP,#0x48+var_3C]
45FD0E:  MOV             R0, R4; this
45FD10:  LDR.W           R1, =(aCrd308m - 0x45FD1C); "CRD308M"
45FD14:  VCVT.F32.U32    S0, S0
45FD18:  ADD             R1, PC; "CRD308M"
45FD1A:  VADD.F32        S0, S0, S20
45FD1E:  VCVT.U32.F32    S0, S0
45FD22:  VSTR            S0, [SP,#0x48+var_3C]
45FD26:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FD2A:  MOV             R1, R6; float
45FD2C:  MOV             R2, R0; float
45FD2E:  MOV             R3, R5; unsigned __int16 *
45FD30:  STR.W           R11, [SP,#0x48+var_44]; float
45FD34:  VSTR            S16, [SP,#0x48+var_48]
45FD38:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FD3C:  VLDR            S0, [SP,#0x48+var_3C]
45FD40:  MOV             R0, R4; this
45FD42:  LDR.W           R1, =(aCrd308n - 0x45FD4E); "CRD308N"
45FD46:  VCVT.F32.U32    S0, S0
45FD4A:  ADD             R1, PC; "CRD308N"
45FD4C:  VADD.F32        S0, S0, S18
45FD50:  VCVT.U32.F32    S0, S0
45FD54:  VCVT.F32.U32    S0, S0
45FD58:  VADD.F32        S0, S0, S20
45FD5C:  VCVT.U32.F32    S0, S0
45FD60:  VSTR            S0, [SP,#0x48+var_3C]
45FD64:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FD68:  MOV             R1, R6; float
45FD6A:  MOV             R2, R0; float
45FD6C:  MOV             R3, R5; unsigned __int16 *
45FD6E:  STR.W           R11, [SP,#0x48+var_44]; float
45FD72:  VSTR            S16, [SP,#0x48+var_48]
45FD76:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FD7A:  VLDR            S0, [SP,#0x48+var_3C]
45FD7E:  MOV             R0, R4; this
45FD80:  LDR.W           R1, =(aCred309 - 0x45FD8C); "CRED309"
45FD84:  VCVT.F32.U32    S0, S0
45FD88:  ADD             R1, PC; "CRED309"
45FD8A:  VADD.F32        S0, S0, S18
45FD8E:  VCVT.U32.F32    S0, S0
45FD92:  VSTR            S0, [SP,#0x48+var_3C]
45FD96:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FD9A:  MOV             R1, R10; float
45FD9C:  MOV             R2, R0; float
45FD9E:  MOV             R3, R5; unsigned __int16 *
45FDA0:  STR.W           R8, [SP,#0x48+var_44]; float
45FDA4:  VSTR            S16, [SP,#0x48+var_48]
45FDA8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FDAC:  LDR.W           R1, =(aCred310 - 0x45FDB6); "CRED310"
45FDB0:  MOV             R0, R4; this
45FDB2:  ADD             R1, PC; "CRED310"
45FDB4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FDB8:  MOV             R1, R10; float
45FDBA:  MOV             R2, R0; float
45FDBC:  MOV             R3, R5; unsigned __int16 *
45FDBE:  STR.W           R11, [SP,#0x48+var_44]; float
45FDC2:  VSTR            S16, [SP,#0x48+var_48]
45FDC6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FDCA:  VLDR            S0, [SP,#0x48+var_3C]
45FDCE:  MOV             R0, R4; this
45FDD0:  LDR.W           R1, =(aCred311 - 0x45FDDC); "CRED311"
45FDD4:  VCVT.F32.U32    S0, S0
45FDD8:  ADD             R1, PC; "CRED311"
45FDDA:  VADD.F32        S0, S0, S18
45FDDE:  VCVT.U32.F32    S0, S0
45FDE2:  VSTR            S0, [SP,#0x48+var_3C]
45FDE6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FDEA:  MOV             R1, R10; float
45FDEC:  MOV             R2, R0; float
45FDEE:  MOV             R3, R5; unsigned __int16 *
45FDF0:  STR.W           R8, [SP,#0x48+var_44]; float
45FDF4:  VSTR            S16, [SP,#0x48+var_48]
45FDF8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FDFC:  LDR.W           R1, =(aCred312 - 0x45FE06); "CRED312"
45FE00:  MOV             R0, R4; this
45FE02:  ADD             R1, PC; "CRED312"
45FE04:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FE08:  MOV             R1, R10; float
45FE0A:  MOV             R2, R0; float
45FE0C:  MOV             R3, R5; unsigned __int16 *
45FE0E:  STR.W           R11, [SP,#0x48+var_44]; float
45FE12:  VSTR            S16, [SP,#0x48+var_48]
45FE16:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FE1A:  LDR.W           R1, =(aCred313 - 0x45FE24); "CRED313"
45FE1E:  MOV             R0, R4; this
45FE20:  ADD             R1, PC; "CRED313"
45FE22:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FE26:  MOV             R1, R10; float
45FE28:  MOV             R2, R0; float
45FE2A:  MOV             R3, R5; unsigned __int16 *
45FE2C:  STR.W           R11, [SP,#0x48+var_44]; float
45FE30:  VSTR            S16, [SP,#0x48+var_48]
45FE34:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FE38:  VLDR            S0, [SP,#0x48+var_3C]
45FE3C:  MOV             R0, R4; this
45FE3E:  LDR.W           R1, =(aCred314 - 0x45FE4A); "CRED314"
45FE42:  VCVT.F32.U32    S0, S0
45FE46:  ADD             R1, PC; "CRED314"
45FE48:  VADD.F32        S0, S0, S18
45FE4C:  VCVT.U32.F32    S0, S0
45FE50:  VSTR            S0, [SP,#0x48+var_3C]
45FE54:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FE58:  MOV             R1, R10; float
45FE5A:  MOV             R2, R0; float
45FE5C:  MOV             R3, R5; unsigned __int16 *
45FE5E:  STR.W           R8, [SP,#0x48+var_44]; float
45FE62:  VSTR            S16, [SP,#0x48+var_48]
45FE66:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FE6A:  LDR.W           R1, =(aCred315 - 0x45FE74); "CRED315"
45FE6E:  MOV             R0, R4; this
45FE70:  ADD             R1, PC; "CRED315"
45FE72:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FE76:  MOV             R1, R6; float
45FE78:  MOV             R2, R0; float
45FE7A:  MOV             R3, R5; unsigned __int16 *
45FE7C:  STR.W           R11, [SP,#0x48+var_44]; float
45FE80:  VSTR            S16, [SP,#0x48+var_48]
45FE84:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FE88:  LDR.W           R1, =(aCred316 - 0x45FE92); "CRED316"
45FE8C:  MOV             R0, R4; this
45FE8E:  ADD             R1, PC; "CRED316"
45FE90:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FE94:  MOV             R1, R6; float
45FE96:  MOV             R2, R0; float
45FE98:  MOV             R3, R5; unsigned __int16 *
45FE9A:  STR.W           R11, [SP,#0x48+var_44]; float
45FE9E:  VSTR            S16, [SP,#0x48+var_48]
45FEA2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FEA6:  LDR.W           R1, =(aCred317 - 0x45FEB0); "CRED317"
45FEAA:  MOV             R0, R4; this
45FEAC:  ADD             R1, PC; "CRED317"
45FEAE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FEB2:  MOV             R1, R6; float
45FEB4:  MOV             R2, R0; float
45FEB6:  MOV             R3, R5; unsigned __int16 *
45FEB8:  STR.W           R11, [SP,#0x48+var_44]; float
45FEBC:  VSTR            S16, [SP,#0x48+var_48]
45FEC0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FEC4:  LDR.W           R1, =(aCred318 - 0x45FECE); "CRED318"
45FEC8:  MOV             R0, R4; this
45FECA:  ADD             R1, PC; "CRED318"
45FECC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FED0:  MOV             R1, R6; float
45FED2:  MOV             R2, R0; float
45FED4:  MOV             R3, R5; unsigned __int16 *
45FED6:  STR.W           R11, [SP,#0x48+var_44]; float
45FEDA:  VSTR            S16, [SP,#0x48+var_48]
45FEDE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FEE2:  LDR.W           R1, =(aCred319 - 0x45FEEC); "CRED319"
45FEE6:  MOV             R0, R4; this
45FEE8:  ADD             R1, PC; "CRED319"
45FEEA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FEEE:  MOV             R1, R6; float
45FEF0:  MOV             R2, R0; float
45FEF2:  MOV             R3, R5; unsigned __int16 *
45FEF4:  STR.W           R11, [SP,#0x48+var_44]; float
45FEF8:  VSTR            S16, [SP,#0x48+var_48]
45FEFC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FF00:  LDR.W           R1, =(aCred320 - 0x45FF0A); "CRED320"
45FF04:  MOV             R0, R4; this
45FF06:  ADD             R1, PC; "CRED320"
45FF08:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FF0C:  MOV             R1, R6; float
45FF0E:  MOV             R2, R0; float
45FF10:  MOV             R3, R5; unsigned __int16 *
45FF12:  STR.W           R11, [SP,#0x48+var_44]; float
45FF16:  VSTR            S16, [SP,#0x48+var_48]
45FF1A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FF1E:  LDR.W           R1, =(aCred321 - 0x45FF28); "CRED321"
45FF22:  MOV             R0, R4; this
45FF24:  ADD             R1, PC; "CRED321"
45FF26:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FF2A:  MOV             R1, R6; float
45FF2C:  MOV             R2, R0; float
45FF2E:  MOV             R3, R5; unsigned __int16 *
45FF30:  STR.W           R11, [SP,#0x48+var_44]; float
45FF34:  VSTR            S16, [SP,#0x48+var_48]
45FF38:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FF3C:  LDR.W           R1, =(aCred322 - 0x45FF46); "CRED322"
45FF40:  MOV             R0, R4; this
45FF42:  ADD             R1, PC; "CRED322"
45FF44:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FF48:  MOV             R1, R6; float
45FF4A:  MOV             R2, R0; float
45FF4C:  MOV             R3, R5; unsigned __int16 *
45FF4E:  STR.W           R11, [SP,#0x48+var_44]; float
45FF52:  VSTR            S16, [SP,#0x48+var_48]
45FF56:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FF5A:  LDR.W           R1, =(aCred323 - 0x45FF64); "CRED323"
45FF5E:  MOV             R0, R4; this
45FF60:  ADD             R1, PC; "CRED323"
45FF62:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FF66:  MOV             R1, R6; float
45FF68:  MOV             R2, R0; float
45FF6A:  MOV             R3, R5; unsigned __int16 *
45FF6C:  STR.W           R11, [SP,#0x48+var_44]; float
45FF70:  VSTR            S16, [SP,#0x48+var_48]
45FF74:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FF78:  LDR.W           R1, =(aCred324 - 0x45FF82); "CRED324"
45FF7C:  MOV             R0, R4; this
45FF7E:  ADD             R1, PC; "CRED324"
45FF80:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FF84:  MOV             R1, R6; float
45FF86:  MOV             R2, R0; float
45FF88:  MOV             R3, R5; unsigned __int16 *
45FF8A:  STR.W           R11, [SP,#0x48+var_44]; float
45FF8E:  VSTR            S16, [SP,#0x48+var_48]
45FF92:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FF96:  LDR.W           R1, =(aCred325 - 0x45FFA0); "CRED325"
45FF9A:  MOV             R0, R4; this
45FF9C:  ADD             R1, PC; "CRED325"
45FF9E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FFA2:  MOV             R1, R6; float
45FFA4:  MOV             R2, R0; float
45FFA6:  MOV             R3, R5; unsigned __int16 *
45FFA8:  STR.W           R11, [SP,#0x48+var_44]; float
45FFAC:  VSTR            S16, [SP,#0x48+var_48]
45FFB0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FFB4:  LDR             R1, =(aCred326 - 0x45FFBC); "CRED326"
45FFB6:  MOV             R0, R4; this
45FFB8:  ADD             R1, PC; "CRED326"
45FFBA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FFBE:  MOV             R1, R6; float
45FFC0:  MOV             R2, R0; float
45FFC2:  MOV             R3, R5; unsigned __int16 *
45FFC4:  STR.W           R11, [SP,#0x48+var_44]; float
45FFC8:  VSTR            S16, [SP,#0x48+var_48]
45FFCC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FFD0:  LDR             R1, =(aCred327 - 0x45FFD8); "CRED327"
45FFD2:  MOV             R0, R4; this
45FFD4:  ADD             R1, PC; "CRED327"
45FFD6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FFDA:  MOV             R1, R6; float
45FFDC:  MOV             R2, R0; float
45FFDE:  MOV             R3, R5; unsigned __int16 *
45FFE0:  STR.W           R11, [SP,#0x48+var_44]; float
45FFE4:  VSTR            S16, [SP,#0x48+var_48]
45FFE8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
45FFEC:  LDR             R1, =(aCred328 - 0x45FFF4); "CRED328"
45FFEE:  MOV             R0, R4; this
45FFF0:  ADD             R1, PC; "CRED328"
45FFF2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
45FFF6:  MOV             R1, R6; float
45FFF8:  MOV             R2, R0; float
45FFFA:  MOV             R3, R5; unsigned __int16 *
45FFFC:  STR.W           R11, [SP,#0x48+var_44]; float
460000:  VSTR            S16, [SP,#0x48+var_48]
460004:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460008:  LDR             R1, =(aCred329 - 0x460010); "CRED329"
46000A:  MOV             R0, R4; this
46000C:  ADD             R1, PC; "CRED329"
46000E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460012:  MOV             R1, R6; float
460014:  MOV             R2, R0; float
460016:  MOV             R3, R5; unsigned __int16 *
460018:  STR.W           R11, [SP,#0x48+var_44]; float
46001C:  VSTR            S16, [SP,#0x48+var_48]
460020:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460024:  LDR             R1, =(aCred330 - 0x46002C); "CRED330"
460026:  MOV             R0, R4; this
460028:  ADD             R1, PC; "CRED330"
46002A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46002E:  MOV             R1, R6; float
460030:  MOV             R2, R0; float
460032:  MOV             R3, R5; unsigned __int16 *
460034:  STR.W           R11, [SP,#0x48+var_44]; float
460038:  VSTR            S16, [SP,#0x48+var_48]
46003C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460040:  LDR             R1, =(aCred331 - 0x460048); "CRED331"
460042:  MOV             R0, R4; this
460044:  ADD             R1, PC; "CRED331"
460046:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46004A:  MOV             R1, R6; float
46004C:  MOV             R2, R0; float
46004E:  MOV             R3, R5; unsigned __int16 *
460050:  STR.W           R11, [SP,#0x48+var_44]; float
460054:  VSTR            S16, [SP,#0x48+var_48]
460058:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46005C:  LDR             R1, =(aCred332 - 0x460064); "CRED332"
46005E:  MOV             R0, R4; this
460060:  ADD             R1, PC; "CRED332"
460062:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460066:  MOV             R1, R6; float
460068:  MOV             R2, R0; float
46006A:  MOV             R3, R5; unsigned __int16 *
46006C:  STR.W           R11, [SP,#0x48+var_44]; float
460070:  VSTR            S16, [SP,#0x48+var_48]
460074:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460078:  LDR             R1, =(aCred333 - 0x460080); "CRED333"
46007A:  MOV             R0, R4; this
46007C:  ADD             R1, PC; "CRED333"
46007E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460082:  MOV             R1, R6; float
460084:  MOV             R2, R0; float
460086:  MOV             R3, R5; unsigned __int16 *
460088:  STR.W           R11, [SP,#0x48+var_44]; float
46008C:  VSTR            S16, [SP,#0x48+var_48]
460090:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460094:  LDR             R1, =(aCred334 - 0x46009C); "CRED334"
460096:  MOV             R0, R4; this
460098:  ADD             R1, PC; "CRED334"
46009A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46009E:  MOV             R1, R6; float
4600A0:  MOV             R2, R0; float
4600A2:  MOV             R3, R5; unsigned __int16 *
4600A4:  STR.W           R11, [SP,#0x48+var_44]; float
4600A8:  VSTR            S16, [SP,#0x48+var_48]
4600AC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4600B0:  LDR             R1, =(aCred335 - 0x4600B8); "CRED335"
4600B2:  MOV             R0, R4; this
4600B4:  ADD             R1, PC; "CRED335"
4600B6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4600BA:  MOV             R1, R6; float
4600BC:  MOV             R2, R0; float
4600BE:  MOV             R3, R5; unsigned __int16 *
4600C0:  STR.W           R11, [SP,#0x48+var_44]; float
4600C4:  VSTR            S16, [SP,#0x48+var_48]
4600C8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4600CC:  LDR             R1, =(aCred336 - 0x4600D4); "CRED336"
4600CE:  MOV             R0, R4; this
4600D0:  ADD             R1, PC; "CRED336"
4600D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4600D6:  MOV             R1, R6; float
4600D8:  MOV             R2, R0; float
4600DA:  MOV             R3, R5; unsigned __int16 *
4600DC:  STR.W           R11, [SP,#0x48+var_44]; float
4600E0:  VSTR            S16, [SP,#0x48+var_48]
4600E4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4600E8:  LDR             R1, =(aCred337 - 0x4600F0); "CRED337"
4600EA:  MOV             R0, R4; this
4600EC:  ADD             R1, PC; "CRED337"
4600EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4600F2:  MOV             R1, R6; float
4600F4:  MOV             R2, R0; float
4600F6:  MOV             R3, R5; unsigned __int16 *
4600F8:  STR.W           R11, [SP,#0x48+var_44]; float
4600FC:  VSTR            S16, [SP,#0x48+var_48]
460100:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460104:  LDR             R1, =(aCred338 - 0x46010C); "CRED338"
460106:  MOV             R0, R4; this
460108:  ADD             R1, PC; "CRED338"
46010A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46010E:  MOV             R1, R6; float
460110:  MOV             R2, R0; float
460112:  MOV             R3, R5; unsigned __int16 *
460114:  STR.W           R11, [SP,#0x48+var_44]; float
460118:  VSTR            S16, [SP,#0x48+var_48]
46011C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460120:  LDR             R1, =(aCred339 - 0x460128); "CRED339"
460122:  MOV             R0, R4; this
460124:  ADD             R1, PC; "CRED339"
460126:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46012A:  MOV             R1, R6; float
46012C:  MOV             R2, R0; float
46012E:  MOV             R3, R5; unsigned __int16 *
460130:  STR.W           R11, [SP,#0x48+var_44]; float
460134:  VSTR            S16, [SP,#0x48+var_48]
460138:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46013C:  LDR             R1, =(aCred340 - 0x460144); "CRED340"
46013E:  MOV             R0, R4; this
460140:  ADD             R1, PC; "CRED340"
460142:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460146:  MOV             R1, R6; float
460148:  MOV             R2, R0; float
46014A:  MOV             R3, R5; unsigned __int16 *
46014C:  STR.W           R11, [SP,#0x48+var_44]; float
460150:  VSTR            S16, [SP,#0x48+var_48]
460154:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460158:  LDR             R1, =(aCred341 - 0x460160); "CRED341"
46015A:  MOV             R0, R4; this
46015C:  ADD             R1, PC; "CRED341"
46015E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460162:  MOV             R1, R6; float
460164:  MOV             R2, R0; float
460166:  MOV             R3, R5; unsigned __int16 *
460168:  STR.W           R11, [SP,#0x48+var_44]; float
46016C:  VSTR            S16, [SP,#0x48+var_48]
460170:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460174:  LDR             R1, =(aCred342 - 0x46017C); "CRED342"
460176:  MOV             R0, R4; this
460178:  ADD             R1, PC; "CRED342"
46017A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46017E:  MOV             R1, R6; float
460180:  MOV             R2, R0; float
460182:  MOV             R3, R5; unsigned __int16 *
460184:  STR.W           R11, [SP,#0x48+var_44]; float
460188:  VSTR            S16, [SP,#0x48+var_48]
46018C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460190:  LDR             R1, =(aCred343 - 0x460198); "CRED343"
460192:  MOV             R0, R4; this
460194:  ADD             R1, PC; "CRED343"
460196:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46019A:  MOV             R1, R6; float
46019C:  MOV             R2, R0; float
46019E:  MOV             R3, R5; unsigned __int16 *
4601A0:  STR.W           R11, [SP,#0x48+var_44]; float
4601A4:  VSTR            S16, [SP,#0x48+var_48]
4601A8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4601AC:  LDR             R1, =(aCred344 - 0x4601B4); "CRED344"
4601AE:  MOV             R0, R4; this
4601B0:  ADD             R1, PC; "CRED344"
4601B2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4601B6:  MOV             R1, R6; float
4601B8:  MOV             R2, R0; float
4601BA:  MOV             R3, R5; unsigned __int16 *
4601BC:  STR.W           R11, [SP,#0x48+var_44]; float
4601C0:  VSTR            S16, [SP,#0x48+var_48]
4601C4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4601C8:  LDR             R1, =(aCred345 - 0x4601D0); "CRED345"
4601CA:  MOV             R0, R4; this
4601CC:  ADD             R1, PC; "CRED345"
4601CE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4601D2:  MOV             R1, R6; float
4601D4:  MOV             R2, R0; float
4601D6:  MOV             R3, R5; unsigned __int16 *
4601D8:  STR.W           R11, [SP,#0x48+var_44]; float
4601DC:  VSTR            S16, [SP,#0x48+var_48]
4601E0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4601E4:  LDR             R1, =(aCred346 - 0x4601EC); "CRED346"
4601E6:  MOV             R0, R4; this
4601E8:  ADD             R1, PC; "CRED346"
4601EA:  B.W             loc_4605D8
4601EE:  ALIGN 0x10
4601F0:  DCD aCred242 - 0x45F22A
4601F4:  DCD aCred243 - 0x45F248
4601F8:  DCD aCred244 - 0x45F266
4601FC:  DCD aCred245 - 0x45F284
460200:  DCD aCred246 - 0x45F2AA
460204:  DCD aCred247 - 0x45F2D4
460208:  DCD aCred248 - 0x45F2FA
46020C:  DCD aCred249 - 0x45F324
460210:  DCD aCred250 - 0x45F342
460214:  DCD aCred251 - 0x45F368
460218:  DCD aCred252 - 0x45F392
46021C:  DCD aCred253 - 0x45F3B0
460220:  DCD aCred254 - 0x45F3D6
460224:  DCD aCred255 - 0x45F400
460228:  DCD aCred256 - 0x45F41E
46022C:  DCD aCred257 - 0x45F444
460230:  DCD aCred258 - 0x45F46E
460234:  DCD aCred259 - 0x45F494
460238:  DCD aCred260 - 0x45F4BE
46023C:  DCD aCred261 - 0x45F4E4
460240:  DCD aCred262 - 0x45F516
460244:  DCD aCred263 - 0x45F548
460248:  DCD aCred264 - 0x45F572
46024C:  DCD aCred265 - 0x45F598
460250:  DCD aCred266 - 0x45F5C2
460254:  DCD aCred267 - 0x45F5E0
460258:  DCD aCred999 - 0x45F606
46025C:  DCD aCred998 - 0x45F638
460260:  DCD aCred268 - 0x45F66A
460264:  DCD aCred269 - 0x45F694
460268:  DCD aCred270 - 0x45F6B2
46026C:  DCD aCred271 - 0x45F6D0
460270:  DCD aCred272 - 0x45F6EE
460274:  DCD aCred273 - 0x45F70C
460278:  DCD aCred274 - 0x45F732
46027C:  DCD aCred275 - 0x45F75C
460280:  DCD aCred276 - 0x45F77A
460284:  DCD aCred277 - 0x45F7A0
460288:  DCD aCred278 - 0x45F7DE
46028C:  DCD aCred279 - 0x45F808
460290:  DCD aCred280 - 0x45F83A
460294:  DCD aCred281 - 0x45F864
460298:  DCD aCred282 - 0x45F882
46029C:  DCD aCred283 - 0x45F8A0
4602A0:  DCD aCred284 - 0x45F8BE
4602A4:  DCD aCred285 - 0x45F8DC
4602A8:  DCD aCred286 - 0x45F8FA
4602AC:  DCD aCred287 - 0x45F918
4602B0:  DCD aCred288 - 0x45F936
4602B4:  DCD aCred289 - 0x45F954
4602B8:  DCD aCred290 - 0x45F972
4602BC:  DCD aCred291 - 0x45F990
4602C0:  DCD aCred292 - 0x45F9AE
4602C4:  DCD aCred293 - 0x45F9CC
4602C8:  DCD aCred294 - 0x45F9EA
4602CC:  DCD aCred295 - 0x45FA08
4602D0:  DCD aCred296 - 0x45FA26
4602D4:  DCD aCred297 - 0x45FA44
4602D8:  DCD aCred298 - 0x45FA62
4602DC:  DCD aCred299 - 0x45FA80
4602E0:  DCD aCred300 - 0x45FA9E
4602E4:  DCD aCred301 - 0x45FABC
4602E8:  DCD aCred302 - 0x45FADA
4602EC:  DCD aCred303 - 0x45FAF8
4602F0:  DCD aCred304 - 0x45FB16
4602F4:  DCD aCred305 - 0x45FB34
4602F8:  DCD aCred306 - 0x45FB52
4602FC:  DCD aCred307 - 0x45FB70
460300:  DCD aCred308 - 0x45FB8E
460304:  DCD aCrd308a - 0x45FBAC
460308:  DCD aCrd308b - 0x45FBCA
46030C:  DCD aCrd308c - 0x45FBE8
460310:  DCD aCrd308d - 0x45FC06
460314:  DCD aCrd308e - 0x45FC24
460318:  DCD aCrd308f - 0x45FC42
46031C:  DCD aCrd308g - 0x45FC60
460320:  DCD aCrd308h - 0x45FC7E
460324:  DCD aCrd308i - 0x45FC9C
460328:  DCD aCrd308j - 0x45FCBA
46032C:  DCD aCrd308k - 0x45FCD8
460330:  DCD aCrd308l - 0x45FCF6
460334:  DCD aCrd308m - 0x45FD1C
460338:  DCD aCrd308n - 0x45FD4E
46033C:  DCD aCred309 - 0x45FD8C
460340:  DCD aCred310 - 0x45FDB6
460344:  DCD aCred311 - 0x45FDDC
460348:  DCD aCred312 - 0x45FE06
46034C:  DCD aCred313 - 0x45FE24
460350:  DCD aCred314 - 0x45FE4A
460354:  DCD aCred315 - 0x45FE74
460358:  DCD aCred316 - 0x45FE92
46035C:  DCD aCred317 - 0x45FEB0
460360:  DCD aCred318 - 0x45FECE
460364:  DCD aCred319 - 0x45FEEC
460368:  DCD aCred320 - 0x45FF0A
46036C:  DCD aCred321 - 0x45FF28
460370:  DCD aCred322 - 0x45FF46
460374:  DCD aCred323 - 0x45FF64
460378:  DCD aCred324 - 0x45FF82
46037C:  DCD aCred325 - 0x45FFA0
460380:  DCD aCred326 - 0x45FFBC
460384:  DCD aCred327 - 0x45FFD8
460388:  DCD aCred328 - 0x45FFF4
46038C:  DCD aCred329 - 0x460010
460390:  DCD aCred330 - 0x46002C
460394:  DCD aCred331 - 0x460048
460398:  DCD aCred332 - 0x460064
46039C:  DCD aCred333 - 0x460080
4603A0:  DCD aCred334 - 0x46009C
4603A4:  DCD aCred335 - 0x4600B8
4603A8:  DCD aCred336 - 0x4600D4
4603AC:  DCD aCred337 - 0x4600F0
4603B0:  DCD aCred338 - 0x46010C
4603B4:  DCD aCred339 - 0x460128
4603B8:  DCD aCred340 - 0x460144
4603BC:  DCD aCred341 - 0x460160
4603C0:  DCD aCred342 - 0x46017C
4603C4:  DCD aCred343 - 0x460198
4603C8:  DCD aCred344 - 0x4601B4
4603CC:  DCD aCred345 - 0x4601D0
4603D0:  DCD aCred346 - 0x4601EC
4603D4:  DCD aCred347 - 0x4605F8
4603D8:  DCD aCred348 - 0x460616
4603DC:  DCD aCred349 - 0x460634
4603E0:  DCD aCred350 - 0x460652
4603E4:  DCD aCred351 - 0x460670
4603E8:  DCD aCred352 - 0x46068E
4603EC:  DCD aCred353 - 0x4606AC
4603F0:  DCD aCred354 - 0x4606CA
4603F4:  DCD aCred355 - 0x4606E8
4603F8:  DCD aCred356 - 0x460706
4603FC:  DCD aCred357 - 0x460724
460400:  DCD aCred358 - 0x460742
460404:  DCD aCred359 - 0x460760
460408:  DCD aCred360 - 0x46077E
46040C:  DCD aCred361 - 0x46079C
460410:  DCD aCred362 - 0x4607BA
460414:  DCD aCred363 - 0x4607D8
460418:  DCD aCred364 - 0x4607F6
46041C:  DCD aCred365 - 0x460814
460420:  DCD aCred366 - 0x460832
460424:  DCD aCred367 - 0x460850
460428:  DCD aCred368 - 0x46086E
46042C:  DCD aCred369 - 0x46088C
460430:  DCD aCred370 - 0x4608AA
460434:  DCD aCred371 - 0x4608C8
460438:  DCD aCred372 - 0x4608E6
46043C:  DCD aCred373 - 0x460904
460440:  DCD aCred374 - 0x460922
460444:  DCD aCred375 - 0x460940
460448:  DCD aCred376 - 0x46095E
46044C:  DCD aCred377 - 0x46097C
460450:  DCD aCred378 - 0x46099A
460454:  DCD aCred379 - 0x4609B8
460458:  DCD aCred380 - 0x4609D6
46045C:  DCD aCred381 - 0x4609F4
460460:  DCD aCred382 - 0x460A12
460464:  DCD aCred383 - 0x460A30
460468:  DCD aCred384 - 0x460A4E
46046C:  DCD aCred385 - 0x460A6C
460470:  DCD aCred386 - 0x460A8A
460474:  DCD aCred387 - 0x460AA8
460478:  DCD aCred388 - 0x460AC6
46047C:  DCD aCred389 - 0x460AE4
460480:  DCD aCred390 - 0x460B02
460484:  DCD aCred391 - 0x460B20
460488:  DCD aCred392 - 0x460B3E
46048C:  DCD aCred393 - 0x460B5C
460490:  DCD aCred394 - 0x460B7A
460494:  DCD aCred395 - 0x460B98
460498:  DCD aCred396 - 0x460BB6
46049C:  DCD aCred397 - 0x460BD4
4604A0:  DCD aCred398 - 0x460BFA
4604A4:  DCD aCred399 - 0x460C24
4604A8:  DCD aCred400 - 0x460C4A
4604AC:  DCD aCred401 - 0x460C74
4604B0:  DCD aCred402 - 0x460C92
4604B4:  DCD aCred403 - 0x460CB8
4604B8:  DCD aCred404 - 0x460CE2
4604BC:  DCD aCred405 - 0x460D00
4604C0:  DCD aCred406 - 0x460D1E
4604C4:  DCD aCred407 - 0x460D3C
4604C8:  DCD aCred408 - 0x460D5A
4604CC:  DCD aCred409 - 0x460D78
4604D0:  DCD aCred410 - 0x460D9E
4604D4:  DCD aCred411 - 0x460DC8
4604D8:  DCD aCred412 - 0x460DE6
4604DC:  DCD aCred413 - 0x460E04
4604E0:  DCD aCred414 - 0x460E22
4604E4:  DCD aCred415 - 0x460E40
4604E8:  DCD aCred416 - 0x460E5E
4604EC:  DCD aCred417 - 0x460E84
4604F0:  DCD aCred418 - 0x460EAE
4604F4:  DCD aCred419 - 0x460ECC
4604F8:  DCD aCred420 - 0x460EEA
4604FC:  DCD aCred421 - 0x460F08
460500:  DCD aCred422 - 0x460F26
460504:  DCD aCred423 - 0x460F44
460508:  DCD aCred424 - 0x460F62
46050C:  DCD aCred425 - 0x460F80
460510:  DCD aCred426 - 0x460F9E
460514:  DCD aCred427 - 0x460FBC
460518:  DCD aCred428 - 0x460FDA
46051C:  DCD aCred429 - 0x460FF8
460520:  DCD aCred430 - 0x461016
460524:  DCD aCred431 - 0x461034
460528:  DCD aCred432 - 0x461052
46052C:  DCD aCred433 - 0x461070
460530:  DCD aCred434 - 0x46108E
460534:  DCD aCred435 - 0x4610AC
460538:  DCD aCred436 - 0x4610CA
46053C:  DCD aCred437 - 0x4610E8
460540:  DCD aCred438 - 0x461106
460544:  DCD aCred439 - 0x461124
460548:  DCD aCred440 - 0x461142
46054C:  DCD aCred441 - 0x461160
460550:  DCD aCred442 - 0x46117E
460554:  DCD aCred443 - 0x46119C
460558:  DCD aCred444 - 0x4611BA
46055C:  DCD aCred445 - 0x4611D8
460560:  DCD aCred446 - 0x4611F6
460564:  DCD aCred447 - 0x461214
460568:  DCD aCred448 - 0x461232
46056C:  DCD aCred449 - 0x461250
460570:  DCD aCred450 - 0x461276
460574:  DCD aCred451 - 0x4612A0
460578:  DCD aCred452 - 0x4612C6
46057C:  DCD aCred453 - 0x4612F0
460580:  DCD aCred454 - 0x461316
460584:  DCD aCred455 - 0x461340
460588:  DCD aCrd455a - 0x461366
46058C:  DCD aCrd455b - 0x461390
460590:  DCD aCrd455c - 0x4613B6
460594:  DCD aCrd455d - 0x4613E0
460598:  DCD aCred456 - 0x461406
46059C:  DCD aCred457 - 0x461430
4605A0:  DCD aCred458 - 0x46144E
4605A4:  DCD aCred459 - 0x46146C
4605A8:  DCD aCred460 - 0x46148A
4605AC:  DCD aCred461 - 0x4614A8
4605B0:  DCD aCred462 - 0x4614C6
4605B4:  DCD aCred463 - 0x4614E4
4605B8:  DCD aCred464 - 0x461502
4605BC:  DCD aCred465 - 0x461520
4605C0:  DCD aCred466 - 0x46153E
4605C4:  DCD aCred467 - 0x46155C
4605C8:  DCD aCred468 - 0x46157A
4605CC:  DCD aCred469 - 0x461598
4605D0:  DCD aCred470 - 0x4615B6
4605D4:  DCD aCred471 - 0x4615D4
4605D8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4605DC:  MOV             R1, R6; float
4605DE:  MOV             R2, R0; float
4605E0:  MOV             R3, R5; unsigned __int16 *
4605E2:  STR.W           R11, [SP,#0x48+var_44]; float
4605E6:  VSTR            S16, [SP,#0x48+var_48]
4605EA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4605EE:  LDR.W           R1, =(aCred347 - 0x4605F8); "CRED347"
4605F2:  MOV             R0, R4; this
4605F4:  ADD             R1, PC; "CRED347"
4605F6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4605FA:  MOV             R1, R6; float
4605FC:  MOV             R2, R0; float
4605FE:  MOV             R3, R5; unsigned __int16 *
460600:  STR.W           R11, [SP,#0x48+var_44]; float
460604:  VSTR            S16, [SP,#0x48+var_48]
460608:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46060C:  LDR.W           R1, =(aCred348 - 0x460616); "CRED348"
460610:  MOV             R0, R4; this
460612:  ADD             R1, PC; "CRED348"
460614:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460618:  MOV             R1, R6; float
46061A:  MOV             R2, R0; float
46061C:  MOV             R3, R5; unsigned __int16 *
46061E:  STR.W           R11, [SP,#0x48+var_44]; float
460622:  VSTR            S16, [SP,#0x48+var_48]
460626:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46062A:  LDR.W           R1, =(aCred349 - 0x460634); "CRED349"
46062E:  MOV             R0, R4; this
460630:  ADD             R1, PC; "CRED349"
460632:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460636:  MOV             R1, R6; float
460638:  MOV             R2, R0; float
46063A:  MOV             R3, R5; unsigned __int16 *
46063C:  STR.W           R11, [SP,#0x48+var_44]; float
460640:  VSTR            S16, [SP,#0x48+var_48]
460644:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460648:  LDR.W           R1, =(aCred350 - 0x460652); "CRED350"
46064C:  MOV             R0, R4; this
46064E:  ADD             R1, PC; "CRED350"
460650:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460654:  MOV             R1, R6; float
460656:  MOV             R2, R0; float
460658:  MOV             R3, R5; unsigned __int16 *
46065A:  STR.W           R11, [SP,#0x48+var_44]; float
46065E:  VSTR            S16, [SP,#0x48+var_48]
460662:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460666:  LDR.W           R1, =(aCred351 - 0x460670); "CRED351"
46066A:  MOV             R0, R4; this
46066C:  ADD             R1, PC; "CRED351"
46066E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460672:  MOV             R1, R6; float
460674:  MOV             R2, R0; float
460676:  MOV             R3, R5; unsigned __int16 *
460678:  STR.W           R11, [SP,#0x48+var_44]; float
46067C:  VSTR            S16, [SP,#0x48+var_48]
460680:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460684:  LDR.W           R1, =(aCred352 - 0x46068E); "CRED352"
460688:  MOV             R0, R4; this
46068A:  ADD             R1, PC; "CRED352"
46068C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460690:  MOV             R1, R6; float
460692:  MOV             R2, R0; float
460694:  MOV             R3, R5; unsigned __int16 *
460696:  STR.W           R11, [SP,#0x48+var_44]; float
46069A:  VSTR            S16, [SP,#0x48+var_48]
46069E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4606A2:  LDR.W           R1, =(aCred353 - 0x4606AC); "CRED353"
4606A6:  MOV             R0, R4; this
4606A8:  ADD             R1, PC; "CRED353"
4606AA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4606AE:  MOV             R1, R6; float
4606B0:  MOV             R2, R0; float
4606B2:  MOV             R3, R5; unsigned __int16 *
4606B4:  STR.W           R11, [SP,#0x48+var_44]; float
4606B8:  VSTR            S16, [SP,#0x48+var_48]
4606BC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4606C0:  LDR.W           R1, =(aCred354 - 0x4606CA); "CRED354"
4606C4:  MOV             R0, R4; this
4606C6:  ADD             R1, PC; "CRED354"
4606C8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4606CC:  MOV             R1, R6; float
4606CE:  MOV             R2, R0; float
4606D0:  MOV             R3, R5; unsigned __int16 *
4606D2:  STR.W           R11, [SP,#0x48+var_44]; float
4606D6:  VSTR            S16, [SP,#0x48+var_48]
4606DA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4606DE:  LDR.W           R1, =(aCred355 - 0x4606E8); "CRED355"
4606E2:  MOV             R0, R4; this
4606E4:  ADD             R1, PC; "CRED355"
4606E6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4606EA:  MOV             R1, R6; float
4606EC:  MOV             R2, R0; float
4606EE:  MOV             R3, R5; unsigned __int16 *
4606F0:  STR.W           R11, [SP,#0x48+var_44]; float
4606F4:  VSTR            S16, [SP,#0x48+var_48]
4606F8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4606FC:  LDR.W           R1, =(aCred356 - 0x460706); "CRED356"
460700:  MOV             R0, R4; this
460702:  ADD             R1, PC; "CRED356"
460704:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460708:  MOV             R1, R6; float
46070A:  MOV             R2, R0; float
46070C:  MOV             R3, R5; unsigned __int16 *
46070E:  STR.W           R11, [SP,#0x48+var_44]; float
460712:  VSTR            S16, [SP,#0x48+var_48]
460716:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46071A:  LDR.W           R1, =(aCred357 - 0x460724); "CRED357"
46071E:  MOV             R0, R4; this
460720:  ADD             R1, PC; "CRED357"
460722:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460726:  MOV             R1, R6; float
460728:  MOV             R2, R0; float
46072A:  MOV             R3, R5; unsigned __int16 *
46072C:  STR.W           R11, [SP,#0x48+var_44]; float
460730:  VSTR            S16, [SP,#0x48+var_48]
460734:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460738:  LDR.W           R1, =(aCred358 - 0x460742); "CRED358"
46073C:  MOV             R0, R4; this
46073E:  ADD             R1, PC; "CRED358"
460740:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460744:  MOV             R1, R6; float
460746:  MOV             R2, R0; float
460748:  MOV             R3, R5; unsigned __int16 *
46074A:  STR.W           R11, [SP,#0x48+var_44]; float
46074E:  VSTR            S16, [SP,#0x48+var_48]
460752:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460756:  LDR.W           R1, =(aCred359 - 0x460760); "CRED359"
46075A:  MOV             R0, R4; this
46075C:  ADD             R1, PC; "CRED359"
46075E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460762:  MOV             R1, R6; float
460764:  MOV             R2, R0; float
460766:  MOV             R3, R5; unsigned __int16 *
460768:  STR.W           R11, [SP,#0x48+var_44]; float
46076C:  VSTR            S16, [SP,#0x48+var_48]
460770:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460774:  LDR.W           R1, =(aCred360 - 0x46077E); "CRED360"
460778:  MOV             R0, R4; this
46077A:  ADD             R1, PC; "CRED360"
46077C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460780:  MOV             R1, R6; float
460782:  MOV             R2, R0; float
460784:  MOV             R3, R5; unsigned __int16 *
460786:  STR.W           R11, [SP,#0x48+var_44]; float
46078A:  VSTR            S16, [SP,#0x48+var_48]
46078E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460792:  LDR.W           R1, =(aCred361 - 0x46079C); "CRED361"
460796:  MOV             R0, R4; this
460798:  ADD             R1, PC; "CRED361"
46079A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46079E:  MOV             R1, R6; float
4607A0:  MOV             R2, R0; float
4607A2:  MOV             R3, R5; unsigned __int16 *
4607A4:  STR.W           R11, [SP,#0x48+var_44]; float
4607A8:  VSTR            S16, [SP,#0x48+var_48]
4607AC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4607B0:  LDR.W           R1, =(aCred362 - 0x4607BA); "CRED362"
4607B4:  MOV             R0, R4; this
4607B6:  ADD             R1, PC; "CRED362"
4607B8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4607BC:  MOV             R1, R6; float
4607BE:  MOV             R2, R0; float
4607C0:  MOV             R3, R5; unsigned __int16 *
4607C2:  STR.W           R11, [SP,#0x48+var_44]; float
4607C6:  VSTR            S16, [SP,#0x48+var_48]
4607CA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4607CE:  LDR.W           R1, =(aCred363 - 0x4607D8); "CRED363"
4607D2:  MOV             R0, R4; this
4607D4:  ADD             R1, PC; "CRED363"
4607D6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4607DA:  MOV             R1, R6; float
4607DC:  MOV             R2, R0; float
4607DE:  MOV             R3, R5; unsigned __int16 *
4607E0:  STR.W           R11, [SP,#0x48+var_44]; float
4607E4:  VSTR            S16, [SP,#0x48+var_48]
4607E8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4607EC:  LDR.W           R1, =(aCred364 - 0x4607F6); "CRED364"
4607F0:  MOV             R0, R4; this
4607F2:  ADD             R1, PC; "CRED364"
4607F4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4607F8:  MOV             R1, R6; float
4607FA:  MOV             R2, R0; float
4607FC:  MOV             R3, R5; unsigned __int16 *
4607FE:  STR.W           R11, [SP,#0x48+var_44]; float
460802:  VSTR            S16, [SP,#0x48+var_48]
460806:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46080A:  LDR.W           R1, =(aCred365 - 0x460814); "CRED365"
46080E:  MOV             R0, R4; this
460810:  ADD             R1, PC; "CRED365"
460812:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460816:  MOV             R1, R6; float
460818:  MOV             R2, R0; float
46081A:  MOV             R3, R5; unsigned __int16 *
46081C:  STR.W           R11, [SP,#0x48+var_44]; float
460820:  VSTR            S16, [SP,#0x48+var_48]
460824:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460828:  LDR.W           R1, =(aCred366 - 0x460832); "CRED366"
46082C:  MOV             R0, R4; this
46082E:  ADD             R1, PC; "CRED366"
460830:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460834:  MOV             R1, R6; float
460836:  MOV             R2, R0; float
460838:  MOV             R3, R5; unsigned __int16 *
46083A:  STR.W           R11, [SP,#0x48+var_44]; float
46083E:  VSTR            S16, [SP,#0x48+var_48]
460842:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460846:  LDR.W           R1, =(aCred367 - 0x460850); "CRED367"
46084A:  MOV             R0, R4; this
46084C:  ADD             R1, PC; "CRED367"
46084E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460852:  MOV             R1, R6; float
460854:  MOV             R2, R0; float
460856:  MOV             R3, R5; unsigned __int16 *
460858:  STR.W           R11, [SP,#0x48+var_44]; float
46085C:  VSTR            S16, [SP,#0x48+var_48]
460860:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460864:  LDR.W           R1, =(aCred368 - 0x46086E); "CRED368"
460868:  MOV             R0, R4; this
46086A:  ADD             R1, PC; "CRED368"
46086C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460870:  MOV             R1, R6; float
460872:  MOV             R2, R0; float
460874:  MOV             R3, R5; unsigned __int16 *
460876:  STR.W           R11, [SP,#0x48+var_44]; float
46087A:  VSTR            S16, [SP,#0x48+var_48]
46087E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460882:  LDR.W           R1, =(aCred369 - 0x46088C); "CRED369"
460886:  MOV             R0, R4; this
460888:  ADD             R1, PC; "CRED369"
46088A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46088E:  MOV             R1, R6; float
460890:  MOV             R2, R0; float
460892:  MOV             R3, R5; unsigned __int16 *
460894:  STR.W           R11, [SP,#0x48+var_44]; float
460898:  VSTR            S16, [SP,#0x48+var_48]
46089C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4608A0:  LDR.W           R1, =(aCred370 - 0x4608AA); "CRED370"
4608A4:  MOV             R0, R4; this
4608A6:  ADD             R1, PC; "CRED370"
4608A8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4608AC:  MOV             R1, R6; float
4608AE:  MOV             R2, R0; float
4608B0:  MOV             R3, R5; unsigned __int16 *
4608B2:  STR.W           R11, [SP,#0x48+var_44]; float
4608B6:  VSTR            S16, [SP,#0x48+var_48]
4608BA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4608BE:  LDR.W           R1, =(aCred371 - 0x4608C8); "CRED371"
4608C2:  MOV             R0, R4; this
4608C4:  ADD             R1, PC; "CRED371"
4608C6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4608CA:  MOV             R1, R6; float
4608CC:  MOV             R2, R0; float
4608CE:  MOV             R3, R5; unsigned __int16 *
4608D0:  STR.W           R11, [SP,#0x48+var_44]; float
4608D4:  VSTR            S16, [SP,#0x48+var_48]
4608D8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4608DC:  LDR.W           R1, =(aCred372 - 0x4608E6); "CRED372"
4608E0:  MOV             R0, R4; this
4608E2:  ADD             R1, PC; "CRED372"
4608E4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4608E8:  MOV             R1, R6; float
4608EA:  MOV             R2, R0; float
4608EC:  MOV             R3, R5; unsigned __int16 *
4608EE:  STR.W           R11, [SP,#0x48+var_44]; float
4608F2:  VSTR            S16, [SP,#0x48+var_48]
4608F6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4608FA:  LDR.W           R1, =(aCred373 - 0x460904); "CRED373"
4608FE:  MOV             R0, R4; this
460900:  ADD             R1, PC; "CRED373"
460902:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460906:  MOV             R1, R6; float
460908:  MOV             R2, R0; float
46090A:  MOV             R3, R5; unsigned __int16 *
46090C:  STR.W           R11, [SP,#0x48+var_44]; float
460910:  VSTR            S16, [SP,#0x48+var_48]
460914:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460918:  LDR.W           R1, =(aCred374 - 0x460922); "CRED374"
46091C:  MOV             R0, R4; this
46091E:  ADD             R1, PC; "CRED374"
460920:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460924:  MOV             R1, R6; float
460926:  MOV             R2, R0; float
460928:  MOV             R3, R5; unsigned __int16 *
46092A:  STR.W           R11, [SP,#0x48+var_44]; float
46092E:  VSTR            S16, [SP,#0x48+var_48]
460932:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460936:  LDR.W           R1, =(aCred375 - 0x460940); "CRED375"
46093A:  MOV             R0, R4; this
46093C:  ADD             R1, PC; "CRED375"
46093E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460942:  MOV             R1, R6; float
460944:  MOV             R2, R0; float
460946:  MOV             R3, R5; unsigned __int16 *
460948:  STR.W           R11, [SP,#0x48+var_44]; float
46094C:  VSTR            S16, [SP,#0x48+var_48]
460950:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460954:  LDR.W           R1, =(aCred376 - 0x46095E); "CRED376"
460958:  MOV             R0, R4; this
46095A:  ADD             R1, PC; "CRED376"
46095C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460960:  MOV             R1, R6; float
460962:  MOV             R2, R0; float
460964:  MOV             R3, R5; unsigned __int16 *
460966:  STR.W           R11, [SP,#0x48+var_44]; float
46096A:  VSTR            S16, [SP,#0x48+var_48]
46096E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460972:  LDR.W           R1, =(aCred377 - 0x46097C); "CRED377"
460976:  MOV             R0, R4; this
460978:  ADD             R1, PC; "CRED377"
46097A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46097E:  MOV             R1, R6; float
460980:  MOV             R2, R0; float
460982:  MOV             R3, R5; unsigned __int16 *
460984:  STR.W           R11, [SP,#0x48+var_44]; float
460988:  VSTR            S16, [SP,#0x48+var_48]
46098C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460990:  LDR.W           R1, =(aCred378 - 0x46099A); "CRED378"
460994:  MOV             R0, R4; this
460996:  ADD             R1, PC; "CRED378"
460998:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46099C:  MOV             R1, R6; float
46099E:  MOV             R2, R0; float
4609A0:  MOV             R3, R5; unsigned __int16 *
4609A2:  STR.W           R11, [SP,#0x48+var_44]; float
4609A6:  VSTR            S16, [SP,#0x48+var_48]
4609AA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4609AE:  LDR.W           R1, =(aCred379 - 0x4609B8); "CRED379"
4609B2:  MOV             R0, R4; this
4609B4:  ADD             R1, PC; "CRED379"
4609B6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4609BA:  MOV             R1, R6; float
4609BC:  MOV             R2, R0; float
4609BE:  MOV             R3, R5; unsigned __int16 *
4609C0:  STR.W           R11, [SP,#0x48+var_44]; float
4609C4:  VSTR            S16, [SP,#0x48+var_48]
4609C8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4609CC:  LDR.W           R1, =(aCred380 - 0x4609D6); "CRED380"
4609D0:  MOV             R0, R4; this
4609D2:  ADD             R1, PC; "CRED380"
4609D4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4609D8:  MOV             R1, R6; float
4609DA:  MOV             R2, R0; float
4609DC:  MOV             R3, R5; unsigned __int16 *
4609DE:  STR.W           R11, [SP,#0x48+var_44]; float
4609E2:  VSTR            S16, [SP,#0x48+var_48]
4609E6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4609EA:  LDR.W           R1, =(aCred381 - 0x4609F4); "CRED381"
4609EE:  MOV             R0, R4; this
4609F0:  ADD             R1, PC; "CRED381"
4609F2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4609F6:  MOV             R1, R6; float
4609F8:  MOV             R2, R0; float
4609FA:  MOV             R3, R5; unsigned __int16 *
4609FC:  STR.W           R11, [SP,#0x48+var_44]; float
460A00:  VSTR            S16, [SP,#0x48+var_48]
460A04:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460A08:  LDR.W           R1, =(aCred382 - 0x460A12); "CRED382"
460A0C:  MOV             R0, R4; this
460A0E:  ADD             R1, PC; "CRED382"
460A10:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460A14:  MOV             R1, R6; float
460A16:  MOV             R2, R0; float
460A18:  MOV             R3, R5; unsigned __int16 *
460A1A:  STR.W           R11, [SP,#0x48+var_44]; float
460A1E:  VSTR            S16, [SP,#0x48+var_48]
460A22:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460A26:  LDR.W           R1, =(aCred383 - 0x460A30); "CRED383"
460A2A:  MOV             R0, R4; this
460A2C:  ADD             R1, PC; "CRED383"
460A2E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460A32:  MOV             R1, R6; float
460A34:  MOV             R2, R0; float
460A36:  MOV             R3, R5; unsigned __int16 *
460A38:  STR.W           R11, [SP,#0x48+var_44]; float
460A3C:  VSTR            S16, [SP,#0x48+var_48]
460A40:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460A44:  LDR.W           R1, =(aCred384 - 0x460A4E); "CRED384"
460A48:  MOV             R0, R4; this
460A4A:  ADD             R1, PC; "CRED384"
460A4C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460A50:  MOV             R1, R6; float
460A52:  MOV             R2, R0; float
460A54:  MOV             R3, R5; unsigned __int16 *
460A56:  STR.W           R11, [SP,#0x48+var_44]; float
460A5A:  VSTR            S16, [SP,#0x48+var_48]
460A5E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460A62:  LDR.W           R1, =(aCred385 - 0x460A6C); "CRED385"
460A66:  MOV             R0, R4; this
460A68:  ADD             R1, PC; "CRED385"
460A6A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460A6E:  MOV             R1, R6; float
460A70:  MOV             R2, R0; float
460A72:  MOV             R3, R5; unsigned __int16 *
460A74:  STR.W           R11, [SP,#0x48+var_44]; float
460A78:  VSTR            S16, [SP,#0x48+var_48]
460A7C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460A80:  LDR.W           R1, =(aCred386 - 0x460A8A); "CRED386"
460A84:  MOV             R0, R4; this
460A86:  ADD             R1, PC; "CRED386"
460A88:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460A8C:  MOV             R1, R6; float
460A8E:  MOV             R2, R0; float
460A90:  MOV             R3, R5; unsigned __int16 *
460A92:  STR.W           R11, [SP,#0x48+var_44]; float
460A96:  VSTR            S16, [SP,#0x48+var_48]
460A9A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460A9E:  LDR.W           R1, =(aCred387 - 0x460AA8); "CRED387"
460AA2:  MOV             R0, R4; this
460AA4:  ADD             R1, PC; "CRED387"
460AA6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460AAA:  MOV             R1, R6; float
460AAC:  MOV             R2, R0; float
460AAE:  MOV             R3, R5; unsigned __int16 *
460AB0:  STR.W           R11, [SP,#0x48+var_44]; float
460AB4:  VSTR            S16, [SP,#0x48+var_48]
460AB8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460ABC:  LDR.W           R1, =(aCred388 - 0x460AC6); "CRED388"
460AC0:  MOV             R0, R4; this
460AC2:  ADD             R1, PC; "CRED388"
460AC4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460AC8:  MOV             R1, R6; float
460ACA:  MOV             R2, R0; float
460ACC:  MOV             R3, R5; unsigned __int16 *
460ACE:  STR.W           R11, [SP,#0x48+var_44]; float
460AD2:  VSTR            S16, [SP,#0x48+var_48]
460AD6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460ADA:  LDR.W           R1, =(aCred389 - 0x460AE4); "CRED389"
460ADE:  MOV             R0, R4; this
460AE0:  ADD             R1, PC; "CRED389"
460AE2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460AE6:  MOV             R1, R6; float
460AE8:  MOV             R2, R0; float
460AEA:  MOV             R3, R5; unsigned __int16 *
460AEC:  STR.W           R11, [SP,#0x48+var_44]; float
460AF0:  VSTR            S16, [SP,#0x48+var_48]
460AF4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460AF8:  LDR.W           R1, =(aCred390 - 0x460B02); "CRED390"
460AFC:  MOV             R0, R4; this
460AFE:  ADD             R1, PC; "CRED390"
460B00:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460B04:  MOV             R1, R6; float
460B06:  MOV             R2, R0; float
460B08:  MOV             R3, R5; unsigned __int16 *
460B0A:  STR.W           R11, [SP,#0x48+var_44]; float
460B0E:  VSTR            S16, [SP,#0x48+var_48]
460B12:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460B16:  LDR.W           R1, =(aCred391 - 0x460B20); "CRED391"
460B1A:  MOV             R0, R4; this
460B1C:  ADD             R1, PC; "CRED391"
460B1E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460B22:  MOV             R1, R6; float
460B24:  MOV             R2, R0; float
460B26:  MOV             R3, R5; unsigned __int16 *
460B28:  STR.W           R11, [SP,#0x48+var_44]; float
460B2C:  VSTR            S16, [SP,#0x48+var_48]
460B30:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460B34:  LDR.W           R1, =(aCred392 - 0x460B3E); "CRED392"
460B38:  MOV             R0, R4; this
460B3A:  ADD             R1, PC; "CRED392"
460B3C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460B40:  MOV             R1, R6; float
460B42:  MOV             R2, R0; float
460B44:  MOV             R3, R5; unsigned __int16 *
460B46:  STR.W           R11, [SP,#0x48+var_44]; float
460B4A:  VSTR            S16, [SP,#0x48+var_48]
460B4E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460B52:  LDR.W           R1, =(aCred393 - 0x460B5C); "CRED393"
460B56:  MOV             R0, R4; this
460B58:  ADD             R1, PC; "CRED393"
460B5A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460B5E:  MOV             R1, R6; float
460B60:  MOV             R2, R0; float
460B62:  MOV             R3, R5; unsigned __int16 *
460B64:  STR.W           R11, [SP,#0x48+var_44]; float
460B68:  VSTR            S16, [SP,#0x48+var_48]
460B6C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460B70:  LDR.W           R1, =(aCred394 - 0x460B7A); "CRED394"
460B74:  MOV             R0, R4; this
460B76:  ADD             R1, PC; "CRED394"
460B78:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460B7C:  MOV             R1, R6; float
460B7E:  MOV             R2, R0; float
460B80:  MOV             R3, R5; unsigned __int16 *
460B82:  STR.W           R11, [SP,#0x48+var_44]; float
460B86:  VSTR            S16, [SP,#0x48+var_48]
460B8A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460B8E:  LDR.W           R1, =(aCred395 - 0x460B98); "CRED395"
460B92:  MOV             R0, R4; this
460B94:  ADD             R1, PC; "CRED395"
460B96:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460B9A:  MOV             R1, R6; float
460B9C:  MOV             R2, R0; float
460B9E:  MOV             R3, R5; unsigned __int16 *
460BA0:  STR.W           R11, [SP,#0x48+var_44]; float
460BA4:  VSTR            S16, [SP,#0x48+var_48]
460BA8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460BAC:  LDR.W           R1, =(aCred396 - 0x460BB6); "CRED396"
460BB0:  MOV             R0, R4; this
460BB2:  ADD             R1, PC; "CRED396"
460BB4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460BB8:  MOV             R1, R6; float
460BBA:  MOV             R2, R0; float
460BBC:  MOV             R3, R5; unsigned __int16 *
460BBE:  STR.W           R11, [SP,#0x48+var_44]; float
460BC2:  VSTR            S16, [SP,#0x48+var_48]
460BC6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460BCA:  LDR.W           R1, =(aCred397 - 0x460BD4); "CRED397"
460BCE:  MOV             R0, R4; this
460BD0:  ADD             R1, PC; "CRED397"
460BD2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460BD6:  MOV             R1, R6; float
460BD8:  MOV             R2, R0; float
460BDA:  MOV             R3, R5; unsigned __int16 *
460BDC:  STR.W           R11, [SP,#0x48+var_44]; float
460BE0:  VSTR            S16, [SP,#0x48+var_48]
460BE4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460BE8:  VLDR            S0, [SP,#0x48+var_3C]
460BEC:  MOV             R0, R4; this
460BEE:  LDR.W           R1, =(aCred398 - 0x460BFA); "CRED398"
460BF2:  VCVT.F32.U32    S0, S0
460BF6:  ADD             R1, PC; "CRED398"
460BF8:  VADD.F32        S0, S0, S18
460BFC:  VCVT.U32.F32    S0, S0
460C00:  VSTR            S0, [SP,#0x48+var_3C]
460C04:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460C08:  MOV             R1, R10; float
460C0A:  MOV             R2, R0; float
460C0C:  MOV             R3, R5; unsigned __int16 *
460C0E:  STR.W           R8, [SP,#0x48+var_44]; float
460C12:  VSTR            S16, [SP,#0x48+var_48]
460C16:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460C1A:  LDR.W           R1, =(aCred399 - 0x460C24); "CRED399"
460C1E:  MOV             R0, R4; this
460C20:  ADD             R1, PC; "CRED399"
460C22:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460C26:  MOV             R1, R10; float
460C28:  MOV             R2, R0; float
460C2A:  MOV             R3, R5; unsigned __int16 *
460C2C:  STR.W           R11, [SP,#0x48+var_44]; float
460C30:  VSTR            S16, [SP,#0x48+var_48]
460C34:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460C38:  VLDR            S0, [SP,#0x48+var_3C]
460C3C:  MOV             R0, R4; this
460C3E:  LDR.W           R1, =(aCred400 - 0x460C4A); "CRED400"
460C42:  VCVT.F32.U32    S0, S0
460C46:  ADD             R1, PC; "CRED400"
460C48:  VADD.F32        S0, S0, S18
460C4C:  VCVT.U32.F32    S0, S0
460C50:  VSTR            S0, [SP,#0x48+var_3C]
460C54:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460C58:  MOV             R1, R10; float
460C5A:  MOV             R2, R0; float
460C5C:  MOV             R3, R5; unsigned __int16 *
460C5E:  STR.W           R8, [SP,#0x48+var_44]; float
460C62:  VSTR            S16, [SP,#0x48+var_48]
460C66:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460C6A:  LDR.W           R1, =(aCred401 - 0x460C74); "CRED401"
460C6E:  MOV             R0, R4; this
460C70:  ADD             R1, PC; "CRED401"
460C72:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460C76:  MOV             R1, R10; float
460C78:  MOV             R2, R0; float
460C7A:  MOV             R3, R5; unsigned __int16 *
460C7C:  STR.W           R11, [SP,#0x48+var_44]; float
460C80:  VSTR            S16, [SP,#0x48+var_48]
460C84:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460C88:  LDR.W           R1, =(aCred402 - 0x460C92); "CRED402"
460C8C:  MOV             R0, R4; this
460C8E:  ADD             R1, PC; "CRED402"
460C90:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460C94:  MOV             R1, R10; float
460C96:  MOV             R2, R0; float
460C98:  MOV             R3, R5; unsigned __int16 *
460C9A:  STR.W           R11, [SP,#0x48+var_44]; float
460C9E:  VSTR            S16, [SP,#0x48+var_48]
460CA2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460CA6:  VLDR            S0, [SP,#0x48+var_3C]
460CAA:  MOV             R0, R4; this
460CAC:  LDR.W           R1, =(aCred403 - 0x460CB8); "CRED403"
460CB0:  VCVT.F32.U32    S0, S0
460CB4:  ADD             R1, PC; "CRED403"
460CB6:  VADD.F32        S0, S0, S18
460CBA:  VCVT.U32.F32    S0, S0
460CBE:  VSTR            S0, [SP,#0x48+var_3C]
460CC2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460CC6:  MOV             R1, R10; float
460CC8:  MOV             R2, R0; float
460CCA:  MOV             R3, R5; unsigned __int16 *
460CCC:  STR.W           R8, [SP,#0x48+var_44]; float
460CD0:  VSTR            S16, [SP,#0x48+var_48]
460CD4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460CD8:  LDR.W           R1, =(aCred404 - 0x460CE2); "CRED404"
460CDC:  MOV             R0, R4; this
460CDE:  ADD             R1, PC; "CRED404"
460CE0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460CE4:  MOV             R1, R10; float
460CE6:  MOV             R2, R0; float
460CE8:  MOV             R3, R5; unsigned __int16 *
460CEA:  STR.W           R11, [SP,#0x48+var_44]; float
460CEE:  VSTR            S16, [SP,#0x48+var_48]
460CF2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460CF6:  LDR.W           R1, =(aCred405 - 0x460D00); "CRED405"
460CFA:  MOV             R0, R4; this
460CFC:  ADD             R1, PC; "CRED405"
460CFE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460D02:  MOV             R1, R10; float
460D04:  MOV             R2, R0; float
460D06:  MOV             R3, R5; unsigned __int16 *
460D08:  STR.W           R11, [SP,#0x48+var_44]; float
460D0C:  VSTR            S16, [SP,#0x48+var_48]
460D10:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460D14:  LDR.W           R1, =(aCred406 - 0x460D1E); "CRED406"
460D18:  MOV             R0, R4; this
460D1A:  ADD             R1, PC; "CRED406"
460D1C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460D20:  MOV             R1, R10; float
460D22:  MOV             R2, R0; float
460D24:  MOV             R3, R5; unsigned __int16 *
460D26:  STR.W           R11, [SP,#0x48+var_44]; float
460D2A:  VSTR            S16, [SP,#0x48+var_48]
460D2E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460D32:  LDR.W           R1, =(aCred407 - 0x460D3C); "CRED407"
460D36:  MOV             R0, R4; this
460D38:  ADD             R1, PC; "CRED407"
460D3A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460D3E:  MOV             R1, R10; float
460D40:  MOV             R2, R0; float
460D42:  MOV             R3, R5; unsigned __int16 *
460D44:  STR.W           R11, [SP,#0x48+var_44]; float
460D48:  VSTR            S16, [SP,#0x48+var_48]
460D4C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460D50:  LDR.W           R1, =(aCred408 - 0x460D5A); "CRED408"
460D54:  MOV             R0, R4; this
460D56:  ADD             R1, PC; "CRED408"
460D58:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460D5C:  MOV             R1, R10; float
460D5E:  MOV             R2, R0; float
460D60:  MOV             R3, R5; unsigned __int16 *
460D62:  STR.W           R11, [SP,#0x48+var_44]; float
460D66:  VSTR            S16, [SP,#0x48+var_48]
460D6A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460D6E:  LDR.W           R1, =(aCred409 - 0x460D78); "CRED409"
460D72:  MOV             R0, R4; this
460D74:  ADD             R1, PC; "CRED409"
460D76:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460D7A:  MOV             R1, R10; float
460D7C:  MOV             R2, R0; float
460D7E:  MOV             R3, R5; unsigned __int16 *
460D80:  STR.W           R11, [SP,#0x48+var_44]; float
460D84:  VSTR            S16, [SP,#0x48+var_48]
460D88:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460D8C:  VLDR            S0, [SP,#0x48+var_3C]
460D90:  MOV             R0, R4; this
460D92:  LDR.W           R1, =(aCred410 - 0x460D9E); "CRED410"
460D96:  VCVT.F32.U32    S0, S0
460D9A:  ADD             R1, PC; "CRED410"
460D9C:  VADD.F32        S0, S0, S20
460DA0:  VCVT.U32.F32    S0, S0
460DA4:  VSTR            S0, [SP,#0x48+var_3C]
460DA8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460DAC:  MOV             R1, R10; float
460DAE:  MOV             R2, R0; float
460DB0:  MOV             R3, R5; unsigned __int16 *
460DB2:  STR.W           R8, [SP,#0x48+var_44]; float
460DB6:  VSTR            S16, [SP,#0x48+var_48]
460DBA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460DBE:  LDR.W           R1, =(aCred411 - 0x460DC8); "CRED411"
460DC2:  MOV             R0, R4; this
460DC4:  ADD             R1, PC; "CRED411"
460DC6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460DCA:  MOV             R1, R10; float
460DCC:  MOV             R2, R0; float
460DCE:  MOV             R3, R5; unsigned __int16 *
460DD0:  STR.W           R11, [SP,#0x48+var_44]; float
460DD4:  VSTR            S16, [SP,#0x48+var_48]
460DD8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460DDC:  LDR.W           R1, =(aCred412 - 0x460DE6); "CRED412"
460DE0:  MOV             R0, R4; this
460DE2:  ADD             R1, PC; "CRED412"
460DE4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460DE8:  MOV             R1, R10; float
460DEA:  MOV             R2, R0; float
460DEC:  MOV             R3, R5; unsigned __int16 *
460DEE:  STR.W           R11, [SP,#0x48+var_44]; float
460DF2:  VSTR            S16, [SP,#0x48+var_48]
460DF6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460DFA:  LDR.W           R1, =(aCred413 - 0x460E04); "CRED413"
460DFE:  MOV             R0, R4; this
460E00:  ADD             R1, PC; "CRED413"
460E02:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460E06:  MOV             R1, R10; float
460E08:  MOV             R2, R0; float
460E0A:  MOV             R3, R5; unsigned __int16 *
460E0C:  STR.W           R11, [SP,#0x48+var_44]; float
460E10:  VSTR            S16, [SP,#0x48+var_48]
460E14:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460E18:  LDR.W           R1, =(aCred414 - 0x460E22); "CRED414"
460E1C:  MOV             R0, R4; this
460E1E:  ADD             R1, PC; "CRED414"
460E20:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460E24:  MOV             R1, R10; float
460E26:  MOV             R2, R0; float
460E28:  MOV             R3, R5; unsigned __int16 *
460E2A:  STR.W           R11, [SP,#0x48+var_44]; float
460E2E:  VSTR            S16, [SP,#0x48+var_48]
460E32:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460E36:  LDR.W           R1, =(aCred415 - 0x460E40); "CRED415"
460E3A:  MOV             R0, R4; this
460E3C:  ADD             R1, PC; "CRED415"
460E3E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460E42:  MOV             R1, R10; float
460E44:  MOV             R2, R0; float
460E46:  MOV             R3, R5; unsigned __int16 *
460E48:  STR.W           R11, [SP,#0x48+var_44]; float
460E4C:  VSTR            S16, [SP,#0x48+var_48]
460E50:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460E54:  LDR.W           R1, =(aCred416 - 0x460E5E); "CRED416"
460E58:  MOV             R0, R4; this
460E5A:  ADD             R1, PC; "CRED416"
460E5C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460E60:  MOV             R1, R10; float
460E62:  MOV             R2, R0; float
460E64:  MOV             R3, R5; unsigned __int16 *
460E66:  STR.W           R11, [SP,#0x48+var_44]; float
460E6A:  VSTR            S16, [SP,#0x48+var_48]
460E6E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460E72:  VLDR            S0, [SP,#0x48+var_3C]
460E76:  MOV             R0, R4; this
460E78:  LDR.W           R1, =(aCred417 - 0x460E84); "CRED417"
460E7C:  VCVT.F32.U32    S0, S0
460E80:  ADD             R1, PC; "CRED417"
460E82:  VADD.F32        S0, S0, S18
460E86:  VCVT.U32.F32    S0, S0
460E8A:  VSTR            S0, [SP,#0x48+var_3C]
460E8E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460E92:  MOV             R1, R10; float
460E94:  MOV             R2, R0; float
460E96:  MOV             R3, R5; unsigned __int16 *
460E98:  STR.W           R8, [SP,#0x48+var_44]; float
460E9C:  VSTR            S16, [SP,#0x48+var_48]
460EA0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460EA4:  LDR.W           R1, =(aCred418 - 0x460EAE); "CRED418"
460EA8:  MOV             R0, R4; this
460EAA:  ADD             R1, PC; "CRED418"
460EAC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460EB0:  MOV             R1, R6; float
460EB2:  MOV             R2, R0; float
460EB4:  MOV             R3, R5; unsigned __int16 *
460EB6:  STR.W           R11, [SP,#0x48+var_44]; float
460EBA:  VSTR            S16, [SP,#0x48+var_48]
460EBE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460EC2:  LDR.W           R1, =(aCred419 - 0x460ECC); "CRED419"
460EC6:  MOV             R0, R4; this
460EC8:  ADD             R1, PC; "CRED419"
460ECA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460ECE:  MOV             R1, R6; float
460ED0:  MOV             R2, R0; float
460ED2:  MOV             R3, R5; unsigned __int16 *
460ED4:  STR.W           R11, [SP,#0x48+var_44]; float
460ED8:  VSTR            S16, [SP,#0x48+var_48]
460EDC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460EE0:  LDR.W           R1, =(aCred420 - 0x460EEA); "CRED420"
460EE4:  MOV             R0, R4; this
460EE6:  ADD             R1, PC; "CRED420"
460EE8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460EEC:  MOV             R1, R6; float
460EEE:  MOV             R2, R0; float
460EF0:  MOV             R3, R5; unsigned __int16 *
460EF2:  STR.W           R11, [SP,#0x48+var_44]; float
460EF6:  VSTR            S16, [SP,#0x48+var_48]
460EFA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460EFE:  LDR.W           R1, =(aCred421 - 0x460F08); "CRED421"
460F02:  MOV             R0, R4; this
460F04:  ADD             R1, PC; "CRED421"
460F06:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460F0A:  MOV             R1, R6; float
460F0C:  MOV             R2, R0; float
460F0E:  MOV             R3, R5; unsigned __int16 *
460F10:  STR.W           R11, [SP,#0x48+var_44]; float
460F14:  VSTR            S16, [SP,#0x48+var_48]
460F18:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460F1C:  LDR.W           R1, =(aCred422 - 0x460F26); "CRED422"
460F20:  MOV             R0, R4; this
460F22:  ADD             R1, PC; "CRED422"
460F24:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460F28:  MOV             R1, R6; float
460F2A:  MOV             R2, R0; float
460F2C:  MOV             R3, R5; unsigned __int16 *
460F2E:  STR.W           R11, [SP,#0x48+var_44]; float
460F32:  VSTR            S16, [SP,#0x48+var_48]
460F36:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460F3A:  LDR.W           R1, =(aCred423 - 0x460F44); "CRED423"
460F3E:  MOV             R0, R4; this
460F40:  ADD             R1, PC; "CRED423"
460F42:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460F46:  MOV             R1, R6; float
460F48:  MOV             R2, R0; float
460F4A:  MOV             R3, R5; unsigned __int16 *
460F4C:  STR.W           R11, [SP,#0x48+var_44]; float
460F50:  VSTR            S16, [SP,#0x48+var_48]
460F54:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460F58:  LDR.W           R1, =(aCred424 - 0x460F62); "CRED424"
460F5C:  MOV             R0, R4; this
460F5E:  ADD             R1, PC; "CRED424"
460F60:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460F64:  MOV             R1, R6; float
460F66:  MOV             R2, R0; float
460F68:  MOV             R3, R5; unsigned __int16 *
460F6A:  STR.W           R11, [SP,#0x48+var_44]; float
460F6E:  VSTR            S16, [SP,#0x48+var_48]
460F72:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460F76:  LDR.W           R1, =(aCred425 - 0x460F80); "CRED425"
460F7A:  MOV             R0, R4; this
460F7C:  ADD             R1, PC; "CRED425"
460F7E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460F82:  MOV             R1, R6; float
460F84:  MOV             R2, R0; float
460F86:  MOV             R3, R5; unsigned __int16 *
460F88:  STR.W           R11, [SP,#0x48+var_44]; float
460F8C:  VSTR            S16, [SP,#0x48+var_48]
460F90:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460F94:  LDR.W           R1, =(aCred426 - 0x460F9E); "CRED426"
460F98:  MOV             R0, R4; this
460F9A:  ADD             R1, PC; "CRED426"
460F9C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460FA0:  MOV             R1, R6; float
460FA2:  MOV             R2, R0; float
460FA4:  MOV             R3, R5; unsigned __int16 *
460FA6:  STR.W           R11, [SP,#0x48+var_44]; float
460FAA:  VSTR            S16, [SP,#0x48+var_48]
460FAE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460FB2:  LDR.W           R1, =(aCred427 - 0x460FBC); "CRED427"
460FB6:  MOV             R0, R4; this
460FB8:  ADD             R1, PC; "CRED427"
460FBA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460FBE:  MOV             R1, R6; float
460FC0:  MOV             R2, R0; float
460FC2:  MOV             R3, R5; unsigned __int16 *
460FC4:  STR.W           R11, [SP,#0x48+var_44]; float
460FC8:  VSTR            S16, [SP,#0x48+var_48]
460FCC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460FD0:  LDR.W           R1, =(aCred428 - 0x460FDA); "CRED428"
460FD4:  MOV             R0, R4; this
460FD6:  ADD             R1, PC; "CRED428"
460FD8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460FDC:  MOV             R1, R6; float
460FDE:  MOV             R2, R0; float
460FE0:  MOV             R3, R5; unsigned __int16 *
460FE2:  STR.W           R11, [SP,#0x48+var_44]; float
460FE6:  VSTR            S16, [SP,#0x48+var_48]
460FEA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
460FEE:  LDR.W           R1, =(aCred429 - 0x460FF8); "CRED429"
460FF2:  MOV             R0, R4; this
460FF4:  ADD             R1, PC; "CRED429"
460FF6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
460FFA:  MOV             R1, R6; float
460FFC:  MOV             R2, R0; float
460FFE:  MOV             R3, R5; unsigned __int16 *
461000:  STR.W           R11, [SP,#0x48+var_44]; float
461004:  VSTR            S16, [SP,#0x48+var_48]
461008:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46100C:  LDR.W           R1, =(aCred430 - 0x461016); "CRED430"
461010:  MOV             R0, R4; this
461012:  ADD             R1, PC; "CRED430"
461014:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461018:  MOV             R1, R6; float
46101A:  MOV             R2, R0; float
46101C:  MOV             R3, R5; unsigned __int16 *
46101E:  STR.W           R11, [SP,#0x48+var_44]; float
461022:  VSTR            S16, [SP,#0x48+var_48]
461026:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46102A:  LDR.W           R1, =(aCred431 - 0x461034); "CRED431"
46102E:  MOV             R0, R4; this
461030:  ADD             R1, PC; "CRED431"
461032:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461036:  MOV             R1, R6; float
461038:  MOV             R2, R0; float
46103A:  MOV             R3, R5; unsigned __int16 *
46103C:  STR.W           R11, [SP,#0x48+var_44]; float
461040:  VSTR            S16, [SP,#0x48+var_48]
461044:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461048:  LDR.W           R1, =(aCred432 - 0x461052); "CRED432"
46104C:  MOV             R0, R4; this
46104E:  ADD             R1, PC; "CRED432"
461050:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461054:  MOV             R1, R6; float
461056:  MOV             R2, R0; float
461058:  MOV             R3, R5; unsigned __int16 *
46105A:  STR.W           R11, [SP,#0x48+var_44]; float
46105E:  VSTR            S16, [SP,#0x48+var_48]
461062:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461066:  LDR.W           R1, =(aCred433 - 0x461070); "CRED433"
46106A:  MOV             R0, R4; this
46106C:  ADD             R1, PC; "CRED433"
46106E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461072:  MOV             R1, R6; float
461074:  MOV             R2, R0; float
461076:  MOV             R3, R5; unsigned __int16 *
461078:  STR.W           R11, [SP,#0x48+var_44]; float
46107C:  VSTR            S16, [SP,#0x48+var_48]
461080:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461084:  LDR.W           R1, =(aCred434 - 0x46108E); "CRED434"
461088:  MOV             R0, R4; this
46108A:  ADD             R1, PC; "CRED434"
46108C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461090:  MOV             R1, R6; float
461092:  MOV             R2, R0; float
461094:  MOV             R3, R5; unsigned __int16 *
461096:  STR.W           R11, [SP,#0x48+var_44]; float
46109A:  VSTR            S16, [SP,#0x48+var_48]
46109E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4610A2:  LDR.W           R1, =(aCred435 - 0x4610AC); "CRED435"
4610A6:  MOV             R0, R4; this
4610A8:  ADD             R1, PC; "CRED435"
4610AA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4610AE:  MOV             R1, R6; float
4610B0:  MOV             R2, R0; float
4610B2:  MOV             R3, R5; unsigned __int16 *
4610B4:  STR.W           R11, [SP,#0x48+var_44]; float
4610B8:  VSTR            S16, [SP,#0x48+var_48]
4610BC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4610C0:  LDR.W           R1, =(aCred436 - 0x4610CA); "CRED436"
4610C4:  MOV             R0, R4; this
4610C6:  ADD             R1, PC; "CRED436"
4610C8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4610CC:  MOV             R1, R6; float
4610CE:  MOV             R2, R0; float
4610D0:  MOV             R3, R5; unsigned __int16 *
4610D2:  STR.W           R11, [SP,#0x48+var_44]; float
4610D6:  VSTR            S16, [SP,#0x48+var_48]
4610DA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4610DE:  LDR.W           R1, =(aCred437 - 0x4610E8); "CRED437"
4610E2:  MOV             R0, R4; this
4610E4:  ADD             R1, PC; "CRED437"
4610E6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4610EA:  MOV             R1, R6; float
4610EC:  MOV             R2, R0; float
4610EE:  MOV             R3, R5; unsigned __int16 *
4610F0:  STR.W           R11, [SP,#0x48+var_44]; float
4610F4:  VSTR            S16, [SP,#0x48+var_48]
4610F8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4610FC:  LDR.W           R1, =(aCred438 - 0x461106); "CRED438"
461100:  MOV             R0, R4; this
461102:  ADD             R1, PC; "CRED438"
461104:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461108:  MOV             R1, R6; float
46110A:  MOV             R2, R0; float
46110C:  MOV             R3, R5; unsigned __int16 *
46110E:  STR.W           R11, [SP,#0x48+var_44]; float
461112:  VSTR            S16, [SP,#0x48+var_48]
461116:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46111A:  LDR.W           R1, =(aCred439 - 0x461124); "CRED439"
46111E:  MOV             R0, R4; this
461120:  ADD             R1, PC; "CRED439"
461122:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461126:  MOV             R1, R6; float
461128:  MOV             R2, R0; float
46112A:  MOV             R3, R5; unsigned __int16 *
46112C:  STR.W           R11, [SP,#0x48+var_44]; float
461130:  VSTR            S16, [SP,#0x48+var_48]
461134:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461138:  LDR.W           R1, =(aCred440 - 0x461142); "CRED440"
46113C:  MOV             R0, R4; this
46113E:  ADD             R1, PC; "CRED440"
461140:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461144:  MOV             R1, R6; float
461146:  MOV             R2, R0; float
461148:  MOV             R3, R5; unsigned __int16 *
46114A:  STR.W           R11, [SP,#0x48+var_44]; float
46114E:  VSTR            S16, [SP,#0x48+var_48]
461152:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461156:  LDR.W           R1, =(aCred441 - 0x461160); "CRED441"
46115A:  MOV             R0, R4; this
46115C:  ADD             R1, PC; "CRED441"
46115E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461162:  MOV             R1, R6; float
461164:  MOV             R2, R0; float
461166:  MOV             R3, R5; unsigned __int16 *
461168:  STR.W           R11, [SP,#0x48+var_44]; float
46116C:  VSTR            S16, [SP,#0x48+var_48]
461170:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461174:  LDR.W           R1, =(aCred442 - 0x46117E); "CRED442"
461178:  MOV             R0, R4; this
46117A:  ADD             R1, PC; "CRED442"
46117C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461180:  MOV             R1, R6; float
461182:  MOV             R2, R0; float
461184:  MOV             R3, R5; unsigned __int16 *
461186:  STR.W           R11, [SP,#0x48+var_44]; float
46118A:  VSTR            S16, [SP,#0x48+var_48]
46118E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461192:  LDR.W           R1, =(aCred443 - 0x46119C); "CRED443"
461196:  MOV             R0, R4; this
461198:  ADD             R1, PC; "CRED443"
46119A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46119E:  MOV             R1, R6; float
4611A0:  MOV             R2, R0; float
4611A2:  MOV             R3, R5; unsigned __int16 *
4611A4:  STR.W           R11, [SP,#0x48+var_44]; float
4611A8:  VSTR            S16, [SP,#0x48+var_48]
4611AC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4611B0:  LDR.W           R1, =(aCred444 - 0x4611BA); "CRED444"
4611B4:  MOV             R0, R4; this
4611B6:  ADD             R1, PC; "CRED444"
4611B8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4611BC:  MOV             R1, R6; float
4611BE:  MOV             R2, R0; float
4611C0:  MOV             R3, R5; unsigned __int16 *
4611C2:  STR.W           R11, [SP,#0x48+var_44]; float
4611C6:  VSTR            S16, [SP,#0x48+var_48]
4611CA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4611CE:  LDR.W           R1, =(aCred445 - 0x4611D8); "CRED445"
4611D2:  MOV             R0, R4; this
4611D4:  ADD             R1, PC; "CRED445"
4611D6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4611DA:  MOV             R1, R6; float
4611DC:  MOV             R2, R0; float
4611DE:  MOV             R3, R5; unsigned __int16 *
4611E0:  STR.W           R11, [SP,#0x48+var_44]; float
4611E4:  VSTR            S16, [SP,#0x48+var_48]
4611E8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4611EC:  LDR.W           R1, =(aCred446 - 0x4611F6); "CRED446"
4611F0:  MOV             R0, R4; this
4611F2:  ADD             R1, PC; "CRED446"
4611F4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4611F8:  MOV             R1, R6; float
4611FA:  MOV             R2, R0; float
4611FC:  MOV             R3, R5; unsigned __int16 *
4611FE:  STR.W           R11, [SP,#0x48+var_44]; float
461202:  VSTR            S16, [SP,#0x48+var_48]
461206:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46120A:  LDR.W           R1, =(aCred447 - 0x461214); "CRED447"
46120E:  MOV             R0, R4; this
461210:  ADD             R1, PC; "CRED447"
461212:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461216:  MOV             R1, R6; float
461218:  MOV             R2, R0; float
46121A:  MOV             R3, R5; unsigned __int16 *
46121C:  STR.W           R11, [SP,#0x48+var_44]; float
461220:  VSTR            S16, [SP,#0x48+var_48]
461224:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461228:  LDR.W           R1, =(aCred448 - 0x461232); "CRED448"
46122C:  MOV             R0, R4; this
46122E:  ADD             R1, PC; "CRED448"
461230:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461234:  MOV             R1, R6; float
461236:  MOV             R2, R0; float
461238:  MOV             R3, R5; unsigned __int16 *
46123A:  STR.W           R11, [SP,#0x48+var_44]; float
46123E:  VSTR            S16, [SP,#0x48+var_48]
461242:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461246:  LDR.W           R1, =(aCred449 - 0x461250); "CRED449"
46124A:  MOV             R0, R4; this
46124C:  ADD             R1, PC; "CRED449"
46124E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461252:  MOV             R1, R6; float
461254:  MOV             R2, R0; float
461256:  MOV             R3, R5; unsigned __int16 *
461258:  STR.W           R11, [SP,#0x48+var_44]; float
46125C:  VSTR            S16, [SP,#0x48+var_48]
461260:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461264:  VLDR            S0, [SP,#0x48+var_3C]
461268:  MOV             R0, R4; this
46126A:  LDR.W           R1, =(aCred450 - 0x461276); "CRED450"
46126E:  VCVT.F32.U32    S0, S0
461272:  ADD             R1, PC; "CRED450"
461274:  VADD.F32        S0, S0, S18
461278:  VCVT.U32.F32    S0, S0
46127C:  VSTR            S0, [SP,#0x48+var_3C]
461280:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461284:  MOV             R1, R10; float
461286:  MOV             R2, R0; float
461288:  MOV             R3, R5; unsigned __int16 *
46128A:  STR.W           R8, [SP,#0x48+var_44]; float
46128E:  VSTR            S16, [SP,#0x48+var_48]
461292:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461296:  LDR.W           R1, =(aCred451 - 0x4612A0); "CRED451"
46129A:  MOV             R0, R4; this
46129C:  ADD             R1, PC; "CRED451"
46129E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4612A2:  MOV             R1, R10; float
4612A4:  MOV             R2, R0; float
4612A6:  MOV             R3, R5; unsigned __int16 *
4612A8:  STR.W           R11, [SP,#0x48+var_44]; float
4612AC:  VSTR            S16, [SP,#0x48+var_48]
4612B0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4612B4:  VLDR            S0, [SP,#0x48+var_3C]
4612B8:  MOV             R0, R4; this
4612BA:  LDR.W           R1, =(aCred452 - 0x4612C6); "CRED452"
4612BE:  VCVT.F32.U32    S0, S0
4612C2:  ADD             R1, PC; "CRED452"
4612C4:  VADD.F32        S0, S0, S18
4612C8:  VCVT.U32.F32    S0, S0
4612CC:  VSTR            S0, [SP,#0x48+var_3C]
4612D0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4612D4:  MOV             R1, R10; float
4612D6:  MOV             R2, R0; float
4612D8:  MOV             R3, R5; unsigned __int16 *
4612DA:  STR.W           R8, [SP,#0x48+var_44]; float
4612DE:  VSTR            S16, [SP,#0x48+var_48]
4612E2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4612E6:  LDR.W           R1, =(aCred453 - 0x4612F0); "CRED453"
4612EA:  MOV             R0, R4; this
4612EC:  ADD             R1, PC; "CRED453"
4612EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4612F2:  MOV             R1, R10; float
4612F4:  MOV             R2, R0; float
4612F6:  MOV             R3, R5; unsigned __int16 *
4612F8:  STR.W           R11, [SP,#0x48+var_44]; float
4612FC:  VSTR            S16, [SP,#0x48+var_48]
461300:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461304:  VLDR            S0, [SP,#0x48+var_3C]
461308:  MOV             R0, R4; this
46130A:  LDR.W           R1, =(aCred454 - 0x461316); "CRED454"
46130E:  VCVT.F32.U32    S0, S0
461312:  ADD             R1, PC; "CRED454"
461314:  VADD.F32        S0, S0, S18
461318:  VCVT.U32.F32    S0, S0
46131C:  VSTR            S0, [SP,#0x48+var_3C]
461320:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461324:  MOV             R1, R10; float
461326:  MOV             R2, R0; float
461328:  MOV             R3, R5; unsigned __int16 *
46132A:  STR.W           R8, [SP,#0x48+var_44]; float
46132E:  VSTR            S16, [SP,#0x48+var_48]
461332:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461336:  LDR.W           R1, =(aCred455 - 0x461340); "CRED455"
46133A:  MOV             R0, R4; this
46133C:  ADD             R1, PC; "CRED455"
46133E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461342:  MOV             R1, R10; float
461344:  MOV             R2, R0; float
461346:  MOV             R3, R5; unsigned __int16 *
461348:  STR.W           R11, [SP,#0x48+var_44]; float
46134C:  VSTR            S16, [SP,#0x48+var_48]
461350:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461354:  VLDR            S0, [SP,#0x48+var_3C]
461358:  MOV             R0, R4; this
46135A:  LDR.W           R1, =(aCrd455a - 0x461366); "CRD455A"
46135E:  VCVT.F32.U32    S0, S0
461362:  ADD             R1, PC; "CRD455A"
461364:  VADD.F32        S0, S0, S18
461368:  VCVT.U32.F32    S0, S0
46136C:  VSTR            S0, [SP,#0x48+var_3C]
461370:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461374:  MOV             R1, R10; float
461376:  MOV             R2, R0; float
461378:  MOV             R3, R5; unsigned __int16 *
46137A:  STR.W           R8, [SP,#0x48+var_44]; float
46137E:  VSTR            S16, [SP,#0x48+var_48]
461382:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461386:  LDR.W           R1, =(aCrd455b - 0x461390); "CRD455B"
46138A:  MOV             R0, R4; this
46138C:  ADD             R1, PC; "CRD455B"
46138E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461392:  MOV             R1, R10; float
461394:  MOV             R2, R0; float
461396:  MOV             R3, R5; unsigned __int16 *
461398:  STR.W           R11, [SP,#0x48+var_44]; float
46139C:  VSTR            S16, [SP,#0x48+var_48]
4613A0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4613A4:  VLDR            S0, [SP,#0x48+var_3C]
4613A8:  MOV             R0, R4; this
4613AA:  LDR.W           R1, =(aCrd455c - 0x4613B6); "CRD455C"
4613AE:  VCVT.F32.U32    S0, S0
4613B2:  ADD             R1, PC; "CRD455C"
4613B4:  VADD.F32        S0, S0, S18
4613B8:  VCVT.U32.F32    S0, S0
4613BC:  VSTR            S0, [SP,#0x48+var_3C]
4613C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4613C4:  MOV             R1, R10; float
4613C6:  MOV             R2, R0; float
4613C8:  MOV             R3, R5; unsigned __int16 *
4613CA:  STR.W           R8, [SP,#0x48+var_44]; float
4613CE:  VSTR            S16, [SP,#0x48+var_48]
4613D2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4613D6:  LDR.W           R1, =(aCrd455d - 0x4613E0); "CRD455D"
4613DA:  MOV             R0, R4; this
4613DC:  ADD             R1, PC; "CRD455D"
4613DE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4613E2:  MOV             R1, R10; float
4613E4:  MOV             R2, R0; float
4613E6:  MOV             R3, R5; unsigned __int16 *
4613E8:  STR.W           R11, [SP,#0x48+var_44]; float
4613EC:  VSTR            S16, [SP,#0x48+var_48]
4613F0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4613F4:  VLDR            S0, [SP,#0x48+var_3C]
4613F8:  MOV             R0, R4; this
4613FA:  LDR.W           R1, =(aCred456 - 0x461406); "CRED456"
4613FE:  VCVT.F32.U32    S0, S0
461402:  ADD             R1, PC; "CRED456"
461404:  VADD.F32        S0, S0, S18
461408:  VCVT.U32.F32    S0, S0
46140C:  VSTR            S0, [SP,#0x48+var_3C]
461410:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461414:  MOV             R1, R10; float
461416:  MOV             R2, R0; float
461418:  MOV             R3, R5; unsigned __int16 *
46141A:  STR.W           R8, [SP,#0x48+var_44]; float
46141E:  VSTR            S16, [SP,#0x48+var_48]
461422:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461426:  LDR.W           R1, =(aCred457 - 0x461430); "CRED457"
46142A:  MOV             R0, R4; this
46142C:  ADD             R1, PC; "CRED457"
46142E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461432:  MOV             R1, R6; float
461434:  MOV             R2, R0; float
461436:  MOV             R3, R5; unsigned __int16 *
461438:  STR.W           R11, [SP,#0x48+var_44]; float
46143C:  VSTR            S16, [SP,#0x48+var_48]
461440:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461444:  LDR.W           R1, =(aCred458 - 0x46144E); "CRED458"
461448:  MOV             R0, R4; this
46144A:  ADD             R1, PC; "CRED458"
46144C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461450:  MOV             R1, R6; float
461452:  MOV             R2, R0; float
461454:  MOV             R3, R5; unsigned __int16 *
461456:  STR.W           R11, [SP,#0x48+var_44]; float
46145A:  VSTR            S16, [SP,#0x48+var_48]
46145E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461462:  LDR.W           R1, =(aCred459 - 0x46146C); "CRED459"
461466:  MOV             R0, R4; this
461468:  ADD             R1, PC; "CRED459"
46146A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46146E:  MOV             R1, R6; float
461470:  MOV             R2, R0; float
461472:  MOV             R3, R5; unsigned __int16 *
461474:  STR.W           R11, [SP,#0x48+var_44]; float
461478:  VSTR            S16, [SP,#0x48+var_48]
46147C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461480:  LDR.W           R1, =(aCred460 - 0x46148A); "CRED460"
461484:  MOV             R0, R4; this
461486:  ADD             R1, PC; "CRED460"
461488:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46148C:  MOV             R1, R6; float
46148E:  MOV             R2, R0; float
461490:  MOV             R3, R5; unsigned __int16 *
461492:  STR.W           R11, [SP,#0x48+var_44]; float
461496:  VSTR            S16, [SP,#0x48+var_48]
46149A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46149E:  LDR.W           R1, =(aCred461 - 0x4614A8); "CRED461"
4614A2:  MOV             R0, R4; this
4614A4:  ADD             R1, PC; "CRED461"
4614A6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4614AA:  MOV             R1, R6; float
4614AC:  MOV             R2, R0; float
4614AE:  MOV             R3, R5; unsigned __int16 *
4614B0:  STR.W           R11, [SP,#0x48+var_44]; float
4614B4:  VSTR            S16, [SP,#0x48+var_48]
4614B8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4614BC:  LDR.W           R1, =(aCred462 - 0x4614C6); "CRED462"
4614C0:  MOV             R0, R4; this
4614C2:  ADD             R1, PC; "CRED462"
4614C4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4614C8:  MOV             R1, R6; float
4614CA:  MOV             R2, R0; float
4614CC:  MOV             R3, R5; unsigned __int16 *
4614CE:  STR.W           R11, [SP,#0x48+var_44]; float
4614D2:  VSTR            S16, [SP,#0x48+var_48]
4614D6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4614DA:  LDR.W           R1, =(aCred463 - 0x4614E4); "CRED463"
4614DE:  MOV             R0, R4; this
4614E0:  ADD             R1, PC; "CRED463"
4614E2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4614E6:  MOV             R1, R6; float
4614E8:  MOV             R2, R0; float
4614EA:  MOV             R3, R5; unsigned __int16 *
4614EC:  STR.W           R11, [SP,#0x48+var_44]; float
4614F0:  VSTR            S16, [SP,#0x48+var_48]
4614F4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4614F8:  LDR.W           R1, =(aCred464 - 0x461502); "CRED464"
4614FC:  MOV             R0, R4; this
4614FE:  ADD             R1, PC; "CRED464"
461500:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461504:  MOV             R1, R6; float
461506:  MOV             R2, R0; float
461508:  MOV             R3, R5; unsigned __int16 *
46150A:  STR.W           R11, [SP,#0x48+var_44]; float
46150E:  VSTR            S16, [SP,#0x48+var_48]
461512:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461516:  LDR.W           R1, =(aCred465 - 0x461520); "CRED465"
46151A:  MOV             R0, R4; this
46151C:  ADD             R1, PC; "CRED465"
46151E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461522:  MOV             R1, R6; float
461524:  MOV             R2, R0; float
461526:  MOV             R3, R5; unsigned __int16 *
461528:  STR.W           R11, [SP,#0x48+var_44]; float
46152C:  VSTR            S16, [SP,#0x48+var_48]
461530:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461534:  LDR.W           R1, =(aCred466 - 0x46153E); "CRED466"
461538:  MOV             R0, R4; this
46153A:  ADD             R1, PC; "CRED466"
46153C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461540:  MOV             R1, R6; float
461542:  MOV             R2, R0; float
461544:  MOV             R3, R5; unsigned __int16 *
461546:  STR.W           R11, [SP,#0x48+var_44]; float
46154A:  VSTR            S16, [SP,#0x48+var_48]
46154E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461552:  LDR.W           R1, =(aCred467 - 0x46155C); "CRED467"
461556:  MOV             R0, R4; this
461558:  ADD             R1, PC; "CRED467"
46155A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46155E:  MOV             R1, R6; float
461560:  MOV             R2, R0; float
461562:  MOV             R3, R5; unsigned __int16 *
461564:  STR.W           R11, [SP,#0x48+var_44]; float
461568:  VSTR            S16, [SP,#0x48+var_48]
46156C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461570:  LDR.W           R1, =(aCred468 - 0x46157A); "CRED468"
461574:  MOV             R0, R4; this
461576:  ADD             R1, PC; "CRED468"
461578:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46157C:  MOV             R1, R6; float
46157E:  MOV             R2, R0; float
461580:  MOV             R3, R5; unsigned __int16 *
461582:  STR.W           R11, [SP,#0x48+var_44]; float
461586:  VSTR            S16, [SP,#0x48+var_48]
46158A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46158E:  LDR.W           R1, =(aCred469 - 0x461598); "CRED469"
461592:  MOV             R0, R4; this
461594:  ADD             R1, PC; "CRED469"
461596:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46159A:  MOV             R1, R6; float
46159C:  MOV             R2, R0; float
46159E:  MOV             R3, R5; unsigned __int16 *
4615A0:  STR.W           R11, [SP,#0x48+var_44]; float
4615A4:  VSTR            S16, [SP,#0x48+var_48]
4615A8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4615AC:  LDR.W           R1, =(aCred470 - 0x4615B6); "CRED470"
4615B0:  MOV             R0, R4; this
4615B2:  ADD             R1, PC; "CRED470"
4615B4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4615B8:  MOV             R1, R6; float
4615BA:  MOV             R2, R0; float
4615BC:  MOV             R3, R5; unsigned __int16 *
4615BE:  STR.W           R11, [SP,#0x48+var_44]; float
4615C2:  VSTR            S16, [SP,#0x48+var_48]
4615C6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4615CA:  LDR.W           R1, =(aCred471 - 0x4615D4); "CRED471"
4615CE:  MOV             R0, R4; this
4615D0:  ADD             R1, PC; "CRED471"
4615D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4615D6:  MOV             R1, R6; float
4615D8:  MOV             R2, R0; float
4615DA:  MOV             R3, R5; unsigned __int16 *
4615DC:  STR.W           R11, [SP,#0x48+var_44]; float
4615E0:  VSTR            S16, [SP,#0x48+var_48]
4615E4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4615E8:  LDR.W           R1, =(aCred472 - 0x4615F2); "CRED472"
4615EC:  MOV             R0, R4; this
4615EE:  ADD             R1, PC; "CRED472"
4615F0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4615F4:  MOV             R1, R6; float
4615F6:  MOV             R2, R0; float
4615F8:  MOV             R3, R5; unsigned __int16 *
4615FA:  STR.W           R11, [SP,#0x48+var_44]; float
4615FE:  VSTR            S16, [SP,#0x48+var_48]
461602:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461606:  LDR.W           R1, =(aCred473 - 0x461610); "CRED473"
46160A:  MOV             R0, R4; this
46160C:  ADD             R1, PC; "CRED473"
46160E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461612:  MOV             R1, R6; float
461614:  MOV             R2, R0; float
461616:  MOV             R3, R5; unsigned __int16 *
461618:  STR.W           R11, [SP,#0x48+var_44]; float
46161C:  VSTR            S16, [SP,#0x48+var_48]
461620:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461624:  LDR.W           R1, =(aCred474 - 0x46162E); "CRED474"
461628:  MOV             R0, R4; this
46162A:  ADD             R1, PC; "CRED474"
46162C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461630:  MOV             R1, R6; float
461632:  MOV             R2, R0; float
461634:  MOV             R3, R5; unsigned __int16 *
461636:  STR.W           R11, [SP,#0x48+var_44]; float
46163A:  VSTR            S16, [SP,#0x48+var_48]
46163E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461642:  LDR.W           R1, =(aCred475 - 0x46164C); "CRED475"
461646:  MOV             R0, R4; this
461648:  ADD             R1, PC; "CRED475"
46164A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46164E:  MOV             R1, R6; float
461650:  MOV             R2, R0; float
461652:  MOV             R3, R5; unsigned __int16 *
461654:  STR.W           R11, [SP,#0x48+var_44]; float
461658:  VSTR            S16, [SP,#0x48+var_48]
46165C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461660:  LDR.W           R1, =(aCred476 - 0x46166A); "CRED476"
461664:  MOV             R0, R4; this
461666:  ADD             R1, PC; "CRED476"
461668:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46166C:  MOV             R1, R6; float
46166E:  MOV             R2, R0; float
461670:  MOV             R3, R5; unsigned __int16 *
461672:  STR.W           R11, [SP,#0x48+var_44]; float
461676:  VSTR            S16, [SP,#0x48+var_48]
46167A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46167E:  LDR.W           R1, =(aCred477 - 0x461688); "CRED477"
461682:  MOV             R0, R4; this
461684:  ADD             R1, PC; "CRED477"
461686:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46168A:  MOV             R1, R6; float
46168C:  MOV             R2, R0; float
46168E:  MOV             R3, R5; unsigned __int16 *
461690:  STR.W           R11, [SP,#0x48+var_44]; float
461694:  VSTR            S16, [SP,#0x48+var_48]
461698:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46169C:  LDR.W           R1, =(aCred478 - 0x4616A6); "CRED478"
4616A0:  MOV             R0, R4; this
4616A2:  ADD             R1, PC; "CRED478"
4616A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4616A8:  MOV             R1, R6; float
4616AA:  MOV             R2, R0; float
4616AC:  MOV             R3, R5; unsigned __int16 *
4616AE:  STR.W           R11, [SP,#0x48+var_44]; float
4616B2:  VSTR            S16, [SP,#0x48+var_48]
4616B6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4616BA:  LDR.W           R1, =(aCred479 - 0x4616C4); "CRED479"
4616BE:  MOV             R0, R4; this
4616C0:  ADD             R1, PC; "CRED479"
4616C2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4616C6:  MOV             R1, R6; float
4616C8:  MOV             R2, R0; float
4616CA:  MOV             R3, R5; unsigned __int16 *
4616CC:  STR.W           R11, [SP,#0x48+var_44]; float
4616D0:  VSTR            S16, [SP,#0x48+var_48]
4616D4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4616D8:  LDR.W           R1, =(aCred480 - 0x4616E2); "CRED480"
4616DC:  MOV             R0, R4; this
4616DE:  ADD             R1, PC; "CRED480"
4616E0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4616E4:  MOV             R1, R6; float
4616E6:  MOV             R2, R0; float
4616E8:  MOV             R3, R5; unsigned __int16 *
4616EA:  STR.W           R11, [SP,#0x48+var_44]; float
4616EE:  VSTR            S16, [SP,#0x48+var_48]
4616F2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4616F6:  LDR.W           R1, =(aCred481 - 0x461700); "CRED481"
4616FA:  MOV             R0, R4; this
4616FC:  ADD             R1, PC; "CRED481"
4616FE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461702:  MOV             R1, R6; float
461704:  MOV             R2, R0; float
461706:  MOV             R3, R5; unsigned __int16 *
461708:  STR.W           R11, [SP,#0x48+var_44]; float
46170C:  VSTR            S16, [SP,#0x48+var_48]
461710:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461714:  LDR.W           R1, =(aCred482 - 0x46171E); "CRED482"
461718:  MOV             R0, R4; this
46171A:  ADD             R1, PC; "CRED482"
46171C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461720:  MOV             R1, R6; float
461722:  MOV             R2, R0; float
461724:  MOV             R3, R5; unsigned __int16 *
461726:  STR.W           R11, [SP,#0x48+var_44]; float
46172A:  VSTR            S16, [SP,#0x48+var_48]
46172E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461732:  LDR.W           R1, =(aCred483 - 0x46173C); "CRED483"
461736:  MOV             R0, R4; this
461738:  ADD             R1, PC; "CRED483"
46173A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46173E:  MOV             R1, R6; float
461740:  MOV             R2, R0; float
461742:  MOV             R3, R5; unsigned __int16 *
461744:  STR.W           R11, [SP,#0x48+var_44]; float
461748:  VSTR            S16, [SP,#0x48+var_48]
46174C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461750:  LDR.W           R1, =(aCred484 - 0x46175A); "CRED484"
461754:  MOV             R0, R4; this
461756:  ADD             R1, PC; "CRED484"
461758:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46175C:  MOV             R1, R6; float
46175E:  MOV             R2, R0; float
461760:  MOV             R3, R5; unsigned __int16 *
461762:  STR.W           R11, [SP,#0x48+var_44]; float
461766:  VSTR            S16, [SP,#0x48+var_48]
46176A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46176E:  LDR.W           R1, =(aCred485 - 0x461778); "CRED485"
461772:  MOV             R0, R4; this
461774:  ADD             R1, PC; "CRED485"
461776:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46177A:  MOV             R1, R6; float
46177C:  MOV             R2, R0; float
46177E:  MOV             R3, R5; unsigned __int16 *
461780:  STR.W           R11, [SP,#0x48+var_44]; float
461784:  VSTR            S16, [SP,#0x48+var_48]
461788:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46178C:  LDR.W           R1, =(aCred486 - 0x461796); "CRED486"
461790:  MOV             R0, R4; this
461792:  ADD             R1, PC; "CRED486"
461794:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461798:  MOV             R1, R6; float
46179A:  MOV             R2, R0; float
46179C:  MOV             R3, R5; unsigned __int16 *
46179E:  STR.W           R11, [SP,#0x48+var_44]; float
4617A2:  VSTR            S16, [SP,#0x48+var_48]
4617A6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4617AA:  LDR.W           R1, =(aCred487 - 0x4617B4); "CRED487"
4617AE:  MOV             R0, R4; this
4617B0:  ADD             R1, PC; "CRED487"
4617B2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4617B6:  MOV             R1, R6; float
4617B8:  MOV             R2, R0; float
4617BA:  MOV             R3, R5; unsigned __int16 *
4617BC:  STR.W           R11, [SP,#0x48+var_44]; float
4617C0:  VSTR            S16, [SP,#0x48+var_48]
4617C4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4617C8:  LDR.W           R1, =(aCred488 - 0x4617D2); "CRED488"
4617CC:  MOV             R0, R4; this
4617CE:  ADD             R1, PC; "CRED488"
4617D0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4617D4:  MOV             R1, R6; float
4617D6:  MOV             R2, R0; float
4617D8:  MOV             R3, R5; unsigned __int16 *
4617DA:  STR.W           R11, [SP,#0x48+var_44]; float
4617DE:  VSTR            S16, [SP,#0x48+var_48]
4617E2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4617E6:  LDR.W           R1, =(aCred489 - 0x4617F0); "CRED489"
4617EA:  MOV             R0, R4; this
4617EC:  ADD             R1, PC; "CRED489"
4617EE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4617F2:  MOV             R1, R6; float
4617F4:  MOV             R2, R0; float
4617F6:  MOV             R3, R5; unsigned __int16 *
4617F8:  STR.W           R11, [SP,#0x48+var_44]; float
4617FC:  VSTR            S16, [SP,#0x48+var_48]
461800:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461804:  LDR.W           R1, =(aCred490 - 0x46180E); "CRED490"
461808:  MOV             R0, R4; this
46180A:  ADD             R1, PC; "CRED490"
46180C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461810:  MOV             R1, R6; float
461812:  MOV             R2, R0; float
461814:  MOV             R3, R5; unsigned __int16 *
461816:  STR.W           R11, [SP,#0x48+var_44]; float
46181A:  VSTR            S16, [SP,#0x48+var_48]
46181E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461822:  LDR.W           R1, =(aCred491 - 0x46182C); "CRED491"
461826:  MOV             R0, R4; this
461828:  ADD             R1, PC; "CRED491"
46182A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46182E:  MOV             R1, R6; float
461830:  MOV             R2, R0; float
461832:  MOV             R3, R5; unsigned __int16 *
461834:  STR.W           R11, [SP,#0x48+var_44]; float
461838:  VSTR            S16, [SP,#0x48+var_48]
46183C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461840:  LDR.W           R1, =(aCred492 - 0x46184A); "CRED492"
461844:  MOV             R0, R4; this
461846:  ADD             R1, PC; "CRED492"
461848:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46184C:  MOV             R1, R6; float
46184E:  MOV             R2, R0; float
461850:  MOV             R3, R5; unsigned __int16 *
461852:  STR.W           R11, [SP,#0x48+var_44]; float
461856:  VSTR            S16, [SP,#0x48+var_48]
46185A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46185E:  LDR.W           R1, =(aCred493 - 0x461868); "CRED493"
461862:  MOV             R0, R4; this
461864:  ADD             R1, PC; "CRED493"
461866:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46186A:  MOV             R1, R6; float
46186C:  MOV             R2, R0; float
46186E:  MOV             R3, R5; unsigned __int16 *
461870:  STR.W           R11, [SP,#0x48+var_44]; float
461874:  VSTR            S16, [SP,#0x48+var_48]
461878:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46187C:  LDR.W           R1, =(aCred494 - 0x461886); "CRED494"
461880:  MOV             R0, R4; this
461882:  ADD             R1, PC; "CRED494"
461884:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461888:  MOV             R1, R6; float
46188A:  MOV             R2, R0; float
46188C:  MOV             R3, R5; unsigned __int16 *
46188E:  STR.W           R11, [SP,#0x48+var_44]; float
461892:  VSTR            S16, [SP,#0x48+var_48]
461896:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46189A:  LDR.W           R1, =(aCred495 - 0x4618A4); "CRED495"
46189E:  MOV             R0, R4; this
4618A0:  ADD             R1, PC; "CRED495"
4618A2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4618A6:  MOV             R1, R6; float
4618A8:  MOV             R2, R0; float
4618AA:  MOV             R3, R5; unsigned __int16 *
4618AC:  STR.W           R11, [SP,#0x48+var_44]; float
4618B0:  VSTR            S16, [SP,#0x48+var_48]
4618B4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4618B8:  LDR.W           R1, =(aCred496 - 0x4618C2); "CRED496"
4618BC:  MOV             R0, R4; this
4618BE:  ADD             R1, PC; "CRED496"
4618C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4618C4:  MOV             R1, R6; float
4618C6:  MOV             R2, R0; float
4618C8:  MOV             R3, R5; unsigned __int16 *
4618CA:  STR.W           R11, [SP,#0x48+var_44]; float
4618CE:  VSTR            S16, [SP,#0x48+var_48]
4618D2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4618D6:  LDR.W           R1, =(aCred497 - 0x4618E0); "CRED497"
4618DA:  MOV             R0, R4; this
4618DC:  ADD             R1, PC; "CRED497"
4618DE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4618E2:  MOV             R1, R6; float
4618E4:  MOV             R2, R0; float
4618E6:  MOV             R3, R5; unsigned __int16 *
4618E8:  STR.W           R11, [SP,#0x48+var_44]; float
4618EC:  VSTR            S16, [SP,#0x48+var_48]
4618F0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4618F4:  LDR.W           R1, =(aCred498 - 0x4618FE); "CRED498"
4618F8:  MOV             R0, R4; this
4618FA:  ADD             R1, PC; "CRED498"
4618FC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461900:  MOV             R1, R6; float
461902:  MOV             R2, R0; float
461904:  MOV             R3, R5; unsigned __int16 *
461906:  STR.W           R11, [SP,#0x48+var_44]; float
46190A:  VSTR            S16, [SP,#0x48+var_48]
46190E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461912:  VLDR            S0, [SP,#0x48+var_3C]
461916:  MOV             R0, R4; this
461918:  LDR.W           R1, =(aCred499 - 0x461924); "CRED499"
46191C:  VCVT.F32.U32    S0, S0
461920:  ADD             R1, PC; "CRED499"
461922:  VADD.F32        S0, S0, S18
461926:  VCVT.U32.F32    S0, S0
46192A:  VSTR            S0, [SP,#0x48+var_3C]
46192E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461932:  MOV             R1, R10; float
461934:  MOV             R2, R0; float
461936:  MOV             R3, R5; unsigned __int16 *
461938:  STR.W           R8, [SP,#0x48+var_44]; float
46193C:  VSTR            S16, [SP,#0x48+var_48]
461940:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461944:  LDR.W           R1, =(aCred500 - 0x46194E); "CRED500"
461948:  MOV             R0, R4; this
46194A:  ADD             R1, PC; "CRED500"
46194C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461950:  MOV             R1, R10; float
461952:  MOV             R2, R0; float
461954:  MOV             R3, R5; unsigned __int16 *
461956:  STR.W           R11, [SP,#0x48+var_44]; float
46195A:  VSTR            S16, [SP,#0x48+var_48]
46195E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461962:  LDR.W           R1, =(aCred501 - 0x46196C); "CRED501"
461966:  MOV             R0, R4; this
461968:  ADD             R1, PC; "CRED501"
46196A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46196E:  MOV             R1, R10; float
461970:  MOV             R2, R0; float
461972:  MOV             R3, R5; unsigned __int16 *
461974:  STR.W           R11, [SP,#0x48+var_44]; float
461978:  VSTR            S16, [SP,#0x48+var_48]
46197C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461980:  VLDR            S0, [SP,#0x48+var_3C]
461984:  MOV             R0, R4; this
461986:  LDR.W           R1, =(aCred502 - 0x461992); "CRED502"
46198A:  VCVT.F32.U32    S0, S0
46198E:  ADD             R1, PC; "CRED502"
461990:  VADD.F32        S0, S0, S18
461994:  VCVT.U32.F32    S0, S0
461998:  VSTR            S0, [SP,#0x48+var_3C]
46199C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4619A0:  MOV             R1, R10; float
4619A2:  MOV             R2, R0; float
4619A4:  MOV             R3, R5; unsigned __int16 *
4619A6:  STR.W           R8, [SP,#0x48+var_44]; float
4619AA:  VSTR            S16, [SP,#0x48+var_48]
4619AE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4619B2:  LDR.W           R1, =(aCred503 - 0x4619BC); "CRED503"
4619B6:  MOV             R0, R4; this
4619B8:  ADD             R1, PC; "CRED503"
4619BA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4619BE:  MOV             R1, R10; float
4619C0:  MOV             R2, R0; float
4619C2:  MOV             R3, R5; unsigned __int16 *
4619C4:  STR.W           R11, [SP,#0x48+var_44]; float
4619C8:  VSTR            S16, [SP,#0x48+var_48]
4619CC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4619D0:  LDR.W           R1, =(aCred504 - 0x4619DA); "CRED504"
4619D4:  MOV             R0, R4; this
4619D6:  ADD             R1, PC; "CRED504"
4619D8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4619DC:  MOV             R1, R10; float
4619DE:  MOV             R2, R0; float
4619E0:  MOV             R3, R5; unsigned __int16 *
4619E2:  STR.W           R11, [SP,#0x48+var_44]; float
4619E6:  VSTR            S16, [SP,#0x48+var_48]
4619EA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4619EE:  VLDR            S0, [SP,#0x48+var_3C]
4619F2:  MOV             R0, R4; this
4619F4:  LDR.W           R1, =(aCred505 - 0x461A00); "CRED505"
4619F8:  VCVT.F32.U32    S0, S0
4619FC:  ADD             R1, PC; "CRED505"
4619FE:  VADD.F32        S0, S0, S18
461A02:  VCVT.U32.F32    S0, S0
461A06:  VSTR            S0, [SP,#0x48+var_3C]
461A0A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461A0E:  MOV             R1, R10; float
461A10:  MOV             R2, R0; float
461A12:  MOV             R3, R5; unsigned __int16 *
461A14:  STR.W           R8, [SP,#0x48+var_44]; float
461A18:  VSTR            S16, [SP,#0x48+var_48]
461A1C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461A20:  LDR.W           R1, =(aCred506 - 0x461A2A); "CRED506"
461A24:  MOV             R0, R4; this
461A26:  ADD             R1, PC; "CRED506"
461A28:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461A2C:  MOV             R1, R10; float
461A2E:  MOV             R2, R0; float
461A30:  MOV             R3, R5; unsigned __int16 *
461A32:  STR.W           R11, [SP,#0x48+var_44]; float
461A36:  VSTR            S16, [SP,#0x48+var_48]
461A3A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461A3E:  LDR.W           R1, =(aCred507 - 0x461A48); "CRED507"
461A42:  MOV             R0, R4; this
461A44:  ADD             R1, PC; "CRED507"
461A46:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461A4A:  MOV             R1, R10; float
461A4C:  MOV             R2, R0; float
461A4E:  MOV             R3, R5; unsigned __int16 *
461A50:  STR.W           R11, [SP,#0x48+var_44]; float
461A54:  VSTR            S16, [SP,#0x48+var_48]
461A58:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461A5C:  LDR.W           R1, =(aCred508 - 0x461A66); "CRED508"
461A60:  MOV             R0, R4; this
461A62:  ADD             R1, PC; "CRED508"
461A64:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461A68:  MOV             R1, R10; float
461A6A:  MOV             R2, R0; float
461A6C:  MOV             R3, R5; unsigned __int16 *
461A6E:  STR.W           R11, [SP,#0x48+var_44]; float
461A72:  VSTR            S16, [SP,#0x48+var_48]
461A76:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461A7A:  LDR.W           R1, =(aCred509 - 0x461A84); "CRED509"
461A7E:  MOV             R0, R4; this
461A80:  ADD             R1, PC; "CRED509"
461A82:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461A86:  MOV             R1, R10; float
461A88:  MOV             R2, R0; float
461A8A:  MOV             R3, R5; unsigned __int16 *
461A8C:  STR.W           R11, [SP,#0x48+var_44]; float
461A90:  VSTR            S16, [SP,#0x48+var_48]
461A94:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461A98:  LDR.W           R1, =(aCred510 - 0x461AA2); "CRED510"
461A9C:  MOV             R0, R4; this
461A9E:  ADD             R1, PC; "CRED510"
461AA0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461AA4:  MOV             R1, R10; float
461AA6:  MOV             R2, R0; float
461AA8:  MOV             R3, R5; unsigned __int16 *
461AAA:  STR.W           R11, [SP,#0x48+var_44]; float
461AAE:  VSTR            S16, [SP,#0x48+var_48]
461AB2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461AB6:  LDR.W           R1, =(aCred511 - 0x461AC0); "CRED511"
461ABA:  MOV             R0, R4; this
461ABC:  ADD             R1, PC; "CRED511"
461ABE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461AC2:  MOV             R1, R10; float
461AC4:  MOV             R2, R0; float
461AC6:  MOV             R3, R5; unsigned __int16 *
461AC8:  STR.W           R11, [SP,#0x48+var_44]; float
461ACC:  VSTR            S16, [SP,#0x48+var_48]
461AD0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461AD4:  LDR.W           R1, =(aCred512 - 0x461ADE); "CRED512"
461AD8:  MOV             R0, R4; this
461ADA:  ADD             R1, PC; "CRED512"
461ADC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461AE0:  MOV             R1, R10; float
461AE2:  MOV             R2, R0; float
461AE4:  MOV             R3, R5; unsigned __int16 *
461AE6:  STR.W           R11, [SP,#0x48+var_44]; float
461AEA:  VSTR            S16, [SP,#0x48+var_48]
461AEE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461AF2:  LDR.W           R1, =(aCred515 - 0x461AFC); "CRED515"
461AF6:  MOV             R0, R4; this
461AF8:  ADD             R1, PC; "CRED515"
461AFA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461AFE:  MOV             R1, R10; float
461B00:  MOV             R2, R0; float
461B02:  MOV             R3, R5; unsigned __int16 *
461B04:  STR.W           R11, [SP,#0x48+var_44]; float
461B08:  VSTR            S16, [SP,#0x48+var_48]
461B0C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461B10:  LDR.W           R1, =(aCred516 - 0x461B1A); "CRED516"
461B14:  MOV             R0, R4; this
461B16:  ADD             R1, PC; "CRED516"
461B18:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461B1C:  MOV             R1, R10; float
461B1E:  MOV             R2, R0; float
461B20:  MOV             R3, R5; unsigned __int16 *
461B22:  STR.W           R11, [SP,#0x48+var_44]; float
461B26:  VSTR            S16, [SP,#0x48+var_48]
461B2A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461B2E:  LDR.W           R1, =(aCred517 - 0x461B38); "CRED517"
461B32:  MOV             R0, R4; this
461B34:  ADD             R1, PC; "CRED517"
461B36:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461B3A:  MOV             R1, R10; float
461B3C:  MOV             R2, R0; float
461B3E:  MOV             R3, R5; unsigned __int16 *
461B40:  STR.W           R11, [SP,#0x48+var_44]; float
461B44:  VSTR            S16, [SP,#0x48+var_48]
461B48:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461B4C:  LDR.W           R1, =(aCred518 - 0x461B56); "CRED518"
461B50:  MOV             R0, R4; this
461B52:  ADD             R1, PC; "CRED518"
461B54:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461B58:  MOV             R1, R10; float
461B5A:  MOV             R2, R0; float
461B5C:  MOV             R3, R5; unsigned __int16 *
461B5E:  STR.W           R11, [SP,#0x48+var_44]; float
461B62:  VSTR            S16, [SP,#0x48+var_48]
461B66:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461B6A:  LDR.W           R1, =(aCred519 - 0x461B74); "CRED519"
461B6E:  MOV             R0, R4; this
461B70:  ADD             R1, PC; "CRED519"
461B72:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461B76:  MOV             R1, R10; float
461B78:  MOV             R2, R0; float
461B7A:  MOV             R3, R5; unsigned __int16 *
461B7C:  STR.W           R11, [SP,#0x48+var_44]; float
461B80:  VSTR            S16, [SP,#0x48+var_48]
461B84:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461B88:  LDR.W           R1, =(aCred520 - 0x461B92); "CRED520"
461B8C:  MOV             R0, R4; this
461B8E:  ADD             R1, PC; "CRED520"
461B90:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461B94:  MOV             R1, R10; float
461B96:  MOV             R2, R0; float
461B98:  MOV             R3, R5; unsigned __int16 *
461B9A:  STR.W           R11, [SP,#0x48+var_44]; float
461B9E:  VSTR            S16, [SP,#0x48+var_48]
461BA2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461BA6:  LDR.W           R1, =(aCred521 - 0x461BB0); "CRED521"
461BAA:  MOV             R0, R4; this
461BAC:  ADD             R1, PC; "CRED521"
461BAE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461BB2:  MOV             R1, R10; float
461BB4:  MOV             R2, R0; float
461BB6:  MOV             R3, R5; unsigned __int16 *
461BB8:  STR.W           R11, [SP,#0x48+var_44]; float
461BBC:  VSTR            S16, [SP,#0x48+var_48]
461BC0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461BC4:  LDR.W           R1, =(aCred522 - 0x461BCE); "CRED522"
461BC8:  MOV             R0, R4; this
461BCA:  ADD             R1, PC; "CRED522"
461BCC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461BD0:  MOV             R1, R10; float
461BD2:  MOV             R2, R0; float
461BD4:  MOV             R3, R5; unsigned __int16 *
461BD6:  STR.W           R11, [SP,#0x48+var_44]; float
461BDA:  VSTR            S16, [SP,#0x48+var_48]
461BDE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461BE2:  LDR.W           R1, =(aCred523 - 0x461BEC); "CRED523"
461BE6:  MOV             R0, R4; this
461BE8:  ADD             R1, PC; "CRED523"
461BEA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461BEE:  MOV             R1, R10; float
461BF0:  MOV             R2, R0; float
461BF2:  MOV             R3, R5; unsigned __int16 *
461BF4:  STR.W           R11, [SP,#0x48+var_44]; float
461BF8:  VSTR            S16, [SP,#0x48+var_48]
461BFC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461C00:  LDR.W           R1, =(aCred524 - 0x461C0A); "CRED524"
461C04:  MOV             R0, R4; this
461C06:  ADD             R1, PC; "CRED524"
461C08:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461C0C:  MOV             R1, R10; float
461C0E:  MOV             R2, R0; float
461C10:  MOV             R3, R5; unsigned __int16 *
461C12:  STR.W           R11, [SP,#0x48+var_44]; float
461C16:  VSTR            S16, [SP,#0x48+var_48]
461C1A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461C1E:  LDR.W           R1, =(aCred525 - 0x461C28); "CRED525"
461C22:  MOV             R0, R4; this
461C24:  ADD             R1, PC; "CRED525"
461C26:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461C2A:  MOV             R1, R10; float
461C2C:  MOV             R2, R0; float
461C2E:  MOV             R3, R5; unsigned __int16 *
461C30:  STR.W           R11, [SP,#0x48+var_44]; float
461C34:  VSTR            S16, [SP,#0x48+var_48]
461C38:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461C3C:  LDR.W           R1, =(aCred526 - 0x461C46); "CRED526"
461C40:  MOV             R0, R4; this
461C42:  ADD             R1, PC; "CRED526"
461C44:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461C48:  MOV             R1, R10; float
461C4A:  MOV             R2, R0; float
461C4C:  MOV             R3, R5; unsigned __int16 *
461C4E:  STR.W           R11, [SP,#0x48+var_44]; float
461C52:  VSTR            S16, [SP,#0x48+var_48]
461C56:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461C5A:  LDR.W           R1, =(aCred527 - 0x461C64); "CRED527"
461C5E:  MOV             R0, R4; this
461C60:  ADD             R1, PC; "CRED527"
461C62:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461C66:  MOV             R1, R10; float
461C68:  MOV             R2, R0; float
461C6A:  MOV             R3, R5; unsigned __int16 *
461C6C:  STR.W           R11, [SP,#0x48+var_44]; float
461C70:  VSTR            S16, [SP,#0x48+var_48]
461C74:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461C78:  LDR.W           R1, =(aCred529 - 0x461C82); "CRED529"
461C7C:  MOV             R0, R4; this
461C7E:  ADD             R1, PC; "CRED529"
461C80:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461C84:  MOV             R1, R10; float
461C86:  MOV             R2, R0; float
461C88:  MOV             R3, R5; unsigned __int16 *
461C8A:  STR.W           R11, [SP,#0x48+var_44]; float
461C8E:  VSTR            S16, [SP,#0x48+var_48]
461C92:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461C96:  LDR.W           R1, =(aCred530 - 0x461CA0); "CRED530"
461C9A:  MOV             R0, R4; this
461C9C:  ADD             R1, PC; "CRED530"
461C9E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461CA2:  MOV             R1, R10; float
461CA4:  MOV             R2, R0; float
461CA6:  MOV             R3, R5; unsigned __int16 *
461CA8:  STR.W           R11, [SP,#0x48+var_44]; float
461CAC:  VSTR            S16, [SP,#0x48+var_48]
461CB0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461CB4:  LDR.W           R1, =(aCred531 - 0x461CBE); "CRED531"
461CB8:  MOV             R0, R4; this
461CBA:  ADD             R1, PC; "CRED531"
461CBC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461CC0:  MOV             R1, R10; float
461CC2:  MOV             R2, R0; float
461CC4:  MOV             R3, R5; unsigned __int16 *
461CC6:  STR.W           R11, [SP,#0x48+var_44]; float
461CCA:  VSTR            S16, [SP,#0x48+var_48]
461CCE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461CD2:  LDR.W           R1, =(aCred532 - 0x461CDC); "CRED532"
461CD6:  MOV             R0, R4; this
461CD8:  ADD             R1, PC; "CRED532"
461CDA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461CDE:  MOV             R1, R10; float
461CE0:  MOV             R2, R0; float
461CE2:  MOV             R3, R5; unsigned __int16 *
461CE4:  STR.W           R11, [SP,#0x48+var_44]; float
461CE8:  VSTR            S16, [SP,#0x48+var_48]
461CEC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461CF0:  LDR.W           R1, =(aCred533 - 0x461CFA); "CRED533"
461CF4:  MOV             R0, R4; this
461CF6:  ADD             R1, PC; "CRED533"
461CF8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461CFC:  MOV             R1, R10; float
461CFE:  MOV             R2, R0; float
461D00:  MOV             R3, R5; unsigned __int16 *
461D02:  STR.W           R11, [SP,#0x48+var_44]; float
461D06:  VSTR            S16, [SP,#0x48+var_48]
461D0A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461D0E:  LDR.W           R1, =(aCred534 - 0x461D18); "CRED534"
461D12:  MOV             R0, R4; this
461D14:  ADD             R1, PC; "CRED534"
461D16:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461D1A:  MOV             R1, R10; float
461D1C:  MOV             R2, R0; float
461D1E:  MOV             R3, R5; unsigned __int16 *
461D20:  STR.W           R11, [SP,#0x48+var_44]; float
461D24:  VSTR            S16, [SP,#0x48+var_48]
461D28:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461D2C:  LDR.W           R1, =(aCred535 - 0x461D36); "CRED535"
461D30:  MOV             R0, R4; this
461D32:  ADD             R1, PC; "CRED535"
461D34:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461D38:  MOV             R1, R10; float
461D3A:  MOV             R2, R0; float
461D3C:  MOV             R3, R5; unsigned __int16 *
461D3E:  STR.W           R11, [SP,#0x48+var_44]; float
461D42:  VSTR            S16, [SP,#0x48+var_48]
461D46:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461D4A:  LDR.W           R1, =(aCred536 - 0x461D54); "CRED536"
461D4E:  MOV             R0, R4; this
461D50:  ADD             R1, PC; "CRED536"
461D52:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461D56:  MOV             R1, R10; float
461D58:  MOV             R2, R0; float
461D5A:  MOV             R3, R5; unsigned __int16 *
461D5C:  STR.W           R11, [SP,#0x48+var_44]; float
461D60:  VSTR            S16, [SP,#0x48+var_48]
461D64:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461D68:  LDR.W           R1, =(aCred537 - 0x461D72); "CRED537"
461D6C:  MOV             R0, R4; this
461D6E:  ADD             R1, PC; "CRED537"
461D70:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461D74:  MOV             R1, R10; float
461D76:  MOV             R2, R0; float
461D78:  MOV             R3, R5; unsigned __int16 *
461D7A:  STR.W           R11, [SP,#0x48+var_44]; float
461D7E:  VSTR            S16, [SP,#0x48+var_48]
461D82:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461D86:  LDR.W           R1, =(aCred538 - 0x461D90); "CRED538"
461D8A:  MOV             R0, R4; this
461D8C:  ADD             R1, PC; "CRED538"
461D8E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461D92:  MOV             R1, R10; float
461D94:  MOV             R2, R0; float
461D96:  MOV             R3, R5; unsigned __int16 *
461D98:  STR.W           R11, [SP,#0x48+var_44]; float
461D9C:  VSTR            S16, [SP,#0x48+var_48]
461DA0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461DA4:  LDR.W           R1, =(aCred539 - 0x461DAE); "CRED539"
461DA8:  MOV             R0, R4; this
461DAA:  ADD             R1, PC; "CRED539"
461DAC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461DB0:  MOV             R1, R10; float
461DB2:  MOV             R2, R0; float
461DB4:  MOV             R3, R5; unsigned __int16 *
461DB6:  STR.W           R11, [SP,#0x48+var_44]; float
461DBA:  VSTR            S16, [SP,#0x48+var_48]
461DBE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461DC2:  LDR.W           R1, =(aCred540 - 0x461DCC); "CRED540"
461DC6:  MOV             R0, R4; this
461DC8:  ADD             R1, PC; "CRED540"
461DCA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461DCE:  MOV             R1, R10; float
461DD0:  MOV             R2, R0; float
461DD2:  MOV             R3, R5; unsigned __int16 *
461DD4:  STR.W           R11, [SP,#0x48+var_44]; float
461DD8:  VSTR            S16, [SP,#0x48+var_48]
461DDC:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461DE0:  LDR.W           R1, =(aCred541 - 0x461DEA); "CRED541"
461DE4:  MOV             R0, R4; this
461DE6:  ADD             R1, PC; "CRED541"
461DE8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461DEC:  MOV             R1, R10; float
461DEE:  MOV             R2, R0; float
461DF0:  MOV             R3, R5; unsigned __int16 *
461DF2:  STR.W           R11, [SP,#0x48+var_44]; float
461DF6:  VSTR            S16, [SP,#0x48+var_48]
461DFA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461DFE:  LDR.W           R1, =(aCrd541a - 0x461E08); "CRD541A"
461E02:  MOV             R0, R4; this
461E04:  ADD             R1, PC; "CRD541A"
461E06:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461E0A:  MOV             R1, R10; float
461E0C:  MOV             R2, R0; float
461E0E:  MOV             R3, R5; unsigned __int16 *
461E10:  STR.W           R11, [SP,#0x48+var_44]; float
461E14:  VSTR            S16, [SP,#0x48+var_48]
461E18:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461E1C:  LDR.W           R1, =(aCrd541b - 0x461E26); "CRD541B"
461E20:  MOV             R0, R4; this
461E22:  ADD             R1, PC; "CRD541B"
461E24:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461E28:  MOV             R1, R10; float
461E2A:  MOV             R2, R0; float
461E2C:  MOV             R3, R5; unsigned __int16 *
461E2E:  STR.W           R11, [SP,#0x48+var_44]; float
461E32:  VSTR            S16, [SP,#0x48+var_48]
461E36:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461E3A:  LDR.W           R1, =(aCrd541c - 0x461E44); "CRD541C"
461E3E:  MOV             R0, R4; this
461E40:  ADD             R1, PC; "CRD541C"
461E42:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461E46:  MOV             R1, R10; float
461E48:  MOV             R2, R0; float
461E4A:  MOV             R3, R5; unsigned __int16 *
461E4C:  STR.W           R11, [SP,#0x48+var_44]; float
461E50:  VSTR            S16, [SP,#0x48+var_48]
461E54:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461E58:  VLDR            S0, [SP,#0x48+var_3C]
461E5C:  MOV             R0, R4; this
461E5E:  LDR.W           R1, =(aCred542 - 0x461E6A); "CRED542"
461E62:  VCVT.F32.U32    S0, S0
461E66:  ADD             R1, PC; "CRED542"
461E68:  VADD.F32        S0, S0, S18
461E6C:  VCVT.U32.F32    S0, S0
461E70:  VSTR            S0, [SP,#0x48+var_3C]
461E74:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461E78:  MOV             R1, R10; float
461E7A:  MOV             R2, R0; float
461E7C:  MOV             R3, R5; unsigned __int16 *
461E7E:  STR.W           R8, [SP,#0x48+var_44]; float
461E82:  VSTR            S16, [SP,#0x48+var_48]
461E86:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461E8A:  LDR.W           R1, =(aCred543 - 0x461E94); "CRED543"
461E8E:  MOV             R0, R4; this
461E90:  ADD             R1, PC; "CRED543"
461E92:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461E96:  MOV             R1, R10; float
461E98:  MOV             R2, R0; float
461E9A:  MOV             R3, R5; unsigned __int16 *
461E9C:  STR.W           R11, [SP,#0x48+var_44]; float
461EA0:  VSTR            S16, [SP,#0x48+var_48]
461EA4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461EA8:  LDR.W           R1, =(aCred544 - 0x461EB2); "CRED544"
461EAC:  MOV             R0, R4; this
461EAE:  ADD             R1, PC; "CRED544"
461EB0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461EB4:  MOV             R1, R10; float
461EB6:  MOV             R2, R0; float
461EB8:  MOV             R3, R5; unsigned __int16 *
461EBA:  STR.W           R11, [SP,#0x48+var_44]; float
461EBE:  VSTR            S16, [SP,#0x48+var_48]
461EC2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461EC6:  LDR.W           R1, =(aCred545 - 0x461ED0); "CRED545"
461ECA:  MOV             R0, R4; this
461ECC:  ADD             R1, PC; "CRED545"
461ECE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461ED2:  MOV             R1, R10; float
461ED4:  MOV             R2, R0; float
461ED6:  MOV             R3, R5; unsigned __int16 *
461ED8:  STR.W           R11, [SP,#0x48+var_44]; float
461EDC:  VSTR            S16, [SP,#0x48+var_48]
461EE0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461EE4:  VLDR            S0, [SP,#0x48+var_3C]
461EE8:  MOV             R0, R4; this
461EEA:  LDR.W           R1, =(aCrewd0 - 0x461EF6); "CREWD0"
461EEE:  VCVT.F32.U32    S0, S0
461EF2:  ADD             R1, PC; "CREWD0"
461EF4:  VADD.F32        S0, S0, S18
461EF8:  VCVT.U32.F32    S0, S0
461EFC:  VCVT.F32.U32    S0, S0
461F00:  VADD.F32        S0, S0, S18
461F04:  VCVT.U32.F32    S0, S0
461F08:  VSTR            S0, [SP,#0x48+var_3C]
461F0C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461F10:  MOV             R1, R10; float
461F12:  MOV             R2, R0; float
461F14:  MOV             R3, R5; unsigned __int16 *
461F16:  STR.W           R8, [SP,#0x48+var_44]; float
461F1A:  VSTR            S16, [SP,#0x48+var_48]
461F1E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461F22:  VLDR            S0, [SP,#0x48+var_3C]
461F26:  MOV             R0, R4; this
461F28:  LDR.W           R1, =(aCrewd1 - 0x461F34); "CREWD1"
461F2C:  VCVT.F32.U32    S0, S0
461F30:  ADD             R1, PC; "CREWD1"
461F32:  VADD.F32        S0, S0, S18
461F36:  VCVT.U32.F32    S0, S0
461F3A:  VSTR            S0, [SP,#0x48+var_3C]
461F3E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461F42:  MOV             R1, R10; float
461F44:  MOV             R2, R0; float
461F46:  MOV             R3, R5; unsigned __int16 *
461F48:  STR.W           R8, [SP,#0x48+var_44]; float
461F4C:  VSTR            S16, [SP,#0x48+var_48]
461F50:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461F54:  LDR.W           R1, =(aCrewd2 - 0x461F5E); "CREWD2"
461F58:  MOV             R0, R4; this
461F5A:  ADD             R1, PC; "CREWD2"
461F5C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461F60:  MOV             R1, R10; float
461F62:  MOV             R2, R0; float
461F64:  MOV             R3, R5; unsigned __int16 *
461F66:  STR.W           R11, [SP,#0x48+var_44]; float
461F6A:  VSTR            S16, [SP,#0x48+var_48]
461F6E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461F72:  VLDR            S0, [SP,#0x48+var_3C]
461F76:  MOV             R0, R4; this
461F78:  LDR.W           R1, =(aCrewd3 - 0x461F84); "CREWD3"
461F7C:  VCVT.F32.U32    S0, S0
461F80:  ADD             R1, PC; "CREWD3"
461F82:  VADD.F32        S0, S0, S18
461F86:  VCVT.U32.F32    S0, S0
461F8A:  VSTR            S0, [SP,#0x48+var_3C]
461F8E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461F92:  MOV             R1, R10; float
461F94:  MOV             R2, R0; float
461F96:  MOV             R3, R5; unsigned __int16 *
461F98:  STR.W           R8, [SP,#0x48+var_44]; float
461F9C:  VSTR            S16, [SP,#0x48+var_48]
461FA0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461FA4:  LDR.W           R1, =(aCrewd4 - 0x461FAE); "CREWD4"
461FA8:  MOV             R0, R4; this
461FAA:  ADD             R1, PC; "CREWD4"
461FAC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461FB0:  MOV             R1, R10; float
461FB2:  MOV             R2, R0; float
461FB4:  MOV             R3, R5; unsigned __int16 *
461FB6:  STR.W           R11, [SP,#0x48+var_44]; float
461FBA:  VSTR            S16, [SP,#0x48+var_48]
461FBE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461FC2:  VLDR            S0, [SP,#0x48+var_3C]
461FC6:  MOV             R0, R4; this
461FC8:  LDR.W           R1, =(aCred088 - 0x461FD4); "CRED088"
461FCC:  VCVT.F32.U32    S0, S0
461FD0:  ADD             R1, PC; "CRED088"
461FD2:  VADD.F32        S0, S0, S18
461FD6:  VCVT.U32.F32    S0, S0
461FDA:  VSTR            S0, [SP,#0x48+var_3C]
461FDE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
461FE2:  MOV             R1, R10; float
461FE4:  MOV             R2, R0; float
461FE6:  MOV             R3, R5; unsigned __int16 *
461FE8:  STR.W           R8, [SP,#0x48+var_44]; float
461FEC:  VSTR            S16, [SP,#0x48+var_48]
461FF0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
461FF4:  LDR.W           R1, =(aCrewd5 - 0x461FFE); "CREWD5"
461FF8:  MOV             R0, R4; this
461FFA:  ADD             R1, PC; "CREWD5"
461FFC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462000:  MOV             R1, R10; float
462002:  MOV             R2, R0; float
462004:  MOV             R3, R5; unsigned __int16 *
462006:  STR.W           R11, [SP,#0x48+var_44]; float
46200A:  VSTR            S16, [SP,#0x48+var_48]
46200E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462012:  LDR.W           R1, =(aCrewd6 - 0x46201C); "CREWD6"
462016:  MOV             R0, R4; this
462018:  ADD             R1, PC; "CREWD6"
46201A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46201E:  MOV             R1, R10; float
462020:  MOV             R2, R0; float
462022:  MOV             R3, R5; unsigned __int16 *
462024:  STR.W           R11, [SP,#0x48+var_44]; float
462028:  VSTR            S16, [SP,#0x48+var_48]
46202C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462030:  LDR.W           R1, =(aCrewd13 - 0x46203A); "CREWD13"
462034:  MOV             R0, R4; this
462036:  ADD             R1, PC; "CREWD13"
462038:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46203C:  MOV             R1, R10; float
46203E:  MOV             R2, R0; float
462040:  MOV             R3, R5; unsigned __int16 *
462042:  STR.W           R11, [SP,#0x48+var_44]; float
462046:  VSTR            S16, [SP,#0x48+var_48]
46204A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46204E:  VLDR            S0, [SP,#0x48+var_3C]
462052:  MOV             R0, R4; this
462054:  LDR.W           R1, =(aCrewd7 - 0x462060); "CREWD7"
462058:  VCVT.F32.U32    S0, S0
46205C:  ADD             R1, PC; "CREWD7"
46205E:  VADD.F32        S0, S0, S18
462062:  VCVT.U32.F32    S0, S0
462066:  VSTR            S0, [SP,#0x48+var_3C]
46206A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46206E:  MOV             R1, R10; float
462070:  MOV             R2, R0; float
462072:  MOV             R3, R5; unsigned __int16 *
462074:  STR.W           R8, [SP,#0x48+var_44]; float
462078:  VSTR            S16, [SP,#0x48+var_48]
46207C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462080:  LDR.W           R1, =(aCrewd8 - 0x46208A); "CREWD8"
462084:  MOV             R0, R4; this
462086:  ADD             R1, PC; "CREWD8"
462088:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46208C:  MOV             R1, R10; float
46208E:  MOV             R2, R0; float
462090:  MOV             R3, R5; unsigned __int16 *
462092:  STR.W           R11, [SP,#0x48+var_44]; float
462096:  VSTR            S16, [SP,#0x48+var_48]
46209A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46209E:  VLDR            S0, [SP,#0x48+var_3C]
4620A2:  MOV             R0, R4; this
4620A4:  MOV             R1, R9; CKeyGen *
4620A6:  VCVT.F32.U32    S0, S0
4620AA:  VADD.F32        S0, S0, S18
4620AE:  VCVT.U32.F32    S0, S0
4620B2:  VSTR            S0, [SP,#0x48+var_3C]
4620B6:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4620BA:  MOV             R1, R10; float
4620BC:  MOV             R2, R0; float
4620BE:  MOV             R3, R5; unsigned __int16 *
4620C0:  STR.W           R8, [SP,#0x48+var_44]; float
4620C4:  VSTR            S16, [SP,#0x48+var_48]
4620C8:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4620CC:  LDR.W           R1, =(aCrewd9 - 0x4620D6); "CREWD9"
4620D0:  MOV             R0, R4; this
4620D2:  ADD             R1, PC; "CREWD9"
4620D4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4620D8:  MOV             R1, R10; float
4620DA:  MOV             R2, R0; float
4620DC:  MOV             R3, R5; unsigned __int16 *
4620DE:  STR.W           R11, [SP,#0x48+var_44]; float
4620E2:  VSTR            S16, [SP,#0x48+var_48]
4620E6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4620EA:  VLDR            S0, [SP,#0x48+var_3C]
4620EE:  MOV             R0, R4; this
4620F0:  LDR.W           R6, =(aCred609 - 0x4620FC); "CRED609"
4620F4:  VCVT.F32.U32    S0, S0
4620F8:  ADD             R6, PC; "CRED609"
4620FA:  MOV             R1, R6; CKeyGen *
4620FC:  VADD.F32        S0, S0, S18
462100:  VCVT.U32.F32    S0, S0
462104:  VSTR            S0, [SP,#0x48+var_3C]
462108:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46210C:  MOV             R1, R10; float
46210E:  MOV             R2, R0; float
462110:  MOV             R3, R5; unsigned __int16 *
462112:  STR.W           R8, [SP,#0x48+var_44]; float
462116:  VSTR            S16, [SP,#0x48+var_48]
46211A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46211E:  LDR.W           R1, =(aCrewd10 - 0x462128); "CREWD10"
462122:  MOV             R0, R4; this
462124:  ADD             R1, PC; "CREWD10"
462126:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46212A:  MOV             R1, R10; float
46212C:  MOV             R2, R0; float
46212E:  MOV             R3, R5; unsigned __int16 *
462130:  STR.W           R11, [SP,#0x48+var_44]; float
462134:  VSTR            S16, [SP,#0x48+var_48]
462138:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46213C:  LDR.W           R1, =(aCrewd11 - 0x462146); "CREWD11"
462140:  MOV             R0, R4; this
462142:  ADD             R1, PC; "CREWD11"
462144:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462148:  MOV             R1, R10; float
46214A:  MOV             R2, R0; float
46214C:  MOV             R3, R5; unsigned __int16 *
46214E:  STR.W           R11, [SP,#0x48+var_44]; float
462152:  VSTR            S16, [SP,#0x48+var_48]
462156:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46215A:  LDR.W           R1, =(aCrewd12 - 0x462164); "CREWD12"
46215E:  MOV             R0, R4; this
462160:  ADD             R1, PC; "CREWD12"
462162:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462166:  MOV             R1, R10; float
462168:  MOV             R2, R0; float
46216A:  MOV             R3, R5; unsigned __int16 *
46216C:  STR.W           R11, [SP,#0x48+var_44]; float
462170:  VSTR            S16, [SP,#0x48+var_48]
462174:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462178:  VLDR            S0, [SP,#0x48+var_3C]
46217C:  MOV             R0, R4; this
46217E:  LDR.W           R1, =(aCred600 - 0x46218A); "CRED600"
462182:  VCVT.F32.U32    S0, S0
462186:  ADD             R1, PC; "CRED600"
462188:  VADD.F32        S0, S0, S18
46218C:  VCVT.U32.F32    S0, S0
462190:  VCVT.F32.U32    S0, S0
462194:  VADD.F32        S0, S0, S18
462198:  VCVT.U32.F32    S0, S0
46219C:  VSTR            S0, [SP,#0x48+var_3C]
4621A0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4621A4:  MOV             R1, R10; float
4621A6:  MOV             R2, R0; float
4621A8:  MOV             R3, R5; unsigned __int16 *
4621AA:  STR.W           R8, [SP,#0x48+var_44]; float
4621AE:  VSTR            S16, [SP,#0x48+var_48]
4621B2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4621B6:  VLDR            S0, [SP,#0x48+var_3C]
4621BA:  MOV             R0, R4; this
4621BC:  LDR.W           R1, =(aCred601 - 0x4621C8); "CRED601"
4621C0:  VCVT.F32.U32    S0, S0
4621C4:  ADD             R1, PC; "CRED601"
4621C6:  VADD.F32        S0, S0, S18
4621CA:  VCVT.U32.F32    S0, S0
4621CE:  VSTR            S0, [SP,#0x48+var_3C]
4621D2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4621D6:  MOV             R1, R10; float
4621D8:  MOV             R2, R0; float
4621DA:  MOV             R3, R5; unsigned __int16 *
4621DC:  STR.W           R8, [SP,#0x48+var_44]; float
4621E0:  VSTR            S16, [SP,#0x48+var_48]
4621E4:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4621E8:  LDR.W           R1, =(aCred602 - 0x4621F2); "CRED602"
4621EC:  MOV             R0, R4; this
4621EE:  ADD             R1, PC; "CRED602"
4621F0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4621F4:  MOV             R1, R10; float
4621F6:  MOV             R2, R0; float
4621F8:  MOV             R3, R5; unsigned __int16 *
4621FA:  STR.W           R11, [SP,#0x48+var_44]; float
4621FE:  VSTR            S16, [SP,#0x48+var_48]
462202:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462206:  VLDR            S0, [SP,#0x48+var_3C]
46220A:  MOV             R0, R4; this
46220C:  LDR.W           R1, =(aCred603 - 0x462218); "CRED603"
462210:  VCVT.F32.U32    S0, S0
462214:  ADD             R1, PC; "CRED603"
462216:  VADD.F32        S0, S0, S18
46221A:  VCVT.U32.F32    S0, S0
46221E:  VSTR            S0, [SP,#0x48+var_3C]
462222:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462226:  MOV             R1, R10; float
462228:  MOV             R2, R0; float
46222A:  MOV             R3, R5; unsigned __int16 *
46222C:  STR.W           R8, [SP,#0x48+var_44]; float
462230:  VSTR            S16, [SP,#0x48+var_48]
462234:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462238:  LDR.W           R1, =(aCred604 - 0x462242); "CRED604"
46223C:  MOV             R0, R4; this
46223E:  ADD             R1, PC; "CRED604"
462240:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462244:  MOV             R1, R10; float
462246:  MOV             R2, R0; float
462248:  MOV             R3, R5; unsigned __int16 *
46224A:  STR.W           R11, [SP,#0x48+var_44]; float
46224E:  VSTR            S16, [SP,#0x48+var_48]
462252:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462256:  VLDR            S0, [SP,#0x48+var_3C]
46225A:  MOV             R0, R4; this
46225C:  LDR.W           R1, =(aCred605 - 0x462268); "CRED605"
462260:  VCVT.F32.U32    S0, S0
462264:  ADD             R1, PC; "CRED605"
462266:  VADD.F32        S0, S0, S18
46226A:  VCVT.U32.F32    S0, S0
46226E:  VSTR            S0, [SP,#0x48+var_3C]
462272:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462276:  MOV             R1, R10; float
462278:  MOV             R2, R0; float
46227A:  MOV             R3, R5; unsigned __int16 *
46227C:  STR.W           R8, [SP,#0x48+var_44]; float
462280:  VSTR            S16, [SP,#0x48+var_48]
462284:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462288:  LDR.W           R1, =(aCred606 - 0x462292); "CRED606"
46228C:  MOV             R0, R4; this
46228E:  ADD             R1, PC; "CRED606"
462290:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462294:  MOV             R1, R10; float
462296:  MOV             R2, R0; float
462298:  MOV             R3, R5; unsigned __int16 *
46229A:  STR.W           R11, [SP,#0x48+var_44]; float
46229E:  VSTR            S16, [SP,#0x48+var_48]
4622A2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4622A6:  LDR.W           R1, =(aCred607 - 0x4622B0); "CRED607"
4622AA:  MOV             R0, R4; this
4622AC:  ADD             R1, PC; "CRED607"
4622AE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4622B2:  MOV             R1, R10; float
4622B4:  MOV             R2, R0; float
4622B6:  MOV             R3, R5; unsigned __int16 *
4622B8:  STR.W           R11, [SP,#0x48+var_44]; float
4622BC:  VSTR            S16, [SP,#0x48+var_48]
4622C0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4622C4:  LDR.W           R1, =(aCred608 - 0x4622CE); "CRED608"
4622C8:  MOV             R0, R4; this
4622CA:  ADD             R1, PC; "CRED608"
4622CC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4622D0:  MOV             R1, R10; float
4622D2:  MOV             R2, R0; float
4622D4:  MOV             R3, R5; unsigned __int16 *
4622D6:  STR.W           R11, [SP,#0x48+var_44]; float
4622DA:  VSTR            S16, [SP,#0x48+var_48]
4622DE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4622E2:  VLDR            S0, [SP,#0x48+var_3C]
4622E6:  MOV             R0, R4; this
4622E8:  MOV             R1, R6; CKeyGen *
4622EA:  VCVT.F32.U32    S0, S0
4622EE:  VADD.F32        S0, S0, S18
4622F2:  VCVT.U32.F32    S0, S0
4622F6:  VSTR            S0, [SP,#0x48+var_3C]
4622FA:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4622FE:  MOV             R1, R10; float
462300:  MOV             R2, R0; float
462302:  MOV             R3, R5; unsigned __int16 *
462304:  STR.W           R8, [SP,#0x48+var_44]; float
462308:  VSTR            S16, [SP,#0x48+var_48]
46230C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462310:  LDR.W           R1, =(aCred610 - 0x46231A); "CRED610"
462314:  MOV             R0, R4; this
462316:  ADD             R1, PC; "CRED610"
462318:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46231C:  MOV             R1, R10; float
46231E:  MOV             R2, R0; float
462320:  MOV             R3, R5; unsigned __int16 *
462322:  STR.W           R11, [SP,#0x48+var_44]; float
462326:  VSTR            S16, [SP,#0x48+var_48]
46232A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46232E:  LDR.W           R1, =(aCred611 - 0x462338); "CRED611"
462332:  MOV             R0, R4; this
462334:  ADD             R1, PC; "CRED611"
462336:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46233A:  MOV             R1, R10; float
46233C:  MOV             R2, R0; float
46233E:  MOV             R3, R5; unsigned __int16 *
462340:  STR.W           R11, [SP,#0x48+var_44]; float
462344:  VSTR            S16, [SP,#0x48+var_48]
462348:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46234C:  LDR.W           R1, =(aCred612 - 0x462356); "CRED612"
462350:  MOV             R0, R4; this
462352:  ADD             R1, PC; "CRED612"
462354:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462358:  MOV             R1, R10; float
46235A:  MOV             R2, R0; float
46235C:  MOV             R3, R5; unsigned __int16 *
46235E:  STR.W           R11, [SP,#0x48+var_44]; float
462362:  VSTR            S16, [SP,#0x48+var_48]
462366:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46236A:  LDR.W           R1, =(aCred613 - 0x462374); "CRED613"
46236E:  MOV             R0, R4; this
462370:  ADD             R1, PC; "CRED613"
462372:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462376:  MOV             R1, R10; float
462378:  MOV             R2, R0; float
46237A:  MOV             R3, R5; unsigned __int16 *
46237C:  STR.W           R11, [SP,#0x48+var_44]; float
462380:  VSTR            S16, [SP,#0x48+var_48]
462384:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462388:  LDR.W           R1, =(aCred614 - 0x462392); "CRED614"
46238C:  MOV             R0, R4; this
46238E:  ADD             R1, PC; "CRED614"
462390:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462394:  MOV             R1, R10; float
462396:  MOV             R2, R0; float
462398:  MOV             R3, R5; unsigned __int16 *
46239A:  STR.W           R11, [SP,#0x48+var_44]; float
46239E:  VSTR            S16, [SP,#0x48+var_48]
4623A2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4623A6:  LDR.W           R1, =(aCred615 - 0x4623B0); "CRED615"
4623AA:  MOV             R0, R4; this
4623AC:  ADD             R1, PC; "CRED615"
4623AE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4623B2:  MOV             R1, R10; float
4623B4:  MOV             R2, R0; float
4623B6:  MOV             R3, R5; unsigned __int16 *
4623B8:  STR.W           R11, [SP,#0x48+var_44]; float
4623BC:  VSTR            S16, [SP,#0x48+var_48]
4623C0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4623C4:  LDR.W           R1, =(aCred616 - 0x4623CE); "CRED616"
4623C8:  MOV             R0, R4; this
4623CA:  ADD             R1, PC; "CRED616"
4623CC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4623D0:  MOV             R1, R10; float
4623D2:  MOV             R2, R0; float
4623D4:  MOV             R3, R5; unsigned __int16 *
4623D6:  STR.W           R11, [SP,#0x48+var_44]; float
4623DA:  VSTR            S16, [SP,#0x48+var_48]
4623DE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4623E2:  ADR.W           R1, aCred617; "CRED617"
4623E6:  MOV             R0, R4; this
4623E8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4623EC:  MOV             R1, R10; float
4623EE:  MOV             R2, R0; float
4623F0:  MOV             R3, R5; unsigned __int16 *
4623F2:  STR.W           R11, [SP,#0x48+var_44]; float
4623F6:  VSTR            S16, [SP,#0x48+var_48]
4623FA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4623FE:  ADR.W           R1, aCred618; "CRED618"
462402:  MOV             R0, R4; this
462404:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462408:  MOV             R1, R10; float
46240A:  MOV             R2, R0; float
46240C:  MOV             R3, R5; unsigned __int16 *
46240E:  STR.W           R11, [SP,#0x48+var_44]; float
462412:  VSTR            S16, [SP,#0x48+var_48]
462416:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46241A:  ADR.W           R1, aCred619; "CRED619"
46241E:  MOV             R0, R4; this
462420:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462424:  MOV             R1, R10; float
462426:  MOV             R2, R0; float
462428:  MOV             R3, R5; unsigned __int16 *
46242A:  STR.W           R11, [SP,#0x48+var_44]; float
46242E:  VSTR            S16, [SP,#0x48+var_48]
462432:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462436:  VLDR            S0, [SP,#0x48+var_3C]
46243A:  ADR.W           R1, aCred620; "CRED620"
46243E:  MOV             R0, R4; this
462440:  VCVT.F32.U32    S0, S0
462444:  VADD.F32        S0, S0, S18
462448:  VCVT.U32.F32    S0, S0
46244C:  VSTR            S0, [SP,#0x48+var_3C]
462450:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462454:  MOV             R1, R10; float
462456:  MOV             R2, R0; float
462458:  MOV             R3, R5; unsigned __int16 *
46245A:  STR.W           R8, [SP,#0x48+var_44]; float
46245E:  VSTR            S16, [SP,#0x48+var_48]
462462:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462466:  ADR.W           R1, aCred621; "CRED621"
46246A:  MOV             R0, R4; this
46246C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462470:  MOV             R1, R10; float
462472:  MOV             R2, R0; float
462474:  MOV             R3, R5; unsigned __int16 *
462476:  STR.W           R11, [SP,#0x48+var_44]; float
46247A:  VSTR            S16, [SP,#0x48+var_48]
46247E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462482:  ADR.W           R1, aCred622; "CRED622"
462486:  MOV             R0, R4; this
462488:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46248C:  MOV             R1, R10; float
46248E:  MOV             R2, R0; float
462490:  MOV             R3, R5; unsigned __int16 *
462492:  STR.W           R11, [SP,#0x48+var_44]; float
462496:  VSTR            S16, [SP,#0x48+var_48]
46249A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46249E:  ADR.W           R1, aCred623; "CRED623"
4624A2:  MOV             R0, R4; this
4624A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4624A8:  MOV             R1, R10; float
4624AA:  MOV             R2, R0; float
4624AC:  MOV             R3, R5; unsigned __int16 *
4624AE:  STR.W           R11, [SP,#0x48+var_44]; float
4624B2:  VSTR            S16, [SP,#0x48+var_48]
4624B6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4624BA:  ADR.W           R1, aCred624; "CRED624"
4624BE:  MOV             R0, R4; this
4624C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4624C4:  MOV             R1, R10; float
4624C6:  MOV             R2, R0; float
4624C8:  MOV             R3, R5; unsigned __int16 *
4624CA:  STR.W           R11, [SP,#0x48+var_44]; float
4624CE:  VSTR            S16, [SP,#0x48+var_48]
4624D2:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4624D6:  ADR.W           R1, aCred625; "CRED625"
4624DA:  MOV             R0, R4; this
4624DC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4624E0:  MOV             R1, R10; float
4624E2:  MOV             R2, R0; float
4624E4:  MOV             R3, R5; unsigned __int16 *
4624E6:  STR.W           R11, [SP,#0x48+var_44]; float
4624EA:  VSTR            S16, [SP,#0x48+var_48]
4624EE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4624F2:  ADR.W           R1, aCred626; "CRED626"
4624F6:  MOV             R0, R4; this
4624F8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4624FC:  MOV             R1, R10; float
4624FE:  MOV             R2, R0; float
462500:  MOV             R3, R5; unsigned __int16 *
462502:  STR.W           R11, [SP,#0x48+var_44]; float
462506:  VSTR            S16, [SP,#0x48+var_48]
46250A:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46250E:  ADR.W           R1, aCred627; "CRED627"
462512:  MOV             R0, R4; this
462514:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462518:  MOV             R1, R10; float
46251A:  MOV             R2, R0; float
46251C:  MOV             R3, R5; unsigned __int16 *
46251E:  STR.W           R11, [SP,#0x48+var_44]; float
462522:  VSTR            S16, [SP,#0x48+var_48]
462526:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46252A:  ADR.W           R1, aCred628; "CRED628"
46252E:  MOV             R0, R4; this
462530:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462534:  MOV             R1, R10; float
462536:  MOV             R2, R0; float
462538:  MOV             R3, R5; unsigned __int16 *
46253A:  STR.W           R11, [SP,#0x48+var_44]; float
46253E:  VSTR            S16, [SP,#0x48+var_48]
462542:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462546:  VLDR            S0, [SP,#0x48+var_3C]
46254A:  ADR.W           R1, aCred629; "CRED629"
46254E:  MOV             R0, R4; this
462550:  VCVT.F32.U32    S0, S0
462554:  VADD.F32        S0, S0, S18
462558:  VCVT.U32.F32    S0, S0
46255C:  VSTR            S0, [SP,#0x48+var_3C]
462560:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462564:  MOV             R1, R10; float
462566:  MOV             R2, R0; float
462568:  MOV             R3, R5; unsigned __int16 *
46256A:  STR.W           R8, [SP,#0x48+var_44]; float
46256E:  VSTR            S16, [SP,#0x48+var_48]
462572:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462576:  ADR.W           R1, aCred630; "CRED630"
46257A:  MOV             R0, R4; this
46257C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462580:  MOV             R1, R10; float
462582:  MOV             R2, R0; float
462584:  MOV             R3, R5; unsigned __int16 *
462586:  STR.W           R11, [SP,#0x48+var_44]; float
46258A:  VSTR            S16, [SP,#0x48+var_48]
46258E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462592:  VLDR            S0, [SP,#0x48+var_3C]
462596:  ADR.W           R1, aCred700; "CRED700"
46259A:  MOV             R0, R4; this
46259C:  VCVT.F32.U32    S0, S0
4625A0:  VADD.F32        S0, S0, S18
4625A4:  VCVT.U32.F32    S0, S0
4625A8:  VSTR            S0, [SP,#0x48+var_3C]
4625AC:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4625B0:  MOV             R1, R10; float
4625B2:  MOV             R2, R0; float
4625B4:  MOV             R3, R5; unsigned __int16 *
4625B6:  STR.W           R8, [SP,#0x48+var_44]; float
4625BA:  VSTR            S16, [SP,#0x48+var_48]
4625BE:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4625C2:  ADR.W           R1, aCred701; "CRED701"
4625C6:  MOV             R0, R4; this
4625C8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4625CC:  MOV             R1, R10; float
4625CE:  MOV             R2, R0; float
4625D0:  MOV             R3, R5; unsigned __int16 *
4625D2:  STR.W           R11, [SP,#0x48+var_44]; float
4625D6:  VSTR            S16, [SP,#0x48+var_48]
4625DA:  B.W             loc_462634
4625DE:  ALIGN 0x10
4625E0:  DCD aCred472 - 0x4615F2
4625E4:  DCD aCred473 - 0x461610
4625E8:  DCD aCred474 - 0x46162E
4625EC:  DCD aCred475 - 0x46164C
4625F0:  DCD aCred476 - 0x46166A
4625F4:  DCD aCred477 - 0x461688
4625F8:  DCD aCred478 - 0x4616A6
4625FC:  DCD aCred479 - 0x4616C4
462600:  DCD aCred480 - 0x4616E2
462604:  DCD aCred481 - 0x461700
462608:  DCD aCred482 - 0x46171E
46260C:  DCD aCred483 - 0x46173C
462610:  DCD aCred484 - 0x46175A
462614:  DCD aCred485 - 0x461778
462618:  DCD aCred486 - 0x461796
46261C:  DCD aCred487 - 0x4617B4
462620:  DCD aCred488 - 0x4617D2
462624:  DCD aCred489 - 0x4617F0
462628:  DCD aCred490 - 0x46180E
46262C:  DCD aCred491 - 0x46182C
462630:  DCD aCred492 - 0x46184A
462634:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462638:  ADR             R1, aCred702; "CRED702"
46263A:  MOV             R0, R4; this
46263C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462640:  MOV             R1, R10; float
462642:  MOV             R2, R0; float
462644:  MOV             R3, R5; unsigned __int16 *
462646:  STR.W           R11, [SP,#0x48+var_44]; float
46264A:  VSTR            S16, [SP,#0x48+var_48]
46264E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462652:  ADR             R1, aCred703; "CRED703"
462654:  MOV             R0, R4; this
462656:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46265A:  MOV             R1, R10; float
46265C:  MOV             R2, R0; float
46265E:  MOV             R3, R5; unsigned __int16 *
462660:  STR.W           R11, [SP,#0x48+var_44]; float
462664:  VSTR            S16, [SP,#0x48+var_48]
462668:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46266C:  ADR             R1, aCred704; "CRED704"
46266E:  MOV             R0, R4; this
462670:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462674:  MOV             R1, R10; float
462676:  MOV             R2, R0; float
462678:  MOV             R3, R5; unsigned __int16 *
46267A:  STR.W           R11, [SP,#0x48+var_44]; float
46267E:  VSTR            S16, [SP,#0x48+var_48]
462682:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462686:  ADR             R1, aCred705; "CRED705"
462688:  MOV             R0, R4; this
46268A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46268E:  MOV             R1, R10; float
462690:  MOV             R2, R0; float
462692:  MOV             R3, R5; unsigned __int16 *
462694:  STR.W           R11, [SP,#0x48+var_44]; float
462698:  VSTR            S16, [SP,#0x48+var_48]
46269C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4626A0:  ADR             R1, aCred706; "CRED706"
4626A2:  MOV             R0, R4; this
4626A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4626A8:  MOV             R1, R10; float
4626AA:  MOV             R2, R0; float
4626AC:  MOV             R3, R5; unsigned __int16 *
4626AE:  STR.W           R11, [SP,#0x48+var_44]; float
4626B2:  VSTR            S16, [SP,#0x48+var_48]
4626B6:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4626BA:  ADR             R1, aCred707; "CRED707"
4626BC:  MOV             R0, R4; this
4626BE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4626C2:  MOV             R1, R10; float
4626C4:  MOV             R2, R0; float
4626C6:  MOV             R3, R5; unsigned __int16 *
4626C8:  STR.W           R11, [SP,#0x48+var_44]; float
4626CC:  VSTR            S16, [SP,#0x48+var_48]
4626D0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4626D4:  ADR             R1, aCred708; "CRED708"
4626D6:  MOV             R0, R4; this
4626D8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4626DC:  MOV             R1, R10; float
4626DE:  MOV             R2, R0; float
4626E0:  MOV             R3, R5; unsigned __int16 *
4626E2:  STR.W           R11, [SP,#0x48+var_44]; float
4626E6:  VSTR            S16, [SP,#0x48+var_48]
4626EA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4626EE:  ADR             R1, aCred709; "CRED709"
4626F0:  MOV             R0, R4; this
4626F2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4626F6:  MOV             R1, R10; float
4626F8:  MOV             R2, R0; float
4626FA:  MOV             R3, R5; unsigned __int16 *
4626FC:  STR.W           R11, [SP,#0x48+var_44]; float
462700:  VSTR            S16, [SP,#0x48+var_48]
462704:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462708:  ADR             R1, aCred710; "CRED710"
46270A:  MOV             R0, R4; this
46270C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462710:  MOV             R1, R10; float
462712:  MOV             R2, R0; float
462714:  MOV             R3, R5; unsigned __int16 *
462716:  STR.W           R11, [SP,#0x48+var_44]; float
46271A:  VSTR            S16, [SP,#0x48+var_48]
46271E:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462722:  ADR             R1, aCred711; "CRED711"
462724:  MOV             R0, R4; this
462726:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46272A:  MOV             R1, R10; float
46272C:  MOV             R2, R0; float
46272E:  MOV             R3, R5; unsigned __int16 *
462730:  STR.W           R11, [SP,#0x48+var_44]; float
462734:  VSTR            S16, [SP,#0x48+var_48]
462738:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46273C:  ADR             R1, aCred712; "CRED712"
46273E:  MOV             R0, R4; this
462740:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462744:  MOV             R1, R10; float
462746:  MOV             R2, R0; float
462748:  MOV             R3, R5; unsigned __int16 *
46274A:  STR.W           R11, [SP,#0x48+var_44]; float
46274E:  VSTR            S16, [SP,#0x48+var_48]
462752:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462756:  ADR             R1, aCred713; "CRED713"
462758:  MOV             R0, R4; this
46275A:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
46275E:  MOV             R1, R10; float
462760:  MOV             R2, R0; float
462762:  MOV             R3, R5; unsigned __int16 *
462764:  STR.W           R11, [SP,#0x48+var_44]; float
462768:  VSTR            S16, [SP,#0x48+var_48]
46276C:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
462770:  ADR             R1, aCred714; "CRED714"
462772:  MOV             R0, R4; this
462774:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462778:  MOV             R1, R10; float
46277A:  MOV             R2, R0; float
46277C:  MOV             R3, R5; unsigned __int16 *
46277E:  STR.W           R11, [SP,#0x48+var_44]; float
462782:  VSTR            S16, [SP,#0x48+var_48]
462786:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
46278A:  ADR             R1, aCred715; "CRED715"
46278C:  MOV             R0, R4; this
46278E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
462792:  MOV             R1, R10; float
462794:  MOV             R2, R0; float
462796:  MOV             R3, R5; unsigned __int16 *
462798:  STR.W           R11, [SP,#0x48+var_44]; float
46279C:  VSTR            S16, [SP,#0x48+var_48]
4627A0:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4627A4:  ADR             R1, aCred716; "CRED716"
4627A6:  MOV             R0, R4; this
4627A8:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4627AC:  MOV             R1, R10; float
4627AE:  MOV             R2, R0; float
4627B0:  MOV             R3, R5; unsigned __int16 *
4627B2:  STR.W           R11, [SP,#0x48+var_44]; float
4627B6:  VSTR            S16, [SP,#0x48+var_48]
4627BA:  BLX             j__ZN8CCredits15PrintCreditTextEffPtRjfb; CCredits::PrintCreditText(float,float,ushort *,uint &,float,bool)
4627BE:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
4627C2:  LDR             R0, =(TheCamera_ptr - 0x4627C8)
4627C4:  ADD             R0, PC; TheCamera_ptr
4627C6:  LDR             R0, [R0]; TheCamera
4627C8:  LDRB.W          R0, [R0,#(byte_951FE3 - 0x951FA8)]
4627CC:  CBZ             R0, loc_4627D8
4627CE:  LDR             R0, =(TheCamera_ptr - 0x4627D4)
4627D0:  ADD             R0, PC; TheCamera_ptr
4627D2:  LDR             R0, [R0]; TheCamera ; this
4627D4:  BLX             j__ZN7CCamera24DrawBordersForWideScreenEv; CCamera::DrawBordersForWideScreen(void)
4627D8:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x4627DE)
4627DA:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
4627DC:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
4627DE:  LDR.W           R0, [R0,#(dword_6F3838 - 0x6F3794)]; this
4627E2:  CMP             R0, #0
4627E4:  IT NE
4627E6:  BLXNE           j__ZN13CWidgetButton4DrawEv; CWidgetButton::Draw(void)
4627EA:  LDR             R0, =(RsGlobal_ptr - 0x4627F6)
4627EC:  VMOV.F32        S2, #-10.0
4627F0:  LDR             R1, [SP,#0x48+var_3C]
4627F2:  ADD             R0, PC; RsGlobal_ptr
4627F4:  LDR             R0, [R0]; RsGlobal
4627F6:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
4627F8:  ADD             R0, R1
4627FA:  VMOV            S0, R0
4627FE:  VCVT.F32.U32    S0, S0
462802:  VSUB.F32        S0, S0, S16
462806:  VCMPE.F32       S0, S2
46280A:  VMRS            APSR_nzcv, FPSCR
46280E:  BGE             loc_46281A
462810:  LDR             R0, =(_ZN8CCredits13bCreditsGoingE_ptr - 0x462818)
462812:  MOVS            R1, #0
462814:  ADD             R0, PC; _ZN8CCredits13bCreditsGoingE_ptr
462816:  LDR             R0, [R0]; CCredits::bCreditsGoing ...
462818:  STRB            R1, [R0]; CCredits::bCreditsGoing
46281A:  ADD             SP, SP, #0x10
46281C:  VPOP            {D8-D10}
462820:  ADD             SP, SP, #4
462822:  POP.W           {R8-R11}
462826:  POP             {R4-R7,PC}
