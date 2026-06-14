; =========================================================
; Game Engine Function: _ZN4CHud16DrawMissionTitleEv
; Address            : 0x43A100 - 0x43A374
; =========================================================

43A100:  PUSH            {R4,R6,R7,LR}
43A102:  ADD             R7, SP, #8
43A104:  SUB             SP, SP, #0x10
43A106:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x43A10C)
43A108:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
43A10A:  LDR             R0, [R0]; CHud::m_BigMessage ...
43A10C:  LDRH.W          R0, [R0,#(word_99106C - 0x990F6C)]
43A110:  CBZ             R0, loc_43A172
43A112:  LDR             R0, =(BigMessageInUse_ptr - 0x43A118)
43A114:  ADD             R0, PC; BigMessageInUse_ptr
43A116:  LDR             R0, [R0]; BigMessageInUse
43A118:  VLDR            S0, [R0,#4]
43A11C:  VCMP.F32        S0, #0.0
43A120:  VMRS            APSR_nzcv, FPSCR
43A124:  BNE             loc_43A180
43A126:  LDR             R0, =(BigMessageInUse_ptr - 0x43A132)
43A128:  MOV.W           LR, #0x3F800000
43A12C:  LDR             R3, =(BigMessageX_ptr - 0x43A138)
43A12E:  ADD             R0, PC; BigMessageInUse_ptr
43A130:  LDR.W           R12, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x43A13C)
43A134:  ADD             R3, PC; BigMessageX_ptr
43A136:  LDR             R1, =(_ZN4CHud11m_ZoneStateE_ptr - 0x43A142)
43A138:  ADD             R12, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
43A13A:  LDR             R0, [R0]; BigMessageInUse
43A13C:  LDR             R2, =(_ZN4CHud15m_ZoneFadeTimerE_ptr - 0x43A14A)
43A13E:  ADD             R1, PC; _ZN4CHud11m_ZoneStateE_ptr
43A140:  LDR             R3, [R3]; BigMessageX
43A142:  LDR.W           R4, [R12]; CTouchInterface::m_pWidgets ...
43A146:  ADD             R2, PC; _ZN4CHud15m_ZoneFadeTimerE_ptr
43A148:  STR.W           LR, [R0,#(dword_991FE0 - 0x991FDC)]
43A14C:  MOVS            R0, #0xC2700000
43A152:  LDR             R1, [R1]; CHud::m_ZoneState ...
43A154:  STR             R0, [R3,#(dword_992000 - 0x991FFC)]
43A156:  MOVS            R3, #0
43A158:  LDR             R2, [R2]; unsigned __int8
43A15A:  LDR.W           R0, [R4,#(dword_6F3A1C - 0x6F3794)]; this
43A15E:  STR             R3, [R1]; CHud::m_ZoneState
43A160:  CMP             R0, #0
43A162:  STR             R3, [R2]; CHud::m_ZoneFadeTimer
43A164:  BEQ             loc_43A17C
43A166:  MOVS            R1, #0; bool
43A168:  ADD             SP, SP, #0x10
43A16A:  POP.W           {R4,R6,R7,LR}
43A16E:  B.W             j_j__ZN15CWidgetHelpText10ClearQueueEb; j_CWidgetHelpText::ClearQueue(bool)
43A172:  LDR             R0, =(BigMessageInUse_ptr - 0x43A17A)
43A174:  MOVS            R1, #0
43A176:  ADD             R0, PC; BigMessageInUse_ptr
43A178:  LDR             R0, [R0]; BigMessageInUse
43A17A:  STR             R1, [R0,#(dword_991FE0 - 0x991FDC)]
43A17C:  ADD             SP, SP, #0x10
43A17E:  POP             {R4,R6,R7,PC}
43A180:  MOVS            R0, #0; this
43A182:  MOVS            R1, #0; unsigned __int8
43A184:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
43A188:  MOVS            R0, #(stderr+1); this
43A18A:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
43A18E:  MOVS            R0, #0; this
43A190:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
43A194:  MOVS            R0, #(stderr+2); this
43A196:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
43A19A:  MOVS            R0, #(stderr+3); this
43A19C:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
43A1A0:  LDR             R0, =(RsGlobal_ptr - 0x43A1AA)
43A1A2:  VLDR            S2, =448.0
43A1A6:  ADD             R0, PC; RsGlobal_ptr
43A1A8:  LDR             R4, [R0]; RsGlobal
43A1AA:  LDR             R0, [R4,#(dword_9FC904 - 0x9FC8FC)]
43A1AC:  VMOV            S0, R0
43A1B0:  VCVT.F32.S32    S0, S0
43A1B4:  VDIV.F32        S0, S0, S2
43A1B8:  VLDR            S2, =1.3
43A1BC:  VMUL.F32        S0, S0, S2
43A1C0:  VMOV            R0, S0; this
43A1C4:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
43A1C8:  LDR             R1, [R4,#(dword_9FC900 - 0x9FC8FC)]
43A1CA:  LDR             R2, =(BigMessageX_ptr - 0x43A1D4)
43A1CC:  SUBS            R1, #0x14
43A1CE:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x43A1DA)
43A1D0:  ADD             R2, PC; BigMessageX_ptr
43A1D2:  VMOV            S0, R1
43A1D6:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
43A1D8:  LDR             R1, [R2]; BigMessageX
43A1DA:  VCVT.F32.S32    S4, S0
43A1DE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
43A1E0:  VLDR            S2, [R1,#4]
43A1E4:  VLDR            S0, [R0]
43A1E8:  VCMPE.F32       S2, S4
43A1EC:  VMRS            APSR_nzcv, FPSCR
43A1F0:  BGE             loc_43A230
43A1F2:  VLDR            S4, =50.0
43A1F6:  MOVS            R2, #0
43A1F8:  LDR             R0, =(BigMessageAlpha_ptr - 0x43A208)
43A1FA:  MOVT            R2, #0x437F
43A1FE:  VDIV.F32        S0, S0, S4
43A202:  LDR             R1, =(BigMessageX_ptr - 0x43A20A)
43A204:  ADD             R0, PC; BigMessageAlpha_ptr
43A206:  ADD             R1, PC; BigMessageX_ptr
43A208:  LDR             R0, [R0]; BigMessageAlpha
43A20A:  LDR             R1, [R1]; BigMessageX
43A20C:  VLDR            S4, =1000.0
43A210:  VMUL.F32        S0, S0, S4
43A214:  VLDR            S4, =0.3
43A218:  VCVT.U32.F32    S0, S0
43A21C:  VCVT.F32.U32    S0, S0
43A220:  STR             R2, [R0,#(dword_992020 - 0x99201C)]
43A222:  VMUL.F32        S0, S0, S4
43A226:  VADD.F32        S0, S2, S0
43A22A:  VSTR            S0, [R1,#4]
43A22E:  B               loc_43A2BA
43A230:  LDR             R0, =(BigMessageInUse_ptr - 0x43A23A)
43A232:  VLDR            S4, =120.0
43A236:  ADD             R0, PC; BigMessageInUse_ptr
43A238:  LDR             R0, [R0]; BigMessageInUse
43A23A:  VLDR            S2, [R0,#4]
43A23E:  VADD.F32        S2, S0, S2
43A242:  VCMPE.F32       S2, S4
43A246:  VSTR            S2, [R0,#4]
43A24A:  VMRS            APSR_nzcv, FPSCR
43A24E:  BGE             loc_43A25C
43A250:  LDR             R0, =(BigMessageAlpha_ptr - 0x43A256)
43A252:  ADD             R0, PC; BigMessageAlpha_ptr
43A254:  LDR             R0, [R0]; BigMessageAlpha
43A256:  VLDR            S0, [R0,#4]
43A25A:  B               loc_43A294
43A25C:  VLDR            S2, =50.0
43A260:  MOVS            R2, #0
43A262:  LDR             R0, =(BigMessageAlpha_ptr - 0x43A272)
43A264:  MOVT            R2, #0x42F0
43A268:  VDIV.F32        S0, S0, S2
43A26C:  LDR             R1, =(BigMessageInUse_ptr - 0x43A274)
43A26E:  ADD             R0, PC; BigMessageAlpha_ptr
43A270:  ADD             R1, PC; BigMessageInUse_ptr
43A272:  LDR             R0, [R0]; BigMessageAlpha
43A274:  LDR             R1, [R1]; BigMessageInUse
43A276:  VLDR            S2, =1000.0
43A27A:  VMUL.F32        S0, S0, S2
43A27E:  VCVT.U32.F32    S0, S0
43A282:  VCVT.F32.U32    S0, S0
43A286:  VLDR            S2, [R0,#4]
43A28A:  STR             R2, [R1,#(dword_991FE0 - 0x991FDC)]
43A28C:  VSUB.F32        S0, S2, S0
43A290:  VSTR            S0, [R0,#4]
43A294:  VCMPE.F32       S0, #0.0
43A298:  VMRS            APSR_nzcv, FPSCR
43A29C:  BGT             loc_43A2BA
43A29E:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x43A2AA)
43A2A0:  MOVS            R3, #0
43A2A2:  LDR             R1, =(BigMessageAlpha_ptr - 0x43A2AC)
43A2A4:  LDR             R2, =(BigMessageInUse_ptr - 0x43A2AE)
43A2A6:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
43A2A8:  ADD             R1, PC; BigMessageAlpha_ptr
43A2AA:  ADD             R2, PC; BigMessageInUse_ptr
43A2AC:  LDR             R0, [R0]; CHud::m_BigMessage ...
43A2AE:  LDR             R1, [R1]; BigMessageAlpha ; signed __int8
43A2B0:  LDR             R2, [R2]; BigMessageInUse
43A2B2:  STRH.W          R3, [R0,#(word_99106C - 0x990F6C)]
43A2B6:  STR             R3, [R1,#(dword_992020 - 0x99201C)]
43A2B8:  STR             R3, [R2,#(dword_991FE0 - 0x991FDC)]
43A2BA:  MOVS            R0, #(stderr+2); this
43A2BC:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
43A2C0:  LDR             R0, =(BigMessageAlpha_ptr - 0x43A2CC)
43A2C2:  MOVS            R1, #0; unsigned __int8
43A2C4:  MOVS            R2, #0; unsigned __int8
43A2C6:  MOVS            R3, #0; unsigned __int8
43A2C8:  ADD             R0, PC; BigMessageAlpha_ptr
43A2CA:  LDR             R4, [R0]; BigMessageAlpha
43A2CC:  VLDR            S0, [R4,#4]
43A2D0:  VCVT.U32.F32    S0, S0
43A2D4:  VMOV            R0, S0
43A2D8:  STR             R0, [SP,#0x18+var_18]; unsigned __int8
43A2DA:  ADD             R0, SP, #0x18+var_C; this
43A2DC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43A2E0:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
43A2E4:  VLDR            S0, [R4,#4]
43A2E8:  ADD             R4, SP, #0x18+var_10
43A2EA:  LDR             R0, =(HudColour_ptr - 0x43A2F6)
43A2EC:  MOVS            R2, #7; unsigned __int8
43A2EE:  VCVT.U32.F32    S0, S0
43A2F2:  ADD             R0, PC; HudColour_ptr
43A2F4:  LDR             R1, [R0]; HudColour ; unsigned __int8
43A2F6:  MOV             R0, R4; this
43A2F8:  VMOV            R3, S0
43A2FC:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
43A300:  MOV             R0, R4
43A302:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
43A306:  LDR             R0, =(RsGlobal_ptr - 0x43A314)
43A308:  VMOV.F32        S8, #20.0
43A30C:  VLDR            S4, =-448.0
43A310:  ADD             R0, PC; RsGlobal_ptr
43A312:  VLDR            S6, =-640.0
43A316:  VLDR            S10, =115.0
43A31A:  LDR             R0, [R0]; RsGlobal
43A31C:  LDR             R2, =(_ZN4CHud12m_BigMessageE_ptr - 0x43A326)
43A31E:  VLDR            S2, [R0,#8]
43A322:  ADD             R2, PC; _ZN4CHud12m_BigMessageE_ptr
43A324:  VLDR            S0, [R0,#4]
43A328:  VCVT.F32.S32    S2, S2
43A32C:  LDR             R2, [R2]; CHud::m_BigMessage ...
43A32E:  VCVT.F32.S32    S0, S0
43A332:  ADD.W           R2, R2, #0x100; float
43A336:  VDIV.F32        S4, S2, S4
43A33A:  VDIV.F32        S6, S0, S6
43A33E:  VMUL.F32        S4, S4, S10
43A342:  VLDR            S10, =-0.0
43A346:  VMUL.F32        S6, S6, S8
43A34A:  VMUL.F32        S10, S0, S10
43A34E:  VADD.F32        S2, S2, S4
43A352:  VADD.F32        S4, S0, S10
43A356:  VADD.F32        S0, S0, S6
43A35A:  VMOV            R1, S2; float
43A35E:  VMIN.F32        D0, D0, D2
43A362:  VMOV            R0, S0; this
43A366:  BLX             j__ZN5CFont21PrintStringFromBottomEffPt; CFont::PrintStringFromBottom(float,float,ushort *)
43A36A:  MOVS            R0, #0; this
43A36C:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
43A370:  ADD             SP, SP, #0x10
43A372:  POP             {R4,R6,R7,PC}
