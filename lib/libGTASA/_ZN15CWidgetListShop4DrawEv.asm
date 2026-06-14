; =========================================================
; Game Engine Function: _ZN15CWidgetListShop4DrawEv
; Address            : 0x2BAE88 - 0x2BB672
; =========================================================

2BAE88:  PUSH            {R4-R7,LR}
2BAE8A:  ADD             R7, SP, #0xC
2BAE8C:  PUSH.W          {R8-R11}
2BAE90:  SUB             SP, SP, #4
2BAE92:  VPUSH           {D8-D15}
2BAE96:  SUB.W           SP, SP, #0x478
2BAE9A:  MOV             R10, R0
2BAE9C:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BAEA0:  LDR.W           R0, =(RsGlobal_ptr - 0x2BAEB0)
2BAEA4:  ADD.W           R8, SP, #0x4D8+var_488
2BAEA8:  MOVS            R4, #0xFF
2BAEAA:  MOVS            R2, #0; unsigned __int8
2BAEAC:  ADD             R0, PC; RsGlobal_ptr
2BAEAE:  MOVS            R3, #0; unsigned __int8
2BAEB0:  LDR             R6, [R0]; RsGlobal
2BAEB2:  VLDR            S0, [R6,#8]
2BAEB6:  VCVT.F32.S32    S0, S0
2BAEBA:  LDR.W           R0, [R10,#0x20]
2BAEBE:  LDR.W           R1, [R10,#0x28]
2BAEC2:  STR             R0, [SP,#0x4D8+var_288]
2BAEC4:  MOVS            R0, #0
2BAEC6:  STRD.W          R1, R0, [SP,#0x4D8+var_280]
2BAECA:  MOV             R0, R8; this
2BAECC:  MOVS            R1, #0; unsigned __int8
2BAECE:  STR             R4, [SP,#0x4D8+var_4D8]; unsigned __int8
2BAED0:  VSTR            S0, [SP,#0x4D8+var_284]
2BAED4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAED8:  SUB.W           R9, R7, #-var_7C
2BAEDC:  MOVS            R5, #0x64 ; 'd'
2BAEDE:  MOVS            R1, #0; unsigned __int8
2BAEE0:  MOVS            R2, #0; unsigned __int8
2BAEE2:  MOV             R0, R9; this
2BAEE4:  MOVS            R3, #0; unsigned __int8
2BAEE6:  STR             R5, [SP,#0x4D8+var_4D8]; unsigned __int8
2BAEE8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAEEC:  STR             R4, [SP,#0x4D8+var_4D8]; unsigned __int8
2BAEEE:  SUB.W           R4, R7, #-var_68
2BAEF2:  MOVS            R1, #0; unsigned __int8
2BAEF4:  MOVS            R2, #0; unsigned __int8
2BAEF6:  MOV             R0, R4; this
2BAEF8:  MOVS            R3, #0; unsigned __int8
2BAEFA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAEFE:  SUB.W           R0, R7, #-var_6C; this
2BAF02:  MOVS            R1, #0; unsigned __int8
2BAF04:  MOVS            R2, #0; unsigned __int8
2BAF06:  MOVS            R3, #0; unsigned __int8
2BAF08:  STR             R5, [SP,#0x4D8+var_4D8]; unsigned __int8
2BAF0A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BAF0E:  STR             R0, [SP,#0x4D8+var_4D8]
2BAF10:  ADD             R0, SP, #0x4D8+var_288
2BAF12:  MOV             R1, R8
2BAF14:  MOV             R2, R9
2BAF16:  MOV             R3, R4
2BAF18:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2BAF1C:  MOVS            R0, #0; this
2BAF1E:  MOVS            R1, #0; unsigned __int8
2BAF20:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BAF24:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
2BAF26:  VMOV            S0, R0
2BAF2A:  VCVT.F32.S32    S0, S0
2BAF2E:  VMOV            R0, S0; this
2BAF32:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2BAF36:  MOVS            R0, #(stderr+1); this
2BAF38:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BAF3C:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
2BAF3E:  VLDR            S20, =640.0
2BAF42:  VMOV            S0, R0
2BAF46:  VCVT.F32.S32    S0, S0
2BAF4A:  VDIV.F32        S0, S0, S20
2BAF4E:  VMUL.F32        S0, S0, S20
2BAF52:  VMOV            R0, S0; this
2BAF56:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
2BAF5A:  MOVS            R0, #(stderr+1); this
2BAF5C:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BAF60:  MOVS            R0, #(stderr+1); this
2BAF62:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BAF66:  MOV             R0, R10; this
2BAF68:  BLX             j__ZN11CWidgetList4DrawEv; CWidgetList::Draw(void)
2BAF6C:  ADD.W           R0, R10, #0x11C00
2BAF70:  VLDR            S0, [R6,#4]
2BAF74:  ADD.W           R4, R0, #0xB4
2BAF78:  ADD.W           R0, R10, #0x10000
2BAF7C:  ADD.W           R0, R0, #0x1CA0
2BAF80:  VCVT.F32.S32    S16, S0
2BAF84:  VLDR            S18, [R4]
2BAF88:  BLX             j__ZN7CWidget10SetScissorER5CRect; CWidget::SetScissor(CRect &)
2BAF8C:  MOV             R1, #0x11CB0
2BAF94:  LDR.W           R0, [R10,R1]
2BAF98:  CMP             R0, #0
2BAF9A:  BLE.W           loc_2BB50C
2BAF9E:  VDIV.F32        S0, S16, S20
2BAFA2:  ADD             R1, R10
2BAFA4:  STR             R1, [SP,#0x4D8+var_49C]
2BAFA6:  ADD.W           R1, R10, #0x11000
2BAFAA:  ADD.W           R1, R1, #0xDF0
2BAFAE:  STR             R1, [SP,#0x4D8+var_494]
2BAFB0:  ADD.W           R1, R10, #0x11800
2BAFB4:  ADD.W           R6, R10, #0x110
2BAFB8:  ADD.W           R1, R1, #0x498
2BAFBC:  STR             R1, [SP,#0x4D8+var_4A0]
2BAFBE:  ADD.W           R1, R10, #0x11800
2BAFC2:  MOV.W           R8, #0
2BAFC6:  ADD.W           R9, R1, #0x4C8
2BAFCA:  ADD.W           R1, R10, #0x11000
2BAFCE:  ADD.W           R5, R1, #0xC90
2BAFD2:  ADD.W           R1, R10, #0x11C00
2BAFD6:  ADD.W           R2, R1, #0x9C
2BAFDA:  LDR.W           R1, =(RsGlobal_ptr - 0x2BAFE6)
2BAFDE:  STR.W           R9, [SP,#0x4D8+var_498]
2BAFE2:  ADD             R1, PC; RsGlobal_ptr
2BAFE4:  LDR             R1, [R1]; RsGlobal
2BAFE6:  STR             R1, [SP,#0x4D8+var_4A4]
2BAFE8:  LDR.W           R1, =(TheText_ptr - 0x2BAFF0)
2BAFEC:  ADD             R1, PC; TheText_ptr
2BAFEE:  LDR             R1, [R1]; TheText
2BAFF0:  STR             R1, [SP,#0x4D8+var_4B8]
2BAFF2:  VMOV.F32        S2, #0.875
2BAFF6:  LDR.W           R1, =(TheText_ptr - 0x2BB00A)
2BAFFA:  VMOV.F32        S4, #3.0
2BAFFE:  VLDR            S19, =0.0
2BB002:  VMOV.F32        S22, #0.5
2BB006:  ADD             R1, PC; TheText_ptr
2BB008:  VMOV.F32        S30, #2.0
2BB00C:  VLDR            S21, =0.0225
2BB010:  VMOV.F32        S17, #-2.0
2BB014:  LDR             R1, [R1]; TheText
2BB016:  STR             R1, [SP,#0x4D8+var_4B0]
2BB018:  LDR.W           R1, =(_ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr - 0x2BB02C)
2BB01C:  VMUL.F32        S18, S18, S2
2BB020:  VLDR            S25, =255.0
2BB024:  VMUL.F32        S20, S0, S4
2BB028:  ADD             R1, PC; _ZN17CVehicleModelInfo21ms_vehicleColourTableE_ptr
2BB02A:  VMOV.F32        S0, #4.0
2BB02E:  LDR             R1, [R1]; CVehicleModelInfo::ms_vehicleColourTable ...
2BB030:  STR             R1, [SP,#0x4D8+var_4BC]
2BB032:  VMUL.F32        S26, S18, S22
2BB036:  VADD.F32        S2, S20, S20
2BB03A:  VMUL.F32        S28, S20, S0
2BB03E:  VSTR            S2, [SP,#0x4D8+var_4B4]
2BB042:  STRD.W          R2, R5, [SP,#0x4D8+var_4AC]
2BB046:  MOV             R1, R8
2BB048:  ADD.W           R8, R1, #1
2BB04C:  VMOV            S0, R1; int
2BB050:  VCVT.F32.S32    S2, S0
2BB054:  VLDR            S0, [R4]
2BB058:  VLDR            S4, [R10,#0x2C]
2BB05C:  VSUB.F32        S4, S4, S0
2BB060:  VMUL.F32        S6, S0, S2
2BB064:  VLDR            S2, [R2]
2BB068:  VADD.F32        S4, S4, S30
2BB06C:  VADD.F32        S27, S2, S6
2BB070:  VCMPE.F32       S27, S4
2BB074:  VMRS            APSR_nzcv, FPSCR
2BB078:  BLE.W           loc_2BB4FC
2BB07C:  VMOV            S4, R8
2BB080:  VCVT.F32.S32    S4, S4
2BB084:  VLDR            S6, [R10,#0x24]
2BB088:  VADD.F32        S6, S0, S6
2BB08C:  VMUL.F32        S0, S0, S4
2BB090:  VADD.F32        S4, S6, S17
2BB094:  VADD.F32        S0, S2, S0
2BB098:  VCMPE.F32       S0, S4
2BB09C:  VMRS            APSR_nzcv, FPSCR
2BB0A0:  BGE.W           loc_2BB4FC
2BB0A4:  MOV             R0, R10; this
2BB0A6:  BLX             j__ZN11CWidgetList15GetAlphaAtIndexEi; CWidgetList::GetAlphaAtIndex(int)
2BB0AA:  VLDR            S0, [R4]
2BB0AE:  MOV             R11, R6
2BB0B0:  LDR             R1, [SP,#0x4D8+var_4A4]
2BB0B2:  VMOV            S29, R0
2BB0B6:  VSUB.F32        S0, S0, S18
2BB0BA:  VLDR            S2, [R1,#4]
2BB0BE:  VCVT.F32.S32    S2, S2
2BB0C2:  VLDR            S4, [R5]
2BB0C6:  VADD.F32        S4, S20, S4
2BB0CA:  VMUL.F32        S0, S0, S22
2BB0CE:  VMUL.F32        S2, S2, S19
2BB0D2:  VADD.F32        S8, S18, S4
2BB0D6:  VADD.F32        S0, S27, S0
2BB0DA:  VMAX.F32        D2, D2, D1
2BB0DE:  VADD.F32        S2, S18, S2
2BB0E2:  VADD.F32        S6, S18, S0
2BB0E6:  VSTR            S4, [R7,#var_7C]
2BB0EA:  VMAX.F32        D1, D4, D1
2BB0EE:  VSTR            S2, [R7,#var_74]
2BB0F2:  VSTR            S0, [R7,#var_70]
2BB0F6:  VSTR            S6, [R7,#var_78]
2BB0FA:  LDR.W           R0, [R11,#0x80]!
2BB0FE:  CMP             R0, #0
2BB100:  ITTT NE
2BB102:  LDRNE           R0, [SP,#0x4D8+var_494]
2BB104:  LDRBNE          R0, [R0]
2BB106:  CMPNE           R0, #0
2BB108:  BEQ.W           loc_2BB320
2BB10C:  LDRB.W          R0, [R6,#0x98]
2BB110:  CBZ             R0, loc_2BB188
2BB112:  LDRB.W          R0, [R6,#0x97]
2BB116:  ADD             R5, SP, #0x4D8+var_288
2BB118:  MOVS            R1, #0; unsigned __int8
2BB11A:  MOVS            R2, #0; unsigned __int8
2BB11C:  MOVS            R3, #0; unsigned __int8
2BB11E:  VMOV            S0, R0
2BB122:  VCVT.F32.U32    S0, S0
2BB126:  LDRB.W          R0, [R10,#0x4C]
2BB12A:  VMOV            S2, R0
2BB12E:  VCVT.F32.U32    S2, S2
2BB132:  VDIV.F32        S0, S0, S25
2BB136:  VMUL.F32        S0, S0, S2
2BB13A:  VMUL.F32        S0, S29, S0
2BB13E:  VCVT.U32.F32    S0, S0
2BB142:  VMOV            R0, S0
2BB146:  STR             R0, [SP,#0x4D8+var_4D8]; unsigned __int8
2BB148:  MOV             R0, R5; this
2BB14A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB14E:  SUB.W           R0, R7, #-var_7C
2BB152:  MOV             R1, R5
2BB154:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2BB158:  VLDR            S0, [R7,#var_7C]
2BB15C:  VLDR            S2, [R7,#var_78]
2BB160:  VLDR            S4, [R7,#var_74]
2BB164:  VADD.F32        S0, S20, S0
2BB168:  VLDR            S6, [R7,#var_70]
2BB16C:  VSUB.F32        S2, S2, S20
2BB170:  VSUB.F32        S4, S4, S20
2BB174:  VADD.F32        S6, S20, S6
2BB178:  VSTR            S0, [R7,#var_7C]
2BB17C:  VSTR            S2, [R7,#var_78]
2BB180:  VSTR            S4, [R7,#var_74]
2BB184:  VSTR            S6, [R7,#var_70]
2BB188:  SUB.W           R9, R6, #0x80
2BB18C:  ADR.W           R1, aCarcol1; "CARCOL1"
2BB190:  MOV             R0, R9; char *
2BB192:  BLX             strcasecmp
2BB196:  CMP             R0, #0
2BB198:  BEQ.W           loc_2BB2A8
2BB19C:  ADR.W           R1, aCarcol2; "CARCOL2"
2BB1A0:  MOV             R0, R9; char *
2BB1A2:  BLX             strcasecmp
2BB1A6:  CMP             R0, #0
2BB1A8:  BEQ             loc_2BB2A8
2BB1AA:  LDRB.W          R3, [R6,#0x97]
2BB1AE:  ADD             R5, SP, #0x4D8+var_288
2BB1B0:  LDRB.W          R0, [R6,#0x94]
2BB1B4:  LDRB.W          R1, [R6,#0x95]
2BB1B8:  VMOV            S0, R3
2BB1BC:  LDRB.W          R2, [R6,#0x96]
2BB1C0:  VMOV            S2, R0
2BB1C4:  VCVT.F32.U32    S0, S0
2BB1C8:  VMOV            S4, R1
2BB1CC:  VMOV            S6, R2
2BB1D0:  VCVT.F32.U32    S2, S2
2BB1D4:  VCVT.F32.U32    S4, S4
2BB1D8:  VCVT.F32.U32    S6, S6
2BB1DC:  LDRB.W          R3, [R10,#0x4C]
2BB1E0:  LDRB.W          R0, [R10,#0x49]
2BB1E4:  VDIV.F32        S0, S0, S25
2BB1E8:  LDRB.W          R1, [R10,#0x4A]
2BB1EC:  LDRB.W          R2, [R10,#0x4B]
2BB1F0:  VDIV.F32        S2, S2, S25
2BB1F4:  VDIV.F32        S4, S4, S25
2BB1F8:  VDIV.F32        S6, S6, S25
2BB1FC:  VMOV            S8, R3
2BB200:  VMOV            S10, R0
2BB204:  VCVT.F32.U32    S8, S8
2BB208:  VMOV            S12, R1
2BB20C:  VCVT.F32.U32    S10, S10
2BB210:  VCVT.F32.U32    S12, S12
2BB214:  VMUL.F32        S0, S0, S8
2BB218:  VMOV            S8, R2
2BB21C:  VMUL.F32        S2, S2, S10
2BB220:  VCVT.F32.U32    S8, S8
2BB224:  VMUL.F32        S4, S4, S12
2BB228:  VMUL.F32        S0, S29, S0
2BB22C:  VCVT.U32.F32    S2, S2
2BB230:  VMUL.F32        S6, S6, S8
2BB234:  VCVT.U32.F32    S4, S4
2BB238:  VCVT.U32.F32    S0, S0
2BB23C:  VMOV            R1, S2; unsigned __int8
2BB240:  VCVT.U32.F32    S6, S6
2BB244:  VMOV            R2, S4; unsigned __int8
2BB248:  VMOV            R0, S0
2BB24C:  VMOV            R3, S6; unsigned __int8
2BB250:  STR             R0, [SP,#0x4D8+var_4D8]; float
2BB252:  MOV             R0, R5; this
2BB254:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB258:  VLDR            S0, [R6,#0x84]
2BB25C:  SUB.W           R1, R7, #-var_7C; int
2BB260:  VLDR            S2, [R6,#0x88]
2BB264:  MOV             R0, R11; int
2BB266:  VMOV            R3, S0; int
2BB26A:  VLDR            S4, [R6,#0x8C]
2BB26E:  VLDR            S6, [R6,#0x90]
2BB272:  MOV             R2, R5; int
2BB274:  VSTR            S6, [SP,#0x4D8+var_4D8]
2BB278:  VSTR            S4, [SP,#0x4D8+var_4D4]
2BB27C:  VSTR            S6, [SP,#0x4D8+var_4D0]
2BB280:  VSTR            S0, [SP,#0x4D8+var_4CC]
2BB284:  VSTR            S2, [SP,#0x4D8+var_4C8]
2BB288:  VSTR            S4, [SP,#0x4D8+var_4C4]
2BB28C:  VSTR            S2, [SP,#0x4D8+var_4C0]
2BB290:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBAffffffff; CSprite2d::Draw(CRect const&,CRGBA const&,float,float,float,float,float,float,float,float)
2BB294:  B               loc_2BB320
2BB296:  ALIGN 4
2BB298:  DCFS 640.0
2BB29C:  DCFS 0.0
2BB2A0:  DCFS 0.0225
2BB2A4:  DCFS 255.0
2BB2A8:  MOVS            R0, #0; int
2BB2AA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2BB2AE:  CMP             R0, #0
2BB2B0:  ITT NE
2BB2B2:  LDRNE.W         R11, [R0,#0x590]
2BB2B6:  CMPNE.W         R11, #0
2BB2BA:  BEQ             loc_2BB320
2BB2BC:  ADR             R1, aCarcol1; "CARCOL1"
2BB2BE:  MOV             R0, R9; char *
2BB2C0:  BLX             strcasecmp
2BB2C4:  ADDW            R1, R11, #0x439
2BB2C8:  CMP             R0, #0
2BB2CA:  IT EQ
2BB2CC:  ADDEQ.W         R1, R11, #0x438
2BB2D0:  LDR             R2, [SP,#0x4D8+var_4BC]
2BB2D2:  LDRB            R0, [R1]
2BB2D4:  ADD             R5, SP, #0x4D8+var_288
2BB2D6:  LDRB.W          R1, [R2,R0,LSL#2]; unsigned __int8
2BB2DA:  ADD.W           R0, R2, R0,LSL#2
2BB2DE:  LDRB            R2, [R0,#1]; unsigned __int8
2BB2E0:  LDRB            R3, [R0,#2]; unsigned __int8
2BB2E2:  LDRB.W          R0, [R6,#0x97]
2BB2E6:  VMOV            S0, R0
2BB2EA:  VCVT.F32.U32    S0, S0
2BB2EE:  LDRB.W          R0, [R10,#0x4C]
2BB2F2:  VMOV            S2, R0
2BB2F6:  VCVT.F32.U32    S2, S2
2BB2FA:  VDIV.F32        S0, S0, S25
2BB2FE:  VMUL.F32        S0, S0, S2
2BB302:  VMUL.F32        S0, S29, S0
2BB306:  VCVT.U32.F32    S0, S0
2BB30A:  VMOV            R0, S0
2BB30E:  STR             R0, [SP,#0x4D8+var_4D8]; unsigned __int8
2BB310:  MOV             R0, R5; this
2BB312:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB316:  SUB.W           R0, R7, #-var_7C
2BB31A:  MOV             R1, R5
2BB31C:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
2BB320:  LDRB.W          R0, [R10,#0x4C]
2BB324:  MOVS            R1, #0xFF; unsigned __int8
2BB326:  MOVS            R2, #0xFF; unsigned __int8
2BB328:  MOVS            R3, #0xFF; unsigned __int8
2BB32A:  VMOV            S0, R0
2BB32E:  VCVT.F32.U32    S0, S0
2BB332:  VMUL.F32        S0, S29, S0
2BB336:  VCVT.U32.F32    S0, S0
2BB33A:  VMOV            R0, S0
2BB33E:  STR             R0, [SP,#0x4D8+var_4D8]; unsigned __int8
2BB340:  SUB.W           R0, R7, #-var_80; this
2BB344:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB348:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BB34C:  LDRB.W          R0, [R10,#0x4C]
2BB350:  MOVS            R1, #0; unsigned __int8
2BB352:  MOVS            R2, #0; unsigned __int8
2BB354:  MOVS            R3, #0; unsigned __int8
2BB356:  VMOV            S0, R0
2BB35A:  VCVT.F32.U32    S0, S0
2BB35E:  VMUL.F32        S0, S29, S0
2BB362:  VCVT.U32.F32    S0, S0
2BB366:  VMOV            R0, S0
2BB36A:  STR             R0, [SP,#0x4D8+var_4D8]; unsigned __int8
2BB36C:  SUB.W           R0, R7, #-var_84; this
2BB370:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB374:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BB378:  MOVS            R0, #(stderr+2); this
2BB37A:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BB37E:  VLDR            S0, [R4]
2BB382:  LDR.W           R9, [SP,#0x4D8+var_498]
2BB386:  VMUL.F32        S0, S0, S21
2BB38A:  VMOV            R0, S0; this
2BB38E:  VSTR            S0, [R9]
2BB392:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BB396:  LDR             R0, [SP,#0x4D8+var_4A0]
2BB398:  VLDR            S2, [R7,#var_74]
2BB39C:  VLDR            S0, [R0]
2BB3A0:  MOV             R0, R10; this
2BB3A2:  VSUB.F32        S0, S0, S2
2BB3A6:  VSUB.F32        S0, S0, S28
2BB3AA:  VMOV            R1, S0; float
2BB3AE:  BLX             j__ZN11CWidgetList15ShrinkTextToFitEf; CWidgetList::ShrinkTextToFit(float)
2BB3B2:  LDR             R0, [SP,#0x4D8+var_494]
2BB3B4:  ADR             R1, dword_2BB698; char *
2BB3B6:  VMOV.F32        S31, S26
2BB3BA:  LDRB            R0, [R0]
2BB3BC:  CMP             R0, #0
2BB3BE:  MOV             R0, R6; char *
2BB3C0:  IT NE
2BB3C2:  VMOVNE.F32      S31, S18
2BB3C6:  BLX             strcasecmp
2BB3CA:  CMP             R0, #0
2BB3CC:  BEQ             loc_2BB4AA
2BB3CE:  MOVS            R0, #0; this
2BB3D0:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BB3D4:  VLDR            S0, [R4]
2BB3D8:  VMOV            S16, R0
2BB3DC:  MOVS            R0, #0; this
2BB3DE:  VMUL.F32        S0, S0, S22
2BB3E2:  VADD.F32        S23, S27, S0
2BB3E6:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BB3EA:  VLDR            S0, [R7,#var_7C]
2BB3EE:  VMOV            S2, R0
2BB3F2:  VLDR            S4, =0.1
2BB3F6:  SUB.W           R1, R6, #0x80; CKeyGen *
2BB3FA:  VADD.F32        S0, S31, S0
2BB3FE:  LDR             R5, [SP,#0x4D8+var_4B0]
2BB400:  VSUB.F32        S2, S23, S2
2BB404:  VMUL.F32        S16, S16, S4
2BB408:  MOV             R0, R5; this
2BB40A:  VADD.F32        S23, S20, S0
2BB40E:  VSUB.F32        S24, S2, S16
2BB412:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BB416:  MOV             R2, R0; CFont *
2BB418:  VMOV            R0, S23; this
2BB41C:  VMOV            R1, S24; float
2BB420:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BB424:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BB428:  LDRB.W          R0, [R10,#0x4C]
2BB42C:  MOVS            R1, #0x51 ; 'Q'; unsigned __int8
2BB42E:  MOVS            R2, #0x9C; unsigned __int8
2BB430:  MOVS            R3, #0x42 ; 'B'; unsigned __int8
2BB432:  VMOV            S0, R0
2BB436:  VCVT.F32.U32    S0, S0
2BB43A:  VMUL.F32        S0, S29, S0
2BB43E:  VCVT.U32.F32    S0, S0
2BB442:  VMOV            R0, S0
2BB446:  STR             R0, [SP,#0x4D8+var_4D8]; unsigned __int8
2BB448:  SUB.W           R0, R7, #-var_88; this
2BB44C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB450:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BB454:  ADR             R1, aDollar_0; "DOLLAR"
2BB456:  MOV             R0, R5; this
2BB458:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BB45C:  ADD.W           R11, SP, #0x4D8+var_288
2BB460:  MOV             R1, R0; unsigned __int16 *
2BB462:  MOV             R0, R11; unsigned __int16 *
2BB464:  BLX             j__Z13GxtCharStrcpyPtPKt; GxtCharStrcpy(ushort *,ushort const*)
2BB468:  MOV             R5, R4
2BB46A:  ADD             R4, SP, #0x4D8+var_488
2BB46C:  MOV             R0, R6; char *
2BB46E:  MOV             R1, R4; unsigned __int16 *
2BB470:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2BB474:  MOV             R1, R4; unsigned __int16 *
2BB476:  MOV             R0, R11; unsigned __int16 *
2BB478:  MOV             R4, R5
2BB47A:  BLX             j__Z13GxtCharStrcatPtS_; GxtCharStrcat(ushort *,ushort *)
2BB47E:  VLDR            S0, [R4]
2BB482:  MOV             R2, R11; CFont *
2BB484:  VLDR            S2, [R7,#var_7C]
2BB488:  VMUL.F32        S0, S0, S22
2BB48C:  VADD.F32        S2, S31, S2
2BB490:  VADD.F32        S0, S27, S0
2BB494:  VADD.F32        S2, S20, S2
2BB498:  VADD.F32        S0, S16, S0
2BB49C:  VMOV            R0, S2; this
2BB4A0:  VMOV            R1, S0; float
2BB4A4:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BB4A8:  B               loc_2BB4F4
2BB4AA:  VLDR            S0, [R4]
2BB4AE:  MOVS            R0, #0; this
2BB4B0:  VMUL.F32        S16, S0, S22
2BB4B4:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BB4B8:  VMOV            S2, R0
2BB4BC:  VLDR            S0, [R7,#var_7C]
2BB4C0:  VADD.F32        S4, S27, S16
2BB4C4:  LDR             R0, [SP,#0x4D8+var_4B8]; this
2BB4C6:  VMUL.F32        S2, S2, S22
2BB4CA:  SUB.W           R1, R6, #0x80; CKeyGen *
2BB4CE:  VADD.F32        S0, S31, S0
2BB4D2:  VLDR            S6, [SP,#0x4D8+var_4B4]
2BB4D6:  VSUB.F32        S27, S4, S2
2BB4DA:  VADD.F32        S16, S6, S0
2BB4DE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BB4E2:  MOV             R2, R0; CFont *
2BB4E4:  VMOV            R0, S16; this
2BB4E8:  VMOV            R1, S27; float
2BB4EC:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BB4F0:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BB4F4:  LDRD.W          R2, R5, [SP,#0x4D8+var_4AC]
2BB4F8:  LDR             R0, [SP,#0x4D8+var_49C]
2BB4FA:  LDR             R0, [R0]
2BB4FC:  ADD.W           R6, R6, #0x11C
2BB500:  CMP             R8, R0
2BB502:  BLT.W           loc_2BB046
2BB506:  VLDR            S20, =640.0
2BB50A:  B               loc_2BB51C
2BB50C:  ADD.W           R0, R10, #0x11800
2BB510:  ADD.W           R9, R0, #0x4C8
2BB514:  ADD.W           R0, R10, #0x11000; this
2BB518:  ADD.W           R5, R0, #0xC90
2BB51C:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BB520:  VMOV.I32        Q8, #0
2BB524:  ADD             R0, SP, #0x4D8+var_288
2BB526:  VST1.64         {D16-D17}, [R0]
2BB52A:  BLX             j__ZN7CWidget10SetScissorER5CRect; CWidget::SetScissor(CRect &)
2BB52E:  MOVS            R0, #0; this
2BB530:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BB534:  ADD             R0, SP, #0x4D8+var_48C; this
2BB536:  MOVS            R6, #0xFF
2BB538:  MOVS            R1, #0xFF; unsigned __int8
2BB53A:  MOVS            R2, #0xFF; unsigned __int8
2BB53C:  MOVS            R3, #0xFF; unsigned __int8
2BB53E:  STR             R6, [SP,#0x4D8+var_4D8]; unsigned __int8
2BB540:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB544:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BB548:  ADD             R0, SP, #0x4D8+var_490; this
2BB54A:  MOVS            R1, #0; unsigned __int8
2BB54C:  MOVS            R2, #0; unsigned __int8
2BB54E:  MOVS            R3, #0; unsigned __int8
2BB550:  STR             R6, [SP,#0x4D8+var_4D8]; unsigned __int8
2BB552:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BB556:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BB55A:  VLDR            S0, =0.08
2BB55E:  VLDR            S2, [R4]
2BB562:  LDR             R1, =(RsGlobal_ptr - 0x2BB56C)
2BB564:  VMUL.F32        S0, S2, S0
2BB568:  ADD             R1, PC; RsGlobal_ptr
2BB56A:  LDR             R1, [R1]; RsGlobal ; float
2BB56C:  VLDR            S2, [R1,#4]
2BB570:  VMOV            R0, S0; this
2BB574:  VCVT.F32.S32    S16, S2
2BB578:  VLDR            S18, [R5]
2BB57C:  VSTR            S0, [R9]
2BB580:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BB584:  VDIV.F32        S0, S16, S20
2BB588:  LDR             R0, =(TheText_ptr - 0x2BB592)
2BB58A:  ADD.W           R1, R10, #0x11000
2BB58E:  ADD             R0, PC; TheText_ptr
2BB590:  ADD.W           R5, R1, #0xCF0
2BB594:  LDR             R0, [R0]; TheText ; this
2BB596:  MOV             R1, R5; CKeyGen *
2BB598:  VMOV.F32        S2, #5.0
2BB59C:  VMUL.F32        S0, S0, S2
2BB5A0:  VLDR            S2, =0.0
2BB5A4:  VMUL.F32        S2, S16, S2
2BB5A8:  VADD.F32        S0, S18, S0
2BB5AC:  VMAX.F32        D8, D0, D1
2BB5B0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BB5B4:  CBZ             R0, loc_2BB616
2BB5B6:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BB5B8:  MOVS            R2, #0; unsigned __int8
2BB5BA:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BB5BE:  LDR             R1, =(RsGlobal_ptr - 0x2BB5C8)
2BB5C0:  VLDR            S2, =-640.0
2BB5C4:  ADD             R1, PC; RsGlobal_ptr
2BB5C6:  LDR             R1, [R1]; RsGlobal
2BB5C8:  VLDR            S0, [R1,#4]
2BB5CC:  ADD.W           R1, R10, #0x11800
2BB5D0:  ADD.W           R1, R1, #0x498; float
2BB5D4:  VCVT.F32.S32    S0, S0
2BB5D8:  VLDR            S4, [R1]
2BB5DC:  VSUB.F32        S4, S4, S16
2BB5E0:  VDIV.F32        S0, S0, S2
2BB5E4:  VMOV.F32        S2, #10.0
2BB5E8:  VMUL.F32        S0, S0, S2
2BB5EC:  VMOV            S2, R0
2BB5F0:  VADD.F32        S0, S4, S0
2BB5F4:  VCMPE.F32       S2, S0
2BB5F8:  VMRS            APSR_nzcv, FPSCR
2BB5FC:  BLE             loc_2BB616
2BB5FE:  VDIV.F32        S0, S0, S2
2BB602:  VLDR            S2, [R9]
2BB606:  VMUL.F32        S0, S0, S2
2BB60A:  VMOV            R0, S0; this
2BB60E:  VSTR            S0, [R9]
2BB612:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BB616:  LDR             R0, =(RsGlobal_ptr - 0x2BB620)
2BB618:  VMOV.F32        S18, #-0.5
2BB61C:  ADD             R0, PC; RsGlobal_ptr
2BB61E:  LDR             R0, [R0]; RsGlobal
2BB620:  LDR             R0, [R0,#(dword_9FC904 - 0x9FC8FC)]
2BB622:  VMOV            S0, R0
2BB626:  MOVS            R0, #0; this
2BB628:  VCVT.F32.S32    S20, S0
2BB62C:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2BB630:  VMOV            S0, R0
2BB634:  VLDR            S2, =0.1
2BB638:  LDR             R0, =(TheText_ptr - 0x2BB648)
2BB63A:  MOV             R1, R5; CKeyGen *
2BB63C:  VMUL.F32        S0, S0, S18
2BB640:  VMUL.F32        S2, S20, S2
2BB644:  ADD             R0, PC; TheText_ptr
2BB646:  LDR             R0, [R0]; TheText ; this
2BB648:  VADD.F32        S18, S2, S0
2BB64C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BB650:  MOV             R2, R0; CFont *
2BB652:  VMOV            R0, S16; this
2BB656:  VMOV            R1, S18; float
2BB65A:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2BB65E:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2BB662:  ADD.W           SP, SP, #0x478
2BB666:  VPOP            {D8-D15}
2BB66A:  ADD             SP, SP, #4
2BB66C:  POP.W           {R8-R11}
2BB670:  POP             {R4-R7,PC}
