; =========================================================
; Game Engine Function: _ZN12CMenuManager18SmallMessageScreenEPKc
; Address            : 0x432FF0 - 0x433252
; =========================================================

432FF0:  PUSH            {R4-R7,LR}
432FF2:  ADD             R7, SP, #0xC
432FF4:  PUSH.W          {R11}
432FF8:  VPUSH           {D8-D11}
432FFC:  SUB             SP, SP, #0x20
432FFE:  MOV             R4, R1
433000:  MOVS            R0, #0; this
433002:  MOVS            R1, #0; unsigned __int8
433004:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
433008:  MOVS            R0, #(stderr+1); this
43300A:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
43300E:  MOVS            R0, #(stderr+1); this
433010:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
433014:  LDR             R0, =(RsGlobal_ptr - 0x43301E)
433016:  VLDR            S2, =640.0
43301A:  ADD             R0, PC; RsGlobal_ptr
43301C:  LDR             R6, [R0]; RsGlobal
43301E:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
433020:  VMOV            S0, R0
433024:  VCVT.F32.S32    S0, S0
433028:  VDIV.F32        S0, S0, S2
43302C:  VLDR            S2, =430.0
433030:  VMUL.F32        S0, S0, S2
433034:  VMOV            R0, S0; this
433038:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
43303C:  MOVS            R0, #0; this
43303E:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
433042:  LDR             R0, =(HudColour_ptr - 0x43304C)
433044:  ADD             R5, SP, #0x50+var_34
433046:  MOVS            R2, #5
433048:  ADD             R0, PC; HudColour_ptr
43304A:  LDR             R1, [R0]; HudColour ; unsigned __int8
43304C:  MOV             R0, R5; this
43304E:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
433052:  MOV             R0, R5
433054:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
433058:  MOVS            R0, #0; this
43305A:  BLX             j__ZN5CFont21SetDropShadowPositionEa; CFont::SetDropShadowPosition(signed char)
43305E:  LDR             R0, [R6,#(dword_9FC904 - 0x9FC8FC)]
433060:  VLDR            S2, =0.0022321
433064:  CMP.W           R0, #0x1C0
433068:  VMOV            S0, R0
43306C:  VCVT.F32.S32    S0, S0
433070:  VMUL.F32        S0, S0, S2
433074:  VMOV.F32        S2, #1.0
433078:  IT EQ
43307A:  VMOVEQ.F32      S0, S2
43307E:  VMOV            R0, S0; this
433082:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
433086:  LDRD.W          R0, R1, [R6,#(dword_9FC900 - 0x9FC8FC)]
43308A:  VMOV.F32        S0, #0.14844
43308E:  VMOV            S4, R1
433092:  VLDR            S6, =0.3683
433096:  VLDR            S10, =95.0
43309A:  CMP.W           R0, #0x280
43309E:  VMOV            S2, R0
4330A2:  VLDR            S12, =165.0
4330A6:  VLDR            S8, =0.27902
4330AA:  ADD             R5, SP, #0x50+var_48
4330AC:  VCVT.F32.S32    S2, S2
4330B0:  MOV.W           R0, #0xFF
4330B4:  VCVT.F32.S32    S4, S4
4330B8:  MOV.W           R2, #0; unsigned __int8
4330BC:  MOV.W           R3, #0; unsigned __int8
4330C0:  VMUL.F32        S0, S2, S0
4330C4:  IT EQ
4330C6:  VMOVEQ.F32      S0, S10
4330CA:  CMP.W           R1, #0x1C0
4330CE:  VMUL.F32        S6, S4, S6
4330D2:  VLDR            S10, =125.0
4330D6:  IT EQ
4330D8:  VMOVEQ.F32      S6, S12
4330DC:  VMUL.F32        S8, S4, S8
4330E0:  VSUB.F32        S2, S2, S0
4330E4:  IT EQ
4330E6:  VMOVEQ.F32      S8, S10
4330EA:  VSUB.F32        S4, S4, S6
4330EE:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
4330F0:  MOV             R0, R5; this
4330F2:  MOVS            R1, #0; unsigned __int8
4330F4:  VSTR            S0, [SP,#0x50+var_44]
4330F8:  VSTR            S8, [SP,#0x50+var_38]
4330FC:  VSTR            S2, [SP,#0x50+var_3C]
433100:  VSTR            S4, [SP,#0x50+var_40]
433104:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
433108:  ADD             R0, SP, #0x50+var_44
43310A:  MOV             R1, R5
43310C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
433110:  LDRD.W          R0, R1, [R6,#(dword_9FC900 - 0x9FC8FC)]
433114:  VMOV.F32        S16, #0.5
433118:  VMOV            S2, R1
43311C:  VLDR            S4, =0.30134
433120:  CMP.W           R0, #0x280
433124:  VLDR            S18, =320.0
433128:  VMOV            S0, R0
43312C:  LDR             R0, =(TheText_ptr - 0x433136)
43312E:  VCVT.F32.S32    S0, S0
433132:  ADD             R0, PC; TheText_ptr
433134:  VCVT.F32.S32    S2, S2
433138:  LDR             R0, [R0]; TheText ; this
43313A:  VMUL.F32        S20, S0, S16
43313E:  VLDR            S0, =135.0
433142:  IT EQ
433144:  VMOVEQ.F32      S20, S18
433148:  CMP.W           R1, #0x1C0
43314C:  VMUL.F32        S22, S2, S4
433150:  MOV             R1, R4; CKeyGen *
433152:  IT EQ
433154:  VMOVEQ.F32      S22, S0
433158:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43315C:  MOV             R2, R0; float
43315E:  VMOV            R0, S20; this
433162:  VMOV            R1, S22; float
433166:  BLX             j__ZN5CFont14GetNumberLinesEffPt; CFont::GetNumberLines(float,float,ushort *)
43316A:  LDR             R1, [R6,#(dword_9FC904 - 0x9FC8FC)]
43316C:  CMP             R0, #2
43316E:  BLT             loc_433180
433170:  CMP.W           R1, #0x1C0
433174:  BNE             loc_43318C
433176:  VMOV.F32        S0, #9.0
43317A:  VLDR            S2, =200.0
43317E:  B               loc_4331A4
433180:  CMP.W           R1, #0x1C0
433184:  BNE             loc_4331B6
433186:  VLDR            S20, =190.0
43318A:  B               loc_4331C6
43318C:  VMOV            S0, R1
433190:  VLDR            S4, =0.44643
433194:  VCVT.F32.S32    S2, S0
433198:  VLDR            S0, =0.020089
43319C:  VMUL.F32        S0, S2, S0
4331A0:  VMUL.F32        S2, S2, S4
4331A4:  VMOV            S4, R0
4331A8:  VCVT.F32.S32    S4, S4
4331AC:  VMUL.F32        S0, S0, S4
4331B0:  VSUB.F32        S20, S2, S0
4331B4:  B               loc_4331C6
4331B6:  VMOV            S0, R1
4331BA:  VLDR            S2, =0.42411
4331BE:  VCVT.F32.S32    S0, S0
4331C2:  VMUL.F32        S20, S0, S2
4331C6:  LDR             R0, =(TheText_ptr - 0x4331CE)
4331C8:  MOV             R1, R4; CKeyGen *
4331CA:  ADD             R0, PC; TheText_ptr
4331CC:  LDR             R6, [R0]; TheText
4331CE:  MOV             R0, R6; this
4331D0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4331D4:  VCVT.S32.F32    S20, S20
4331D8:  MOV             R5, R0
4331DA:  LDRB.W          R0, [R6,#(byte_A0078A - 0xA00768)]
4331DE:  CBNZ            R0, loc_433216
4331E0:  ADR             R0, aNocd; "NOCD"
4331E2:  MOV             R1, R4; char *
4331E4:  BLX             strcasecmp
4331E8:  CBNZ            R0, loc_433208
4331EA:  ADR             R0, aOpencd; "OPENCD"
4331EC:  MOV             R1, R4; char *
4331EE:  BLX             strcasecmp
4331F2:  CBNZ            R0, loc_433208
4331F4:  ADR             R0, aWrongcd; "WRONGCD"
4331F6:  MOV             R1, R4; char *
4331F8:  BLX             strcasecmp
4331FC:  CBNZ            R0, loc_433208
4331FE:  ADR             R0, aCderror; "CDERROR"
433200:  MOV             R1, R4; char *
433202:  BLX             strcasecmp
433206:  CBZ             R0, loc_433216
433208:  LDR             R0, =(TheText_ptr - 0x433210)
43320A:  MOV             R1, R5; unsigned __int16 *
43320C:  ADD             R0, PC; TheText_ptr
43320E:  LDR             R0, [R0]; TheText
433210:  ADDS            R0, #0x2C ; ','; char *
433212:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
433216:  LDR             R0, =(RsGlobal_ptr - 0x43321E)
433218:  MOV             R2, R5; CFont *
43321A:  ADD             R0, PC; RsGlobal_ptr
43321C:  LDR             R0, [R0]; RsGlobal
43321E:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
433220:  CMP.W           R0, #0x280
433224:  VMOV            S0, R0
433228:  VCVT.F32.S32    S0, S0
43322C:  VCVT.F32.S32    S2, S20
433230:  VMUL.F32        S0, S0, S16
433234:  IT EQ
433236:  VMOVEQ.F32      S0, S18
43323A:  VMOV            R1, S2; float
43323E:  VMOV            R0, S0; this
433242:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
433246:  ADD             SP, SP, #0x20 ; ' '
433248:  VPOP            {D8-D11}
43324C:  POP.W           {R11}
433250:  POP             {R4-R7,PC}
