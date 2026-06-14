; =========================================================
; Game Engine Function: _ZN12CMenuManager17DrawStandardMenusEh
; Address            : 0x42F148 - 0x431438
; =========================================================

42F148:  PUSH            {R4-R7,LR}
42F14A:  ADD             R7, SP, #0xC
42F14C:  PUSH.W          {R8-R11}
42F150:  SUB             SP, SP, #4
42F152:  VPUSH           {D8-D15}
42F156:  SUB.W           SP, SP, #0x250
42F15A:  MOV             R5, R1
42F15C:  MOV             R8, R0
42F15E:  MOVS            R0, #0; this
42F160:  MOVS            R1, #0; unsigned __int8
42F162:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
42F166:  MOVS            R0, #(stderr+1); this
42F168:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
42F16C:  MOVS            R0, #(stderr+1); this
42F16E:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
42F172:  LDR.W           R0, =(RsGlobal_ptr - 0x42F17A)
42F176:  ADD             R0, PC; RsGlobal_ptr
42F178:  LDR             R6, [R0]; RsGlobal
42F17A:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
42F17C:  SUBS            R0, #0xA
42F17E:  VMOV            S0, R0
42F182:  VCVT.F32.S32    S0, S0
42F186:  VMOV            R0, S0; this
42F18A:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
42F18E:  MOVS            R0, #0x41200000; this
42F194:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
42F198:  LDR             R0, [R6,#(dword_9FC900 - 0x9FC8FC)]
42F19A:  VMOV            S0, R0
42F19E:  VCVT.F32.S32    S0, S0
42F1A2:  VMOV            R0, S0; this
42F1A6:  BLX             j__ZN5CFont13SetCentreSizeEf; CFont::SetCentreSize(float)
42F1AA:  CMP             R5, #0
42F1AC:  BEQ             loc_42F2AA
42F1AE:  LDRSB.W         R0, [R8,#0x121]
42F1B2:  MOVS            R2, #0xE2
42F1B4:  LDR.W           R1, =(aScreens_ptr - 0x42F1BC)
42F1B8:  ADD             R1, PC; aScreens_ptr
42F1BA:  SMULBB.W        R2, R0, R2
42F1BE:  LDR             R1, [R1]; "FEP_STA" ...
42F1C0:  LDRB            R1, [R1,R2]; unsigned __int8
42F1C2:  CMP             R1, #0
42F1C4:  BEQ             loc_42F2AA
42F1C6:  UXTB            R0, R0
42F1C8:  CMP             R0, #5
42F1CA:  BNE             loc_42F1D4
42F1CC:  LDRB.W          R0, [R8,#0x3D]
42F1D0:  CMP             R0, #0
42F1D2:  BNE             loc_42F2AA
42F1D4:  MOVS            R0, #(stderr+1); this
42F1D6:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
42F1DA:  MOVS            R0, #0; this
42F1DC:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
42F1E0:  LDR.W           R0, =(RsGlobal_ptr - 0x42F1EC)
42F1E4:  VLDR            S2, =0.0046875
42F1E8:  ADD             R0, PC; RsGlobal_ptr
42F1EA:  LDR             R5, [R0]; RsGlobal
42F1EC:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
42F1EE:  CMP.W           R0, #0x1C0
42F1F2:  VMOV            S0, R0
42F1F6:  VCVT.F32.S32    S0, S0
42F1FA:  VMUL.F32        S0, S0, S2
42F1FE:  VLDR            S2, =2.1
42F202:  IT EQ
42F204:  VMOVEQ.F32      S0, S2
42F208:  VMOV            R0, S0; this
42F20C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
42F210:  MOVS            R0, #(stderr+1); this
42F212:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
42F216:  LDR.W           R0, =(HudColour_ptr - 0x42F222)
42F21A:  ADD             R4, SP, #0x2B0+var_E4
42F21C:  MOVS            R2, #3
42F21E:  ADD             R0, PC; HudColour_ptr
42F220:  LDR             R6, [R0]; HudColour
42F222:  MOV             R0, R4; this
42F224:  MOV             R1, R6; unsigned __int8
42F226:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
42F22A:  MOV             R0, R4
42F22C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
42F230:  ADD             R4, SP, #0x2B0+var_E8
42F232:  MOV             R1, R6; unsigned __int8
42F234:  MOVS            R2, #6
42F236:  MOV             R0, R4; this
42F238:  BLX             j__ZN11CHudColours7GetRGBAEh; CHudColours::GetRGBA(uchar)
42F23C:  MOV             R0, R4
42F23E:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
42F242:  LDR.W           R0, =(aScreens_ptr - 0x42F250)
42F246:  MOVS            R3, #0xE2
42F248:  LDRSB.W         R1, [R8,#0x121]
42F24C:  ADD             R0, PC; aScreens_ptr
42F24E:  LDR.W           R2, =(TheText_ptr - 0x42F25C)
42F252:  LDRD.W          R6, R5, [R5,#(dword_9FC900 - 0x9FC8FC)]
42F256:  LDR             R0, [R0]; "FEP_STA" ...
42F258:  ADD             R2, PC; TheText_ptr
42F25A:  SMLABB.W        R1, R1, R3, R0; CKeyGen *
42F25E:  LDR             R0, [R2]; TheText ; this
42F260:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42F264:  VMOV            S0, R6
42F268:  VLDR            S4, =0.0625
42F26C:  VMOV            S2, R5
42F270:  CMP.W           R6, #0x280
42F274:  VCVT.F32.S32    S0, S0
42F278:  MOV             R2, R0; CFont *
42F27A:  VCVT.F32.S32    S2, S2
42F27E:  VMOV.F32        S6, #28.0
42F282:  VMUL.F32        S0, S0, S4
42F286:  VMUL.F32        S2, S2, S4
42F28A:  VLDR            S4, =40.0
42F28E:  IT EQ
42F290:  VMOVEQ.F32      S0, S4
42F294:  CMP.W           R5, #0x1C0
42F298:  IT EQ
42F29A:  VMOVEQ.F32      S2, S6
42F29E:  VMOV            R0, S0; this
42F2A2:  VMOV            R1, S2; float
42F2A6:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
42F2AA:  LDR.W           R1, =(aScreens_ptr - 0x42F2B8)
42F2AE:  MOVS            R2, #0xE2
42F2B0:  LDRSB.W         R0, [R8,#0x121]
42F2B4:  ADD             R1, PC; aScreens_ptr
42F2B6:  LDR             R1, [R1]; "FEP_STA" ...
42F2B8:  SMLABB.W        R1, R0, R2, R1
42F2BC:  LDRB            R1, [R1,#0xA]; float
42F2BE:  CMP             R1, #1
42F2C0:  BNE.W           loc_42F392
42F2C4:  LDR.W           R0, =(RsGlobal_ptr - 0x42F2CC)
42F2C8:  ADD             R0, PC; RsGlobal_ptr
42F2CA:  LDR             R5, [R0]; RsGlobal
42F2CC:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
42F2CE:  SUBS            R0, #0x28 ; '('
42F2D0:  VMOV            S0, R0
42F2D4:  VCVT.F32.S32    S0, S0
42F2D8:  VMOV            R0, S0; this
42F2DC:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
42F2E0:  MOVS            R0, #(stderr+1); this
42F2E2:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
42F2E6:  LDR             R0, [R5,#(dword_9FC904 - 0x9FC8FC)]
42F2E8:  VLDR            S2, =0.0026786
42F2EC:  CMP.W           R0, #0x1C0
42F2F0:  VMOV            S0, R0
42F2F4:  VCVT.F32.S32    S0, S0
42F2F8:  VMUL.F32        S0, S0, S2
42F2FC:  VLDR            S2, =1.2
42F300:  IT EQ
42F302:  VMOVEQ.F32      S0, S2
42F306:  VMOV            R0, S0; this
42F30A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
42F30E:  MOVS            R0, #(stderr+1); this
42F310:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
42F314:  MOVS            R0, #(stderr+2); this
42F316:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
42F31A:  ADD             R0, SP, #0x2B0+var_EC; this
42F31C:  MOVS            R5, #0xFF
42F31E:  MOVS            R1, #0; unsigned __int8
42F320:  MOVS            R2, #0; unsigned __int8
42F322:  MOVS            R3, #0; unsigned __int8
42F324:  STR             R5, [SP,#0x2B0+var_2B0]; unsigned __int8
42F326:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42F32A:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
42F32E:  ADD             R0, SP, #0x2B0+var_F0; this
42F330:  MOVS            R1, #0x4A ; 'J'; unsigned __int8
42F332:  MOVS            R2, #0x5A ; 'Z'; unsigned __int8
42F334:  MOVS            R3, #0x6B ; 'k'; unsigned __int8
42F336:  STR             R5, [SP,#0x2B0+var_2B0]; unsigned __int8
42F338:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42F33C:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
42F340:  LDRSB.W         R0, [R8,#0x121]
42F344:  SUBS            R2, R0, #6; switch 30 cases
42F346:  CMP             R2, #0x1D
42F348:  BHI             def_42F356; jumptable 0042F356 default case, cases 7-10,13-16,18-34
42F34A:  LDR.W           R1, =(aScreens_ptr - 0x42F352)
42F34E:  ADD             R1, PC; aScreens_ptr
42F350:  LDR             R1, [R1]; "FEP_STA" ...
42F352:  ADDW            R1, R1, #0xAA3
42F356:  TBB.W           [PC,R2]; switch jump
42F35A:  DCB 0xF; jump table for switch statement
42F35B:  DCB 0x1E
42F35C:  DCB 0x1E
42F35D:  DCB 0x1E
42F35E:  DCB 0x1E
42F35F:  DCB 0x28
42F360:  DCB 0x88
42F361:  DCB 0x1E
42F362:  DCB 0x1E
42F363:  DCB 0x1E
42F364:  DCB 0x1E
42F365:  DCB 0x35
42F366:  DCB 0x1E
42F367:  DCB 0x1E
42F368:  DCB 0x1E
42F369:  DCB 0x1E
42F36A:  DCB 0x1E
42F36B:  DCB 0x1E
42F36C:  DCB 0x1E
42F36D:  DCB 0x1E
42F36E:  DCB 0x1E
42F36F:  DCB 0x1E
42F370:  DCB 0x1E
42F371:  DCB 0x1E
42F372:  DCB 0x1E
42F373:  DCB 0x1E
42F374:  DCB 0x1E
42F375:  DCB 0x1E
42F376:  DCB 0x1E
42F377:  DCB 0x7B
42F378:  LDR.W           R0, =(aScreens_ptr - 0x42F388); jumptable 0042F356 case 6
42F37C:  ADR.W           R1, aFeszQq; "FESZ_QQ"
42F380:  LDRB.W          R2, [R8,#0xAD]
42F384:  ADD             R0, PC; aScreens_ptr
42F386:  CMP             R2, #0
42F388:  LDR             R0, [R0]; "FEP_STA" ...
42F38A:  IT EQ
42F38C:  ADDWEQ          R1, R0, #0x557
42F390:  B               loc_42F46A; jumptable 0042F356 case 12
42F392:  UXTB            R0, R0
42F394:  B               loc_42F4EE
42F396:  LDR.W           R1, =(aScreens_ptr - 0x42F3A0); jumptable 0042F356 default case, cases 7-10,13-16,18-34
42F39A:  MOVS            R2, #0xE2
42F39C:  ADD             R1, PC; aScreens_ptr
42F39E:  LDR             R1, [R1]; "FEP_STA" ...
42F3A0:  SMLABB.W        R0, R0, R2, R1
42F3A4:  ADD.W           R1, R0, #0xB
42F3A8:  B               loc_42F46A; jumptable 0042F356 case 12
42F3AA:  LDR.W           R0, =(aScreens_ptr - 0x42F3BA); jumptable 0042F356 case 11
42F3AE:  ADR.W           R1, aFesLcg; "FES_LCG"
42F3B2:  LDRB.W          R2, [R8,#0xAD]
42F3B6:  ADD             R0, PC; aScreens_ptr
42F3B8:  CMP             R2, #0
42F3BA:  LDR             R0, [R0]; "FEP_STA" ...
42F3BC:  IT EQ
42F3BE:  ADDWEQ          R1, R0, #0x9C1
42F3C2:  B               loc_42F46A; jumptable 0042F356 case 12
42F3C4:  LDR.W           R0, =(gMobileMenu_ptr - 0x42F3D4); jumptable 0042F356 case 17
42F3C8:  ADR.W           R3, aFeszQc; "FESZ_QC"
42F3CC:  LDR.W           R1, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x42F3DA)
42F3D0:  ADD             R0, PC; gMobileMenu_ptr
42F3D2:  LDR.W           R2, =(aScreens_ptr - 0x42F3DE)
42F3D6:  ADD             R1, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
42F3D8:  LDR             R0, [R0]; gMobileMenu
42F3DA:  ADD             R2, PC; aScreens_ptr
42F3DC:  LDR             R1, [R1]; CGenericGameStorage::ms_Slots ...
42F3DE:  LDR             R2, [R2]; "FEP_STA" ...
42F3E0:  LDR             R0, [R0,#(dword_6E00BC - 0x6E006C)]
42F3E2:  LDR.W           R0, [R1,R0,LSL#2]
42F3E6:  ADR.W           R1, aFeszQo_0; "FESZ_QO"
42F3EA:  CMP             R0, #2
42F3EC:  IT NE
42F3EE:  ADDWNE          R3, R2, #0xF0D
42F3F2:  CMP             R0, #0
42F3F4:  IT NE
42F3F6:  MOVNE           R1, R3
42F3F8:  B               loc_42F46A; jumptable 0042F356 case 12
42F3FA:  ALIGN 4
42F3FC:  DCFS 0.0046875
42F400:  DCFS 2.1
42F404:  DCFS 0.0625
42F408:  DCFS 40.0
42F40C:  DCFS 0.0026786
42F410:  DCFS 1.2
42F414:  DCFS 0.09375
42F418:  DCFS 0.21652
42F41C:  DCFS 60.0
42F420:  DCFS 97.0
42F424:  DCFS 0.0
42F428:  DCFS 0.0021205
42F42C:  DCFS 0.95
42F430:  DCFS 448.0
42F434:  DCFS 640.0
42F438:  DCFS 0.05
42F43C:  DCFS 0.073437
42F440:  DCFS 0.0078125
42F444:  DCFS 32.0
42F448:  DCFS 47.0
42F44C:  DCFS 70.0
42F450:  LDR.W           R0, =(aScreens_ptr - 0x42F464); jumptable 0042F356 case 35
42F454:  ADR.W           R1, aFeqSrw; "FEQ_SRW"
42F458:  LDRB.W          R3, [R8,#0xAD]
42F45C:  MOVW            R2, #0x1EF1
42F460:  ADD             R0, PC; aScreens_ptr
42F462:  CMP             R3, #0
42F464:  LDR             R0, [R0]; "FEP_STA" ...
42F466:  IT EQ
42F468:  ADDEQ           R1, R0, R2; CKeyGen *
42F46A:  LDR.W           R0, =(TheText_ptr - 0x42F472); jumptable 0042F356 case 12
42F46E:  ADD             R0, PC; TheText_ptr
42F470:  LDR             R0, [R0]; TheText ; this
42F472:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42F476:  MOV             R2, R0; CFont *
42F478:  LDR.W           R0, =(RsGlobal_ptr - 0x42F484)
42F47C:  VLDR            S4, =0.09375
42F480:  ADD             R0, PC; RsGlobal_ptr
42F482:  VLDR            S6, =0.21652
42F486:  LDR             R5, [R0]; RsGlobal
42F488:  LDRD.W          R0, R1, [R5,#(dword_9FC900 - 0x9FC8FC)]
42F48C:  VMOV            S2, R1
42F490:  CMP.W           R0, #0x280
42F494:  VMOV            S0, R0
42F498:  VCVT.F32.S32    S0, S0
42F49C:  VCVT.F32.S32    S2, S2
42F4A0:  VMUL.F32        S0, S0, S4
42F4A4:  VLDR            S4, =60.0
42F4A8:  VMUL.F32        S2, S2, S6
42F4AC:  VLDR            S6, =97.0
42F4B0:  IT EQ
42F4B2:  VMOVEQ.F32      S0, S4
42F4B6:  CMP.W           R1, #0x1C0
42F4BA:  IT EQ
42F4BC:  VMOVEQ.F32      S2, S6
42F4C0:  VMOV            R0, S0; this
42F4C4:  VMOV            R1, S2; float
42F4C8:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
42F4CC:  LDR             R0, [R5,#(dword_9FC900 - 0x9FC8FC)]
42F4CE:  SUBS            R0, #0xA
42F4D0:  VMOV            S0, R0
42F4D4:  VCVT.F32.S32    S0, S0
42F4D8:  VMOV            R0, S0; this
42F4DC:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
42F4E0:  MOVS            R0, #0x41200000; this
42F4E6:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
42F4EA:  LDRB.W          R0, [R8,#0x121]
42F4EE:  MOVS            R1, #0
42F4F0:  MOV.W           R11, #0
42F4F4:  CMP             R0, #0x27 ; '''
42F4F6:  STR             R1, [SP,#0x2B0+var_180]
42F4F8:  BNE             loc_42F518
42F4FA:  MOVW            R0, #0x1ACD
42F4FE:  MOV             R1, #0xFFFFFFF8; int
42F502:  LDRB.W          R5, [R8,R0]
42F506:  MOV             R0, R8; this
42F508:  BLX             j__ZN12CMenuManager28DrawContollerScreenExtraTextEi; CMenuManager::DrawContollerScreenExtraText(int)
42F50C:  LDRB.W          R0, [R8,#0x121]
42F510:  CMP             R5, #0
42F512:  IT NE
42F514:  MOVNE           R5, #1
42F516:  STR             R5, [SP,#0x2B0+var_180]
42F518:  LDR.W           R1, =(aScreens_ptr - 0x42F52A)
42F51C:  SXTB            R2, R0
42F51E:  MOV.W           R9, #0xE2
42F522:  LDR.W           R3, =(gString_ptr - 0x42F530)
42F526:  ADD             R1, PC; aScreens_ptr
42F528:  VMOV.F32        S30, #-0.5
42F52C:  ADD             R3, PC; gString_ptr
42F52E:  VMOV.F32        S29, #5.0
42F532:  LDR             R1, [R1]; "FEP_STA" ...
42F534:  VMOV.F32        S27, #0.78125
42F538:  VLDR            S16, =0.0
42F53C:  SUB.W           R10, R8, #0xE6
42F540:  SMLABB.W        R1, R2, R9, R1
42F544:  MOVW            R2, #0x1AC4
42F548:  ADD             R2, R8
42F54A:  STR             R2, [SP,#0x2B0+var_1C4]
42F54C:  MOVW            R2, #0x1ADC
42F550:  VLDR            S18, =0.0021205
42F554:  ADD             R2, R8
42F556:  STR             R2, [SP,#0x2B0+var_1C8]
42F558:  ADD.W           R2, R8, #0xBC
42F55C:  STR             R2, [SP,#0x2B0+var_270]
42F55E:  LDRB            R1, [R1,#0xA]
42F560:  MOVS            R4, #0
42F562:  LDR.W           R2, =(aScreens_ptr - 0x42F574)
42F566:  EOR.W           R1, R1, #1
42F56A:  STR             R1, [SP,#0x2B0+var_14C]
42F56C:  LDR.W           R1, =(aScreens_ptr - 0x42F57A)
42F570:  ADD             R2, PC; aScreens_ptr
42F572:  VLDR            S20, =0.95
42F576:  ADD             R1, PC; aScreens_ptr
42F578:  LDR             R6, [R2]; "FEP_STA" ...
42F57A:  LDR.W           R2, =(RsGlobal_ptr - 0x42F586)
42F57E:  LDR             R1, [R1]; "FEP_STA" ...
42F580:  STR             R1, [SP,#0x2B0+var_150]
42F582:  ADD             R2, PC; RsGlobal_ptr
42F584:  LDR.W           R1, =(aScreens_ptr - 0x42F58E)
42F588:  LDR             R2, [R2]; RsGlobal
42F58A:  ADD             R1, PC; aScreens_ptr
42F58C:  STR             R2, [SP,#0x2B0+var_158]
42F58E:  LDR.W           R2, =(aScreens_ptr - 0x42F59A)
42F592:  LDR             R1, [R1]; "FEP_STA" ...
42F594:  STR             R1, [SP,#0x2B0+var_178]
42F596:  ADD             R2, PC; aScreens_ptr
42F598:  LDR.W           R1, =(aScreens_ptr - 0x42F5A2)
42F59C:  LDR             R2, [R2]; "FEP_STA" ...
42F59E:  ADD             R1, PC; aScreens_ptr
42F5A0:  STR             R2, [SP,#0x2B0+var_184]
42F5A2:  LDR.W           R2, =(aScreens_ptr - 0x42F5AE)
42F5A6:  LDR             R1, [R1]; "FEP_STA" ...
42F5A8:  STR             R1, [SP,#0x2B0+var_13C]
42F5AA:  ADD             R2, PC; aScreens_ptr
42F5AC:  LDR.W           R1, =(aScreens_ptr - 0x42F5B6)
42F5B0:  LDR             R2, [R2]; "FEP_STA" ...
42F5B2:  ADD             R1, PC; aScreens_ptr
42F5B4:  STR             R2, [SP,#0x2B0+var_134]
42F5B6:  LDR.W           R2, =(aScreens_ptr - 0x42F5C2)
42F5BA:  LDR             R1, [R1]; "FEP_STA" ...
42F5BC:  STR             R1, [SP,#0x2B0+var_154]
42F5BE:  ADD             R2, PC; aScreens_ptr
42F5C0:  LDR.W           R1, =(aScreens_ptr - 0x42F5CA)
42F5C4:  LDR             R2, [R2]; "FEP_STA" ...
42F5C6:  ADD             R1, PC; aScreens_ptr
42F5C8:  STR             R2, [SP,#0x2B0+var_138]
42F5CA:  LDR.W           R2, =(aScreens_ptr - 0x42F5D6)
42F5CE:  LDR             R1, [R1]; "FEP_STA" ...
42F5D0:  STR             R1, [SP,#0x2B0+var_168]
42F5D2:  ADD             R2, PC; aScreens_ptr
42F5D4:  LDR.W           R1, =(aScreens_ptr - 0x42F5DE)
42F5D8:  LDR             R2, [R2]; "FEP_STA" ...
42F5DA:  ADD             R1, PC; aScreens_ptr
42F5DC:  STR             R2, [SP,#0x2B0+var_164]
42F5DE:  LDR.W           R2, =(TheText_ptr - 0x42F5EA)
42F5E2:  LDR             R1, [R1]; "FEP_STA" ...
42F5E4:  STR             R1, [SP,#0x2B0+var_1A8]
42F5E6:  ADD             R2, PC; TheText_ptr
42F5E8:  LDR.W           R1, =(PcSaveHelper_ptr - 0x42F5F4)
42F5EC:  VLDR            S22, =0.0625
42F5F0:  ADD             R1, PC; PcSaveHelper_ptr
42F5F2:  VLDR            S28, =448.0
42F5F6:  VLDR            S23, =640.0
42F5FA:  LDR             R1, [R1]; PcSaveHelper
42F5FC:  STR             R1, [SP,#0x2B0+var_228]
42F5FE:  LDR.W           R1, =(_ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x42F60A)
42F602:  VLDR            S21, =40.0
42F606:  ADD             R1, PC; _ZN19CGenericGameStorage8ms_SlotsE_ptr
42F608:  VLDR            S19, =0.05
42F60C:  VLDR            S31, =0.073437
42F610:  LDR             R1, [R1]; CGenericGameStorage::ms_Slots ...
42F612:  STR             R1, [SP,#0x2B0+var_1AC]
42F614:  LDR.W           R1, =(TheText_ptr - 0x42F620)
42F618:  VLDR            S17, =0.0078125
42F61C:  ADD             R1, PC; TheText_ptr
42F61E:  VLDR            S25, =32.0
42F622:  VLDR            S26, =47.0
42F626:  LDR             R1, [R1]; TheText
42F628:  STR             R1, [SP,#0x2B0+var_1F8]
42F62A:  LDR.W           R1, =(gString_ptr - 0x42F636)
42F62E:  VLDR            S24, =70.0
42F632:  ADD             R1, PC; gString_ptr
42F634:  STR             R6, [SP,#0x2B0+var_160]
42F636:  LDR             R1, [R1]; gString
42F638:  STR             R1, [SP,#0x2B0+var_21C]
42F63A:  LDR.W           R1, =(gString_ptr - 0x42F642)
42F63E:  ADD             R1, PC; gString_ptr
42F640:  LDR             R1, [R1]; gString
42F642:  STR             R1, [SP,#0x2B0+var_220]
42F644:  LDR.W           R1, =(aScreens_ptr - 0x42F64C)
42F648:  ADD             R1, PC; aScreens_ptr
42F64A:  LDR             R1, [R1]; "FEP_STA" ...
42F64C:  STR             R1, [SP,#0x2B0+var_1CC]
42F64E:  LDR             R1, [R2]; TheText
42F650:  STR             R1, [SP,#0x2B0+var_1D0]
42F652:  LDR             R1, [R3]; gString
42F654:  STR             R1, [SP,#0x2B0+var_1D4]
42F656:  LDR.W           R1, =(RsGlobal_ptr - 0x42F662)
42F65A:  LDR.W           R2, =(aScreens_ptr - 0x42F664)
42F65E:  ADD             R1, PC; RsGlobal_ptr
42F660:  ADD             R2, PC; aScreens_ptr
42F662:  LDR             R1, [R1]; RsGlobal
42F664:  STR             R1, [SP,#0x2B0+var_1D8]
42F666:  LDR.W           R1, =(gString_ptr - 0x42F66E)
42F66A:  ADD             R1, PC; gString_ptr
42F66C:  LDR             R1, [R1]; gString
42F66E:  STR             R1, [SP,#0x2B0+var_1F4]
42F670:  LDR.W           R1, =(CloudColor_ptr - 0x42F678)
42F674:  ADD             R1, PC; CloudColor_ptr
42F676:  LDR             R1, [R1]; CloudColor
42F678:  STR             R1, [SP,#0x2B0+var_218]
42F67A:  LDR.W           R1, =(gGxtString2_ptr - 0x42F682)
42F67E:  ADD             R1, PC; gGxtString2_ptr
42F680:  LDR             R1, [R1]; gGxtString2
42F682:  STR             R1, [SP,#0x2B0+var_224]
42F684:  LDR.W           R1, =(aScreens_ptr - 0x42F68C)
42F688:  ADD             R1, PC; aScreens_ptr
42F68A:  LDR             R1, [R1]; "FEP_STA" ...
42F68C:  STR             R1, [SP,#0x2B0+var_16C]
42F68E:  LDR.W           R1, =(aScreens_ptr - 0x42F696)
42F692:  ADD             R1, PC; aScreens_ptr
42F694:  LDR             R1, [R1]; "FEP_STA" ...
42F696:  STR             R1, [SP,#0x2B0+var_188]
42F698:  LDR.W           R1, =(RsGlobal_ptr - 0x42F6A0)
42F69C:  ADD             R1, PC; RsGlobal_ptr
42F69E:  LDR             R1, [R1]; RsGlobal
42F6A0:  STR             R1, [SP,#0x2B0+var_18C]
42F6A2:  LDR.W           R1, =(aScreens_ptr - 0x42F6AA)
42F6A6:  ADD             R1, PC; aScreens_ptr
42F6A8:  LDR             R1, [R1]; "FEP_STA" ...
42F6AA:  STR             R1, [SP,#0x2B0+var_190]
42F6AC:  LDR.W           R1, =(RsGlobal_ptr - 0x42F6B4)
42F6B0:  ADD             R1, PC; RsGlobal_ptr
42F6B2:  LDR             R1, [R1]; RsGlobal
42F6B4:  STR             R1, [SP,#0x2B0+var_194]
42F6B6:  LDR.W           R1, =(aScreens_ptr - 0x42F6BE)
42F6BA:  ADD             R1, PC; aScreens_ptr
42F6BC:  LDR             R1, [R1]; "FEP_STA" ...
42F6BE:  STR             R1, [SP,#0x2B0+var_23C]
42F6C0:  LDR.W           R1, =(RsGlobal_ptr - 0x42F6C8)
42F6C4:  ADD             R1, PC; RsGlobal_ptr
42F6C6:  LDR             R1, [R1]; RsGlobal
42F6C8:  STR             R1, [SP,#0x2B0+var_27C]
42F6CA:  LDR.W           R1, =(aScreens_ptr - 0x42F6D2)
42F6CE:  ADD             R1, PC; aScreens_ptr
42F6D0:  LDR             R1, [R1]; "FEP_STA" ...
42F6D2:  STR             R1, [SP,#0x2B0+var_280]
42F6D4:  LDR.W           R1, =(RsGlobal_ptr - 0x42F6DC)
42F6D8:  ADD             R1, PC; RsGlobal_ptr
42F6DA:  LDR             R1, [R1]; RsGlobal
42F6DC:  STR             R1, [SP,#0x2B0+var_284]
42F6DE:  LDR.W           R1, =(aScreens_ptr - 0x42F6E6)
42F6E2:  ADD             R1, PC; aScreens_ptr
42F6E4:  LDR             R1, [R1]; "FEP_STA" ...
42F6E6:  STR             R1, [SP,#0x2B0+var_288]
42F6E8:  LDR.W           R1, =(RsGlobal_ptr - 0x42F6F0)
42F6EC:  ADD             R1, PC; RsGlobal_ptr
42F6EE:  LDR             R1, [R1]; RsGlobal
42F6F0:  STR             R1, [SP,#0x2B0+var_28C]
42F6F2:  LDR.W           R1, =(aScreens_ptr - 0x42F6FA)
42F6F6:  ADD             R1, PC; aScreens_ptr
42F6F8:  LDR             R1, [R1]; "FEP_STA" ...
42F6FA:  STR             R1, [SP,#0x2B0+var_290]
42F6FC:  LDR.W           R1, =(RsGlobal_ptr - 0x42F704)
42F700:  ADD             R1, PC; RsGlobal_ptr
42F702:  LDR             R1, [R1]; RsGlobal
42F704:  STR             R1, [SP,#0x2B0+var_274]
42F706:  LDR.W           R1, =(aScreens_ptr - 0x42F70E)
42F70A:  ADD             R1, PC; aScreens_ptr
42F70C:  LDR             R1, [R1]; "FEP_STA" ...
42F70E:  STR             R1, [SP,#0x2B0+var_278]
42F710:  LDR.W           R1, =(aScreens_ptr - 0x42F718)
42F714:  ADD             R1, PC; aScreens_ptr
42F716:  LDR             R1, [R1]; "FEP_STA" ...
42F718:  STR             R1, [SP,#0x2B0+var_1B0]
42F71A:  LDR.W           R1, =(aScreens_ptr - 0x42F722)
42F71E:  ADD             R1, PC; aScreens_ptr
42F720:  LDR             R1, [R1]; "FEP_STA" ...
42F722:  STR             R1, [SP,#0x2B0+var_1B4]
42F724:  LDR.W           R1, =(aScreens_ptr - 0x42F72C)
42F728:  ADD             R1, PC; aScreens_ptr
42F72A:  LDR             R1, [R1]; "FEP_STA" ...
42F72C:  STR             R1, [SP,#0x2B0+var_170]
42F72E:  LDR.W           R1, =(aScreens_ptr - 0x42F736)
42F732:  ADD             R1, PC; aScreens_ptr
42F734:  LDR             R1, [R1]; "FEP_STA" ...
42F736:  STR             R1, [SP,#0x2B0+var_174]
42F738:  LDR.W           R1, =(RsGlobal_ptr - 0x42F740)
42F73C:  ADD             R1, PC; RsGlobal_ptr
42F73E:  LDR             R1, [R1]; RsGlobal
42F740:  STR             R1, [SP,#0x2B0+var_1E0]
42F742:  LDR.W           R1, =(RsGlobal_ptr - 0x42F74A)
42F746:  ADD             R1, PC; RsGlobal_ptr
42F748:  LDR             R1, [R1]; RsGlobal
42F74A:  STR             R1, [SP,#0x2B0+var_208]
42F74C:  LDR.W           R1, =(RsGlobal_ptr - 0x42F754)
42F750:  ADD             R1, PC; RsGlobal_ptr
42F752:  LDR             R1, [R1]; RsGlobal
42F754:  STR             R1, [SP,#0x2B0+var_240]
42F756:  LDR.W           R1, =(RsGlobal_ptr - 0x42F75E)
42F75A:  ADD             R1, PC; RsGlobal_ptr
42F75C:  LDR             R1, [R1]; RsGlobal
42F75E:  STR             R1, [SP,#0x2B0+var_244]
42F760:  LDR.W           R1, =(RsGlobal_ptr - 0x42F768)
42F764:  ADD             R1, PC; RsGlobal_ptr
42F766:  LDR             R1, [R1]; RsGlobal
42F768:  STR             R1, [SP,#0x2B0+var_260]
42F76A:  LDR.W           R1, =(RsGlobal_ptr - 0x42F772)
42F76E:  ADD             R1, PC; RsGlobal_ptr
42F770:  LDR             R1, [R1]; RsGlobal
42F772:  STR             R1, [SP,#0x2B0+var_294]
42F774:  LDR.W           R1, =(RsGlobal_ptr - 0x42F77C)
42F778:  ADD             R1, PC; RsGlobal_ptr
42F77A:  LDR             R1, [R1]; RsGlobal
42F77C:  STR             R1, [SP,#0x2B0+var_1E4]
42F77E:  LDR.W           R1, =(RsGlobal_ptr - 0x42F786)
42F782:  ADD             R1, PC; RsGlobal_ptr
42F784:  LDR             R1, [R1]; RsGlobal
42F786:  STR             R1, [SP,#0x2B0+var_20C]
42F788:  LDR.W           R1, =(RsGlobal_ptr - 0x42F790)
42F78C:  ADD             R1, PC; RsGlobal_ptr
42F78E:  LDR             R1, [R1]; RsGlobal
42F790:  STR             R1, [SP,#0x2B0+var_248]
42F792:  LDR.W           R1, =(RsGlobal_ptr - 0x42F79A)
42F796:  ADD             R1, PC; RsGlobal_ptr
42F798:  LDR             R1, [R1]; RsGlobal
42F79A:  STR             R1, [SP,#0x2B0+var_24C]
42F79C:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7A4)
42F7A0:  ADD             R1, PC; RsGlobal_ptr
42F7A2:  LDR             R1, [R1]; RsGlobal
42F7A4:  STR             R1, [SP,#0x2B0+var_264]
42F7A6:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7AE)
42F7AA:  ADD             R1, PC; RsGlobal_ptr
42F7AC:  LDR             R1, [R1]; RsGlobal
42F7AE:  STR             R1, [SP,#0x2B0+var_298]
42F7B0:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7B8)
42F7B4:  ADD             R1, PC; RsGlobal_ptr
42F7B6:  LDR             R1, [R1]; RsGlobal
42F7B8:  STR             R1, [SP,#0x2B0+var_1E8]
42F7BA:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7C2)
42F7BE:  ADD             R1, PC; RsGlobal_ptr
42F7C0:  LDR             R1, [R1]; RsGlobal
42F7C2:  STR             R1, [SP,#0x2B0+var_210]
42F7C4:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7CC)
42F7C8:  ADD             R1, PC; RsGlobal_ptr
42F7CA:  LDR             R1, [R1]; RsGlobal
42F7CC:  STR             R1, [SP,#0x2B0+var_250]
42F7CE:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7D6)
42F7D2:  ADD             R1, PC; RsGlobal_ptr
42F7D4:  LDR             R1, [R1]; RsGlobal
42F7D6:  STR             R1, [SP,#0x2B0+var_254]
42F7D8:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7E0)
42F7DC:  ADD             R1, PC; RsGlobal_ptr
42F7DE:  LDR             R1, [R1]; RsGlobal
42F7E0:  STR             R1, [SP,#0x2B0+var_268]
42F7E2:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7EA)
42F7E6:  ADD             R1, PC; RsGlobal_ptr
42F7E8:  LDR             R1, [R1]; RsGlobal
42F7EA:  STR             R1, [SP,#0x2B0+var_29C]
42F7EC:  LDR.W           R1, =(RsGlobal_ptr - 0x42F7F4)
42F7F0:  ADD             R1, PC; RsGlobal_ptr
42F7F2:  LDR             R1, [R1]; RsGlobal
42F7F4:  STR             R1, [SP,#0x2B0+var_1EC]
42F7F6:  LDR.W           R1, =(_ZN7CCamera20m_fMouseAccelHorzntlE_ptr - 0x42F7FE)
42F7FA:  ADD             R1, PC; _ZN7CCamera20m_fMouseAccelHorzntlE_ptr
42F7FC:  LDR             R1, [R1]; CCamera::m_fMouseAccelHorzntl ...
42F7FE:  STR             R1, [SP,#0x2B0+var_1F0]
42F800:  LDR.W           R1, =(RsGlobal_ptr - 0x42F808)
42F804:  ADD             R1, PC; RsGlobal_ptr
42F806:  LDR             R1, [R1]; RsGlobal
42F808:  STR             R1, [SP,#0x2B0+var_214]
42F80A:  LDR.W           R1, =(RsGlobal_ptr - 0x42F812)
42F80E:  ADD             R1, PC; RsGlobal_ptr
42F810:  LDR             R1, [R1]; RsGlobal
42F812:  STR             R1, [SP,#0x2B0+var_258]
42F814:  LDR.W           R1, =(RsGlobal_ptr - 0x42F81C)
42F818:  ADD             R1, PC; RsGlobal_ptr
42F81A:  LDR             R1, [R1]; RsGlobal
42F81C:  STR             R1, [SP,#0x2B0+var_25C]
42F81E:  LDR.W           R1, =(RsGlobal_ptr - 0x42F826)
42F822:  ADD             R1, PC; RsGlobal_ptr
42F824:  LDR             R1, [R1]; RsGlobal
42F826:  STR             R1, [SP,#0x2B0+var_26C]
42F828:  LDR.W           R1, =(aScreens_ptr - 0x42F830)
42F82C:  ADD             R1, PC; aScreens_ptr
42F82E:  LDR             R1, [R1]; "FEP_STA" ...
42F830:  STR             R1, [SP,#0x2B0+var_1B8]
42F832:  LDR.W           R1, =(aScreens_ptr - 0x42F83A)
42F836:  ADD             R1, PC; aScreens_ptr
42F838:  LDR             R1, [R1]; "FEP_STA" ...
42F83A:  STR             R1, [SP,#0x2B0+var_1BC]
42F83C:  LDR.W           R1, =(aScreens_ptr - 0x42F844)
42F840:  ADD             R1, PC; aScreens_ptr
42F842:  LDR             R1, [R1]; "FEP_STA" ...
42F844:  STR             R1, [SP,#0x2B0+var_1DC]
42F846:  LDR.W           R1, =(aScreens_ptr - 0x42F84E)
42F84A:  ADD             R1, PC; aScreens_ptr
42F84C:  LDR             R1, [R1]; "FEP_STA" ...
42F84E:  STR             R1, [SP,#0x2B0+var_1C0]
42F850:  LDR.W           R1, =(RsGlobal_ptr - 0x42F858)
42F854:  ADD             R1, PC; RsGlobal_ptr
42F856:  LDR             R1, [R1]; RsGlobal
42F858:  STR             R1, [SP,#0x2B0+var_198]
42F85A:  LDR             R1, [R2]; "FEP_STA" ...
42F85C:  STR             R1, [SP,#0x2B0+var_19C]
42F85E:  LDR.W           R1, =(RsGlobal_ptr - 0x42F866)
42F862:  ADD             R1, PC; RsGlobal_ptr
42F864:  LDR             R1, [R1]; RsGlobal
42F866:  STR             R1, [SP,#0x2B0+var_1A0]
42F868:  LDR.W           R1, =(aScreens_ptr - 0x42F870)
42F86C:  ADD             R1, PC; aScreens_ptr
42F86E:  LDR             R1, [R1]; "FEP_STA" ...
42F870:  STR             R1, [SP,#0x2B0+var_1A4]
42F872:  LDR.W           R1, =(TheText_ptr - 0x42F87A)
42F876:  ADD             R1, PC; TheText_ptr
42F878:  LDR             R1, [R1]; TheText
42F87A:  STR             R1, [SP,#0x2B0+var_230]
42F87C:  LDR.W           R1, =(TheText_ptr - 0x42F884)
42F880:  ADD             R1, PC; TheText_ptr
42F882:  LDR             R1, [R1]; TheText
42F884:  STR             R1, [SP,#0x2B0+var_234]
42F886:  LDR.W           R1, =(TheText_ptr - 0x42F88E)
42F88A:  ADD             R1, PC; TheText_ptr
42F88C:  LDR             R1, [R1]; TheText
42F88E:  STR             R1, [SP,#0x2B0+var_238]
42F890:  LDR.W           R1, =(aScreens_ptr - 0x42F898)
42F894:  ADD             R1, PC; aScreens_ptr
42F896:  LDR             R1, [R1]; "FEP_STA" ...
42F898:  STR             R1, [SP,#0x2B0+var_22C]
42F89A:  LDR.W           R1, =(gGxtString_ptr - 0x42F8A2)
42F89E:  ADD             R1, PC; gGxtString_ptr
42F8A0:  LDR             R1, [R1]; gGxtString
42F8A2:  STR             R1, [SP,#0x2B0+var_200]
42F8A4:  LDR.W           R1, =(aScreens_ptr - 0x42F8AC)
42F8A8:  ADD             R1, PC; aScreens_ptr
42F8AA:  LDR             R1, [R1]; "FEP_STA" ...
42F8AC:  STR             R1, [SP,#0x2B0+var_204]
42F8AE:  LDR.W           R1, =(TheText_ptr - 0x42F8B6)
42F8B2:  ADD             R1, PC; TheText_ptr
42F8B4:  LDR             R1, [R1]; TheText
42F8B6:  STR             R1, [SP,#0x2B0+var_1FC]
42F8B8:  LDR.W           R1, =(aScreens_ptr - 0x42F8C0)
42F8BC:  ADD             R1, PC; aScreens_ptr
42F8BE:  LDR             R1, [R1]; "FEP_STA" ...
42F8C0:  STR             R1, [SP,#0x2B0+var_140]
42F8C2:  LDR.W           R1, =(RsGlobal_ptr - 0x42F8CA)
42F8C6:  ADD             R1, PC; RsGlobal_ptr
42F8C8:  LDR             R1, [R1]; RsGlobal ; unsigned __int8
42F8CA:  STR             R1, [SP,#0x2B0+var_15C]
42F8CC:  B               loc_42F90E
42F8CE:  LDR.W           R0, =(TheText_ptr - 0x42F8DA)
42F8D2:  ADR.W           R1, aFetTch; "FET_TCH"
42F8D6:  ADD             R0, PC; TheText_ptr
42F8D8:  LDR             R0, [R0]; TheText
42F8DA:  B.W             loc_43053C
42F8DE:  LDR.W           R0, =(TheText_ptr - 0x42F8EA)
42F8E2:  ADR.W           R1, aFetCcn; "FET_CCN"
42F8E6:  ADD             R0, PC; TheText_ptr
42F8E8:  LDR             R0, [R0]; TheText
42F8EA:  B.W             loc_43053C
42F8EE:  LDR.W           R0, =(TheText_ptr - 0x42F8FA)
42F8F2:  ADR.W           R1, aFeaPr3; "FEA_PR3"
42F8F6:  ADD             R0, PC; TheText_ptr
42F8F8:  LDR             R0, [R0]; TheText
42F8FA:  B.W             loc_43053C
42F8FE:  LDR.W           R0, =(TheText_ptr - 0x42F90A)
42F902:  ADR.W           R1, aFeaPr2; "FEA_PR2"
42F906:  ADD             R0, PC; TheText_ptr
42F908:  LDR             R0, [R0]; TheText
42F90A:  B.W             loc_43053C
42F90E:  SXTB            R0, R0
42F910:  SMLABB.W        R0, R0, R9, R6
42F914:  ADD             R0, R11
42F916:  LDRB            R5, [R0,#0x13]
42F918:  MOVS            R0, #(stderr+2); this
42F91A:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
42F91E:  SUBS            R0, R5, #1
42F920:  UXTB            R0, R0
42F922:  CMP             R0, #9
42F924:  BHI             loc_42F956
42F926:  MOVS            R0, #(stderr+1); this
42F928:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
42F92C:  LDR             R0, [SP,#0x2B0+var_158]
42F92E:  LDR             R0, [R0,#8]
42F930:  CMP.W           R0, #0x1C0
42F934:  VMOV            S0, R0
42F938:  VCVT.F32.S32    S0, S0
42F93C:  VMUL.F32        S0, S0, S18
42F940:  IT EQ
42F942:  VMOVEQ.F32      S0, S20
42F946:  VMOV            R0, S0; this
42F94A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
42F94E:  MOVS            R0, #0xFF
42F950:  STR             R0, [SP,#0x2B0+var_2B0]
42F952:  ADD             R0, SP, #0x2B0+var_F4
42F954:  B               loc_42F98C
42F956:  LDR             R0, [SP,#0x2B0+var_15C]
42F958:  VLDR            S2, =0.0022321
42F95C:  LDR             R0, [R0,#8]
42F95E:  CMP.W           R0, #0x1C0
42F962:  VMOV            S0, R0
42F966:  VCVT.F32.S32    S0, S0
42F96A:  VMUL.F32        S0, S0, S2
42F96E:  VMOV.F32        S2, #1.0
42F972:  IT EQ
42F974:  VMOVEQ.F32      S0, S2
42F978:  VMOV            R0, S0; this
42F97C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
42F980:  MOVS            R0, #(stderr+2); this
42F982:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
42F986:  MOVS            R0, #0xFF
42F988:  STR             R0, [SP,#0x2B0+var_2B0]; unsigned __int8
42F98A:  ADD             R0, SP, #0x2B0+var_F8; this
42F98C:  MOVS            R1, #0; unsigned __int8
42F98E:  MOVS            R2, #0; unsigned __int8
42F990:  MOVS            R3, #0; unsigned __int8
42F992:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42F996:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
42F99A:  LDR.W           R0, [R8,#0x38]
42F99E:  CMP             R4, R0
42F9A0:  BNE             loc_42F9B6
42F9A2:  LDRB.W          R0, [R8,#0x3D]
42F9A6:  CBZ             R0, loc_42F9B6
42F9A8:  MOVS            R0, #0xFF
42F9AA:  MOVS            R1, #0xAC
42F9AC:  STR             R0, [SP,#0x2B0+var_2B0]
42F9AE:  ADD             R0, SP, #0x2B0+var_FC
42F9B0:  MOVS            R2, #0xCB
42F9B2:  MOVS            R3, #0xF1
42F9B4:  B               loc_42F9C2
42F9B6:  MOVS            R0, #0xFF
42F9B8:  MOVS            R1, #0x4A ; 'J'; unsigned __int8
42F9BA:  STR             R0, [SP,#0x2B0+var_2B0]; unsigned __int8
42F9BC:  ADD             R0, SP, #0x2B0+var_100; this
42F9BE:  MOVS            R2, #0x5A ; 'Z'; unsigned __int8
42F9C0:  MOVS            R3, #0x6B ; 'k'; unsigned __int8
42F9C2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42F9C6:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
42F9CA:  LDRB.W          R0, [R8,#0x121]
42F9CE:  CMP             R0, #0x2A ; '*'
42F9D0:  BNE             loc_42FA02
42F9D2:  BLX             j__Z13IsPlayingGamev; IsPlayingGame(void)
42F9D6:  CBNZ            R0, loc_42FA02
42F9D8:  LDRSB.W         R0, [R8,#0x121]
42F9DC:  LDR             R1, [SP,#0x2B0+var_184]
42F9DE:  SMLABB.W        R0, R0, R9, R1
42F9E2:  ADD             R0, R11
42F9E4:  LDRB            R0, [R0,#0x14]
42F9E6:  CMP             R0, #0x10
42F9E8:  IT NE
42F9EA:  CMPNE           R0, #5
42F9EC:  BNE             loc_42FA02
42F9EE:  MOVS            R0, #0xFF
42F9F0:  MOVS            R1, #0x32 ; '2'; unsigned __int8
42F9F2:  STR             R0, [SP,#0x2B0+var_2B0]; unsigned __int8
42F9F4:  ADD             R0, SP, #0x2B0+var_104; this
42F9F6:  MOVS            R2, #0x32 ; '2'; unsigned __int8
42F9F8:  MOVS            R3, #0x32 ; '2'; unsigned __int8
42F9FA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42F9FE:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
42FA02:  LDRSB.W         R0, [R8,#0x121]
42FA06:  LDR             R1, [SP,#0x2B0+var_134]; unsigned __int8
42FA08:  SMLABB.W        R0, R0, R9, R1
42FA0C:  ADD             R0, R11
42FA0E:  LDRSB.W         R0, [R0,#0x1A]
42FA12:  CMP             R0, #2
42FA14:  BEQ             loc_42FA20
42FA16:  CMP             R0, #1
42FA18:  ITE NE
42FA1A:  MOVNE           R0, #0
42FA1C:  MOVEQ           R0, #1
42FA1E:  B               loc_42FA22
42FA20:  MOVS            R0, #(stderr+2); this
42FA22:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
42FA26:  LDRSB.W         R1, [R8,#0x121]
42FA2A:  LDR             R0, [SP,#0x2B0+var_138]
42FA2C:  SMLABB.W        R0, R1, R9, R0
42FA30:  ADD             R0, R11
42FA32:  LDRH            R2, [R0,#0x16]
42FA34:  CBNZ            R2, loc_42FA42
42FA36:  LDR             R2, [SP,#0x2B0+var_164]
42FA38:  SMLABB.W        R2, R1, R9, R2
42FA3C:  ADD             R2, R11
42FA3E:  LDRH            R2, [R2,#0x18]
42FA40:  CBZ             R2, loc_42FA50
42FA42:  LDR             R2, [SP,#0x2B0+var_140]
42FA44:  SMLABB.W        R2, R1, R9, R2
42FA48:  ADD             R2, R11
42FA4A:  LDRB            R2, [R2,#0x13]
42FA4C:  CMP             R2, #0xC
42FA4E:  BNE             loc_42FA78
42FA50:  LDR             R3, [SP,#0x2B0+var_14C]
42FA52:  EOR.W           R2, R11, #0x12
42FA56:  ORRS            R2, R3
42FA58:  MOV.W           R2, #0
42FA5C:  IT EQ
42FA5E:  MOVEQ           R2, #1
42FA60:  CMP.W           R11, #0
42FA64:  IT NE
42FA66:  CMPNE           R2, #1
42FA68:  BNE             loc_42FA7C
42FA6A:  MOV.W           R1, #0x140
42FA6E:  STRH            R1, [R0,#0x16]
42FA70:  MOVS            R1, #0x82
42FA72:  LDRSB.W         R0, [R8,#0x121]
42FA76:  B               loc_42FA96
42FA78:  UXTB            R0, R1
42FA7A:  B               loc_42FAA4
42FA7C:  LDR             R2, [SP,#0x2B0+var_178]
42FA7E:  SMLABB.W        R1, R1, R9, R2
42FA82:  ADD             R1, R11
42FA84:  LDRH            R1, [R1,#4]
42FA86:  STRH            R1, [R0,#0x16]
42FA88:  LDRSB.W         R0, [R8,#0x121]
42FA8C:  SMLABB.W        R1, R0, R9, R2
42FA90:  ADD             R1, R11
42FA92:  LDRH            R1, [R1,#6]
42FA94:  ADDS            R1, #0x1E
42FA96:  LDR             R2, [SP,#0x2B0+var_150]
42FA98:  SMLABB.W        R0, R0, R9, R2
42FA9C:  ADD             R0, R11
42FA9E:  STRH            R1, [R0,#0x18]
42FAA0:  LDRB.W          R0, [R8,#0x121]
42FAA4:  LDR             R1, [SP,#0x2B0+var_13C]
42FAA6:  SXTB            R2, R0
42FAA8:  SMLABB.W        R1, R2, R9, R1
42FAAC:  ADD             R1, R11
42FAAE:  LDRB            R3, [R1,#0xA]
42FAB0:  CMP             R3, #1
42FAB2:  BEQ.W           loc_431416
42FAB6:  LDR             R3, [SP,#0x2B0+var_154]
42FAB8:  SMLABB.W        R3, R2, R9, R3
42FABC:  ADD             R3, R11
42FABE:  LDRB            R3, [R3,#0xB]
42FAC0:  CMP             R3, #0
42FAC2:  BEQ.W           loc_431416
42FAC6:  LDR             R0, [SP,#0x2B0+var_168]
42FAC8:  SMLABB.W        R0, R2, R9, R0
42FACC:  ADD             R0, R11
42FACE:  LDRB            R0, [R0,#0x13]
42FAD0:  STRD.W          R10, R4, [SP,#0x2B0+var_148]
42FAD4:  SUBS            R3, R0, #1
42FAD6:  UXTB            R3, R3
42FAD8:  CMP             R3, #9
42FADA:  BHI             loc_42FB7A
42FADC:  LDR             R0, [SP,#0x2B0+var_1A8]
42FADE:  MOVS            R1, #0x50 ; 'P'; unsigned __int8
42FAE0:  SMLABB.W        R0, R2, R9, R0
42FAE4:  ADD             R0, R11
42FAE6:  STRH            R1, [R0,#0x16]
42FAE8:  MOVS            R0, #(stderr+1); this
42FAEA:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
42FAEE:  SUB.W           R9, R4, #2
42FAF2:  CMP.W           R11, #0x12
42FAF6:  IT EQ
42FAF8:  MOVEQ.W         R9, #byte_8
42FAFC:  ORR.W           R10, R9, #1
42FB00:  CMP.W           R10, #7
42FB04:  BNE             loc_42FB20
42FB06:  BLX             j__Z18IsSCCloudAvailablev; IsSCCloudAvailable(void)
42FB0A:  CMP             R0, #1
42FB0C:  BNE             loc_42FB20
42FB0E:  SUB.W           R0, R9, #6; int
42FB12:  BLX             j__Z23NewSCCloudSaveAvailablei; NewSCCloudSaveAvailable(int)
42FB16:  CMP             R0, #1
42FB18:  ITT EQ
42FB1A:  LDREQ           R0, [SP,#0x2B0+var_228]; this
42FB1C:  BLXEQ           j__ZN8C_PcSave16PopulateSlotInfoEv; C_PcSave::PopulateSlotInfo(void)
42FB20:  LDR             R0, [SP,#0x2B0+var_1AC]
42FB22:  LDR.W           R0, [R0,R9,LSL#2]
42FB26:  CMP             R0, #2
42FB28:  BEQ             loc_42FBAE
42FB2A:  CMP             R0, #0
42FB2C:  BNE             loc_42FBD6
42FB2E:  LDRB.W          R0, [R8,#0x121]
42FB32:  CMP             R0, #0x10
42FB34:  BNE             loc_42FB48
42FB36:  BLX             j__Z18IsSCCloudAvailablev; IsSCCloudAvailable(void)
42FB3A:  CBNZ            R0, loc_42FB48
42FB3C:  LDR.W           R0, =(word_990BF6 - 0x42FB48)
42FB40:  CMP.W           R10, #7
42FB44:  ADD             R0, PC; word_990BF6
42FB46:  BEQ             loc_42FB4E
42FB48:  MOV             R0, R9; this
42FB4A:  BLX             j__ZN19CGenericGameStorage18GetNameOfSavedGameEi; CGenericGameStorage::GetNameOfSavedGame(int)
42FB4E:  MOV             R4, R0
42FB50:  BLX             j__Z13GxtCharStrlenPKt; GxtCharStrlen(ushort const*)
42FB54:  CMP             R0, #0xFE
42FB56:  BCC             loc_42FB6C
42FB58:  LDR             R6, [SP,#0x2B0+var_224]
42FB5A:  ADR.W           R0, loc_4301D8; char *
42FB5E:  MOV             R1, R6; unsigned __int16 *
42FB60:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
42FB64:  MOV             R0, R4; unsigned __int16 *
42FB66:  MOV             R1, R6; unsigned __int16 *
42FB68:  BLX             j__Z13GxtCharStrcatPtS_; GxtCharStrcat(ushort *,ushort *)
42FB6C:  MOV             R0, R9; int
42FB6E:  BLX             j__Z23GetSavedGameDateAndTimei; GetSavedGameDateAndTime(int)
42FB72:  MOV             R5, R0
42FB74:  MOV             R0, R4
42FB76:  LDR             R4, [SP,#0x2B0+var_144]
42FB78:  B               loc_42FBBA
42FB7A:  CMP             R0, #0xD
42FB7C:  BEQ             loc_42FBF4
42FB7E:  CMP             R0, #0xC
42FB80:  BNE             loc_42FC12
42FB82:  LDRB.W          R0, [R10]
42FB86:  CMP             R0, #0
42FB88:  BEQ.W           loc_42FDE4
42FB8C:  LDR             R6, [SP,#0x2B0+var_200]
42FB8E:  ADD.W           R0, R10, #1; char *
42FB92:  MOV             R1, R6; unsigned __int16 *
42FB94:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
42FB98:  LDRSB.W         R0, [R8,#0x121]
42FB9C:  MOVS            R4, #0
42FB9E:  LDR             R1, [SP,#0x2B0+var_204]
42FBA0:  MOVS            R5, #0
42FBA2:  SMLABB.W        R0, R0, R9, R1
42FBA6:  MOVS            R1, #0xB
42FBA8:  ADD             R0, R11
42FBAA:  STRB            R1, [R0,#0xA]
42FBAC:  B               loc_42FCFC
42FBAE:  LDR             R0, [SP,#0x2B0+var_1F8]; this
42FBB0:  ADR.W           R1, aFeszCs; "FESZ_CS"
42FBB4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42FBB8:  MOVS            R5, #0
42FBBA:  CMP             R0, #0
42FBBC:  ITTT NE
42FBBE:  MOVNE           R6, R0
42FBC0:  LDRHNE          R0, [R0]
42FBC2:  CMPNE           R0, #0
42FBC4:  BEQ             loc_42FBD8
42FBC6:  STR             R5, [SP,#0x2B0+var_17C]
42FBC8:  MOVS            R5, #0
42FBCA:  MOV.W           R9, #0xE2
42FBCE:  CMP.W           R10, #9
42FBD2:  BEQ             loc_42FCB6
42FBD4:  B               loc_42FCBE
42FBD6:  MOVS            R5, #0
42FBD8:  CMP.W           R10, #7
42FBDC:  STR             R5, [SP,#0x2B0+var_17C]
42FBDE:  BNE             loc_42FC2C
42FBE0:  BLX             j__Z18IsSCCloudAvailablev; IsSCCloudAvailable(void)
42FBE4:  CMP             R0, #1
42FBE6:  BNE             loc_42FC40
42FBE8:  ADD.W           R2, R9, #1
42FBEC:  LDR             R0, [SP,#0x2B0+var_21C]
42FBEE:  ADR.W           R1, aFemCsD_0; "FEM_CS%d"
42FBF2:  B               loc_42FC48
42FBF4:  LDRB.W          R0, [R8,#0x94]
42FBF8:  CMP             R0, #2
42FBFA:  BEQ.W           loc_42FE00
42FBFE:  CMP             R0, #1
42FC00:  BEQ.W           loc_42FE08
42FC04:  CMP             R0, #0
42FC06:  BNE.W           loc_42FDF8
42FC0A:  LDR             R0, [SP,#0x2B0+var_238]
42FC0C:  ADR.W           R1, aFecMou; "FEC_MOU"
42FC10:  B               loc_42FC20
42FC12:  SMLABB.W        R0, R2, R9, R11
42FC16:  LDR             R1, [SP,#0x2B0+var_154]
42FC18:  ADD             R0, R1
42FC1A:  ADD.W           R1, R0, #0xB; CKeyGen *
42FC1E:  LDR             R0, [SP,#0x2B0+var_1FC]; this
42FC20:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42FC24:  MOV             R6, R0
42FC26:  MOVS            R5, #0
42FC28:  MOVS            R4, #0
42FC2A:  B               loc_42FCFC
42FC2C:  LDR             R0, [SP,#0x2B0+var_1F4]
42FC2E:  ADD.W           R2, R9, #1
42FC32:  ADR.W           R1, aFemSlD_0; "FEM_SL%d"
42FC36:  BL              sub_5E6BC0
42FC3A:  MOV.W           R9, #0xE2
42FC3E:  B               loc_42FC6C
42FC40:  LDR             R0, [SP,#0x2B0+var_220]
42FC42:  ADR.W           R1, aFemNc; "FEM_NC"
42FC46:  MOV             R2, R9
42FC48:  BL              sub_5E6BC0
42FC4C:  LDR.W           R0, [R8,#0x38]
42FC50:  MOV.W           R9, #0xE2
42FC54:  CMP             R4, R0
42FC56:  BEQ             loc_42FC6C
42FC58:  MOVS            R0, #0xFF
42FC5A:  MOVS            R1, #0x4C ; 'L'; unsigned __int8
42FC5C:  STR             R0, [SP,#0x2B0+var_2B0]; unsigned __int8
42FC5E:  ADD             R0, SP, #0x2B0+var_108; this
42FC60:  MOVS            R2, #0xC4; unsigned __int8
42FC62:  MOVS            R3, #0xE8; unsigned __int8
42FC64:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42FC68:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
42FC6C:  MOVS            R0, #0; this
42FC6E:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
42FC72:  LDRSB.W         R0, [R8,#0x121]
42FC76:  LDR             R1, [SP,#0x2B0+var_1CC]
42FC78:  SMLABB.W        R0, R0, R9, R1
42FC7C:  MOV.W           R1, #0x140
42FC80:  ADD             R0, R11
42FC82:  STRH            R1, [R0,#0x16]
42FC84:  LDRD.W          R1, R0, [SP,#0x2B0+var_1D4]; CKeyGen *
42FC88:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42FC8C:  MOV             R6, R0
42FC8E:  LDR             R0, [SP,#0x2B0+var_1D8]
42FC90:  LDR             R0, [R0,#4]
42FC92:  CMP.W           R0, #0x280
42FC96:  VMOV            S0, R0
42FC9A:  VCVT.F32.S32    S0, S0
42FC9E:  VMUL.F32        S0, S0, S22
42FCA2:  VCVT.S32.F32    S0, S0
42FCA6:  VMOV            R1, S0
42FCAA:  IT EQ
42FCAC:  MOVEQ           R1, #0x28 ; '('
42FCAE:  MOV             R5, R1
42FCB0:  CMP.W           R10, #9
42FCB4:  BNE             loc_42FCBE
42FCB6:  LDR.W           R0, [R8,#0x38]
42FCBA:  CMP             R4, R0
42FCBC:  BNE             loc_42FCE4
42FCBE:  CMP.W           R10, #7
42FCC2:  BNE             loc_42FCF8
42FCC4:  LDR.W           R0, [R8,#0x38]
42FCC8:  CMP             R4, R0
42FCCA:  BEQ             loc_42FCF8
42FCCC:  LDR             R0, [SP,#0x2B0+var_218]
42FCCE:  LDR             R0, [R0]
42FCD0:  STR             R0, [SP,#0x2B0+var_110]
42FCD2:  ADD             R0, SP, #0x2B0+var_110
42FCD4:  B               loc_42FCF4
42FCD6:  ALIGN 4
42FCD8:  DCFS 0.0022321
42FCDC:  DCD RsGlobal_ptr - 0x42F17A
42FCE0:  DCD aScreens_ptr - 0x42F1BC
42FCE4:  MOVS            R0, #0xFF
42FCE6:  MOVS            R1, #0; unsigned __int8
42FCE8:  STR             R0, [SP,#0x2B0+var_2B0]; unsigned __int8
42FCEA:  ADD             R0, SP, #0x2B0+var_10C; this
42FCEC:  MOVS            R2, #0xCC; unsigned __int8
42FCEE:  MOVS            R3, #0xFF; unsigned __int8
42FCF0:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
42FCF4:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
42FCF8:  MOV             R4, R5
42FCFA:  LDR             R5, [SP,#0x2B0+var_17C]
42FCFC:  LDRSB.W         R0, [R8,#0x121]
42FD00:  MOV             R10, R6
42FD02:  LDR             R1, [SP,#0x2B0+var_16C]
42FD04:  SMLABB.W        R0, R0, R9, R1
42FD08:  ADD             R0, R11
42FD0A:  LDRB            R0, [R0,#0xA]
42FD0C:  SUB.W           R1, R0, #0x18; switch 59 cases
42FD10:  CMP             R1, #0x3A ; ':'
42FD12:  BHI.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
42FD16:  TBH.W           [PC,R1,LSL#1]; switch jump
42FD1A:  DCW 0x13A; jump table for switch statement
42FD1C:  DCW 0x142
42FD1E:  DCW 0x14A
42FD20:  DCW 0x414
42FD22:  DCW 0x414
42FD24:  DCW 0x414
42FD26:  DCW 0x7B
42FD28:  DCW 0x84
42FD2A:  DCW 0x414
42FD2C:  DCW 0x152
42FD2E:  DCW 0x414
42FD30:  DCW 0x8D
42FD32:  DCW 0x96
42FD34:  DCW 0x414
42FD36:  DCW 0x414
42FD38:  DCW 0x414
42FD3A:  DCW 0x414
42FD3C:  DCW 0x414
42FD3E:  DCW 0x414
42FD40:  DCW 0x414
42FD42:  DCW 0x414
42FD44:  DCW 0x15A
42FD46:  DCW 0x33D
42FD48:  DCW 0x356
42FD4A:  DCW 0x414
42FD4C:  DCW 0xDC
42FD4E:  DCW 0xE7
42FD50:  DCW 0x375
42FD52:  DCW 0x37E
42FD54:  DCW 0x386
42FD56:  DCW 0x38E
42FD58:  DCW 0x396
42FD5A:  DCW 0x414
42FD5C:  DCW 0x414
42FD5E:  DCW 0x414
42FD60:  DCW 0x414
42FD62:  DCW 0x414
42FD64:  DCW 0xEF
42FD66:  DCW 0xFF
42FD68:  DCW 0x3A1
42FD6A:  DCW 0x414
42FD6C:  DCW 0x414
42FD6E:  DCW 0x10F
42FD70:  DCW 0x11F
42FD72:  DCW 0x127
42FD74:  DCW 0x414
42FD76:  DCW 0x12F
42FD78:  DCW 0x3B
42FD7A:  DCW 0x414
42FD7C:  DCW 0x414
42FD7E:  DCW 0x3B
42FD80:  DCW 0x3B
42FD82:  DCW 0x3B
42FD84:  DCW 0x3B
42FD86:  DCW 0x3B
42FD88:  DCW 0x3B
42FD8A:  DCW 0x3B
42FD8C:  DCW 0x3B
42FD8E:  DCW 0x3B
42FD90:  LDR.W           R1, =(_ZN14MobileSettings8settingsE_ptr - 0x42FDA0); jumptable 0042FD16 cases 71,74-82
42FD94:  SUB.W           R9, R0, #0x47 ; 'G'
42FD98:  LDR.W           R3, =(TheText_ptr - 0x42FDA2)
42FD9C:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
42FD9E:  ADD             R3, PC; TheText_ptr
42FDA0:  LDR             R5, [R1]; MobileSettings::settings ...
42FDA2:  ADD.W           R0, R5, R9,LSL#5
42FDA6:  LDRD.W          R1, R2, [R0,#4]
42FDAA:  LDR             R0, [R0,#0x10]
42FDAC:  SUBS            R0, R2, R0
42FDAE:  LDR.W           R1, [R1,R0,LSL#2]; CKeyGen *
42FDB2:  LDR             R0, [R3]; TheText ; this
42FDB4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42FDB8:  CMP.W           R9, #3
42FDBC:  BNE             loc_42FDDC
42FDBE:  LDR             R1, [R5,#(dword_6E045C - 0x6E03F4)]
42FDC0:  MOV.W           R9, #0xE2
42FDC4:  MOV             R6, R10
42FDC6:  MOV             R5, R0
42FDC8:  ADDS            R1, #1
42FDCA:  BNE.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
42FDCE:  LDR.W           R0, =(TheText_ptr - 0x42FDDA)
42FDD2:  ADR.W           R1, aFetNot; "FET_NOT"
42FDD6:  ADD             R0, PC; TheText_ptr
42FDD8:  LDR             R0, [R0]; TheText
42FDDA:  B               loc_43053C
42FDDC:  MOV.W           R9, #0xE2
42FDE0:  MOV             R6, R10
42FDE2:  B               loc_430540
42FDE4:  MOVS            R0, #0x14
42FDE6:  STRB            R0, [R1,#0xA]
42FDE8:  LDRSB.W         R0, [R8,#0x121]
42FDEC:  LDR             R1, [SP,#0x2B0+var_22C]
42FDEE:  SMLABB.W        R0, R0, R9, R1
42FDF2:  ADD             R0, R11
42FDF4:  LDRH            R1, [R0,#6]
42FDF6:  STRH            R1, [R0,#0x18]
42FDF8:  MOVS            R5, #0
42FDFA:  MOVS            R4, #0
42FDFC:  MOVS            R6, #0
42FDFE:  B               loc_42FCFC
42FE00:  LDR             R0, [SP,#0x2B0+var_230]
42FE02:  ADR.W           R1, aFecMou; "FEC_MOU"
42FE06:  B               loc_42FC20
42FE08:  LDR             R0, [SP,#0x2B0+var_234]
42FE0A:  ADR.W           R1, aFejTit; "FEJ_TIT"
42FE0E:  B               loc_42FC20
42FE10:  LDRB.W          R0, [R8,#0x34]; jumptable 0042FD16 case 30
42FE14:  CMP             R0, #0
42FE16:  BEQ.W           loc_4304B0
42FE1A:  LDR.W           R0, =(TheText_ptr - 0x42FE22)
42FE1E:  ADD             R0, PC; TheText_ptr
42FE20:  B               loc_430454
42FE22:  LDRB.W          R0, [R8,#0x30]; jumptable 0042FD16 case 31
42FE26:  CMP             R0, #0
42FE28:  BEQ.W           loc_4304B8
42FE2C:  LDR.W           R0, =(TheText_ptr - 0x42FE34)
42FE30:  ADD             R0, PC; TheText_ptr
42FE32:  B               loc_430454
42FE34:  LDRB.W          R0, [R8,#0x19]; jumptable 0042FD16 case 35
42FE38:  CMP             R0, #0
42FE3A:  BEQ.W           loc_4304C0
42FE3E:  LDR.W           R0, =(TheText_ptr - 0x42FE46)
42FE42:  ADD             R0, PC; TheText_ptr
42FE44:  B               loc_430454
42FE46:  LDRSB.W         R0, [R8,#0x48]; jumptable 0042FD16 case 36
42FE4A:  CMP             R0, #7; switch 8 cases
42FE4C:  BHI.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
42FE50:  TBB.W           [PC,R0]; switch jump
42FE54:  DCB 0x37; jump table for switch statement
42FE55:  DCB 0x2F
42FE56:  DCB 0x27
42FE57:  DCB 0x20
42FE58:  DCB 0x19
42FE59:  DCB 0x12
42FE5A:  DCB 0xB
42FE5B:  DCB 4
42FE5C:  LDR.W           R0, =(TheText_ptr - 0x42FE68); jumptable 0042FE50 case 7
42FE60:  ADR.W           R1, aFelKor; "FEL_KOR"
42FE64:  ADD             R0, PC; TheText_ptr
42FE66:  LDR             R0, [R0]; TheText
42FE68:  B               loc_43053C
42FE6A:  LDR.W           R0, =(TheText_ptr - 0x42FE76); jumptable 0042FE50 case 6
42FE6E:  ADR.W           R1, aFelJpn_0; "FEL_JPN"
42FE72:  ADD             R0, PC; TheText_ptr
42FE74:  LDR             R0, [R0]; TheText
42FE76:  B               loc_43053C
42FE78:  LDR.W           R0, =(TheText_ptr - 0x42FE84); jumptable 0042FE50 case 5
42FE7C:  ADR.W           R1, aFelRus_0; "FEL_RUS"
42FE80:  ADD             R0, PC; TheText_ptr
42FE82:  LDR             R0, [R0]; TheText
42FE84:  B               loc_43053C
42FE86:  LDR.W           R0, =(TheText_ptr - 0x42FE92); jumptable 0042FE50 case 4
42FE8A:  ADR.W           R1, aFelSpa_0; "FEL_SPA"
42FE8E:  ADD             R0, PC; TheText_ptr
42FE90:  LDR             R0, [R0]; TheText
42FE92:  B               loc_43053C
42FE94:  LDR.W           R0, =(TheText_ptr - 0x42FEA0); jumptable 0042FE50 case 3
42FE98:  ADR.W           R1, aFelIta_0; "FEL_ITA"
42FE9C:  ADD             R0, PC; TheText_ptr
42FE9E:  LDR             R0, [R0]; TheText
42FEA0:  B               loc_43053C
42FEA2:  LDR.W           R0, =(TheText_ptr - 0x42FEAE); jumptable 0042FE50 case 2
42FEA6:  LDR.W           R1, =(aFelGer_0 - 0x42FEB0); "FEL_GER"
42FEAA:  ADD             R0, PC; TheText_ptr
42FEAC:  ADD             R1, PC; "FEL_GER"
42FEAE:  LDR             R0, [R0]; TheText
42FEB0:  B               loc_43053C
42FEB2:  LDR.W           R0, =(TheText_ptr - 0x42FEBE); jumptable 0042FE50 case 1
42FEB6:  LDR.W           R1, =(aFelFre_0 - 0x42FEC0); "FEL_FRE"
42FEBA:  ADD             R0, PC; TheText_ptr
42FEBC:  ADD             R1, PC; "FEL_FRE"
42FEBE:  LDR             R0, [R0]; TheText
42FEC0:  B               loc_43053C
42FEC2:  LDR.W           R0, =(TheText_ptr - 0x42FECE); jumptable 0042FE50 case 0
42FEC6:  LDR.W           R1, =(aFelEng_0 - 0x42FED0); "FEL_ENG"
42FECA:  ADD             R0, PC; TheText_ptr
42FECC:  ADD             R1, PC; "FEL_ENG"
42FECE:  LDR             R0, [R0]; TheText
42FED0:  B               loc_43053C
42FED2:  LDR.W           R0, =(MousePointerStateHelper_ptr - 0x42FEDA); jumptable 0042FD16 case 49
42FED6:  ADD             R0, PC; MousePointerStateHelper_ptr
42FED8:  LDR             R0, [R0]; MousePointerStateHelper
42FEDA:  LDRB            R0, [R0,#(byte_98F0F5 - 0x98F0F4)]
42FEDC:  CMP             R0, #0
42FEDE:  BEQ.W           loc_4304C8
42FEE2:  LDR             R0, =(TheText_ptr - 0x42FEE8)
42FEE4:  ADD             R0, PC; TheText_ptr
42FEE6:  B               loc_430454
42FEE8:  LDRB.W          R0, [R8,#0x75]; jumptable 0042FD16 case 50
42FEEC:  CMP             R0, #0
42FEEE:  BEQ.W           loc_4304D0
42FEF2:  LDR             R0, =(TheText_ptr - 0x42FEF8)
42FEF4:  ADD             R0, PC; TheText_ptr
42FEF6:  B               loc_430454
42FEF8:  LDRSB.W         R0, [R8,#0x94]; jumptable 0042FD16 case 61
42FEFC:  CMP             R0, #2
42FEFE:  BEQ.W           loc_42F8CE
42FF02:  CMP             R0, #1
42FF04:  BEQ.W           loc_42F8DE
42FF08:  CMP             R0, #0
42FF0A:  BNE.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
42FF0E:  LDR             R0, =(TheText_ptr - 0x42FF16)
42FF10:  ADR             R1, aFetScn; "FET_SCN"
42FF12:  ADD             R0, PC; TheText_ptr
42FF14:  LDR             R0, [R0]; TheText
42FF16:  B               loc_43053C
42FF18:  LDR             R0, =(TheText_ptr - 0x42FF20); jumptable 0042FD16 case 62
42FF1A:  ADR             R1, aFemOff; "FEM_OFF"
42FF1C:  ADD             R0, PC; TheText_ptr
42FF1E:  LDR             R0, [R0]; TheText ; this
42FF20:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
42FF24:  MOV             R5, R0
42FF26:  LDRB.W          R0, [R8,#0x94]
42FF2A:  CMP             R0, #1
42FF2C:  BNE.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
42FF30:  MOVS            R0, #0xFF
42FF32:  STR             R0, [SP,#0x2B0+var_2B0]
42FF34:  ADD             R0, SP, #0x2B0+var_118
42FF36:  B               loc_43047C
42FF38:  LDRSB.W         R0, [R8,#0x74]; jumptable 0042FD16 case 66
42FF3C:  CMP             R0, #2
42FF3E:  BEQ.W           loc_42F8EE
42FF42:  CMP             R0, #1
42FF44:  BEQ.W           loc_42F8FE
42FF48:  CMP             R0, #0
42FF4A:  BNE.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
42FF4E:  LDR             R0, =(TheText_ptr - 0x42FF56)
42FF50:  ADR             R1, aFeaPr1; "FEA_PR1"
42FF52:  ADD             R0, PC; TheText_ptr
42FF54:  LDR             R0, [R0]; TheText
42FF56:  B               loc_43053C
42FF58:  LDRB.W          R0, [R8,#0x89]; jumptable 0042FD16 case 67
42FF5C:  CMP             R0, #0
42FF5E:  BEQ.W           loc_4304D8
42FF62:  LDR             R0, =(TheText_ptr - 0x42FF68)
42FF64:  ADD             R0, PC; TheText_ptr
42FF66:  B               loc_430454
42FF68:  LDRB.W          R0, [R8,#0xAC]; jumptable 0042FD16 case 68
42FF6C:  CMP             R0, #0
42FF6E:  BEQ.W           loc_4304E0
42FF72:  LDR             R0, =(TheText_ptr - 0x42FF78)
42FF74:  ADD             R0, PC; TheText_ptr
42FF76:  B               loc_430454
42FF78:  LDR             R0, =(FrontEndMenuManager_ptr - 0x42FF7E); jumptable 0042FD16 case 70
42FF7A:  ADD             R0, PC; FrontEndMenuManager_ptr
42FF7C:  LDR             R0, [R0]; FrontEndMenuManager
42FF7E:  LDRB.W          R0, [R0,#(byte_98F1A6 - 0x98F0F8)]
42FF82:  CMP             R0, #0
42FF84:  BEQ.W           loc_4304E8
42FF88:  LDR             R0, =(TheText_ptr - 0x42FF8E)
42FF8A:  ADD             R0, PC; TheText_ptr
42FF8C:  B               loc_430454
42FF8E:  LDRB.W          R0, [R8,#0x2F]; jumptable 0042FD16 case 24
42FF92:  CMP             R0, #0
42FF94:  BEQ.W           loc_4304F0
42FF98:  LDR             R0, =(TheText_ptr - 0x42FF9E)
42FF9A:  ADD             R0, PC; TheText_ptr
42FF9C:  B               loc_430454
42FF9E:  LDRB.W          R0, [R8,#0x2C]; jumptable 0042FD16 case 25
42FFA2:  CMP             R0, #0
42FFA4:  BEQ.W           loc_4304F8
42FFA8:  LDR             R0, =(TheText_ptr - 0x42FFAE)
42FFAA:  ADD             R0, PC; TheText_ptr
42FFAC:  B               loc_430454
42FFAE:  LDRB.W          R0, [R8,#0x2E]; jumptable 0042FD16 case 26
42FFB2:  CMP             R0, #0
42FFB4:  BEQ.W           loc_430500
42FFB8:  LDR             R0, =(TheText_ptr - 0x42FFBE)
42FFBA:  ADD             R0, PC; TheText_ptr
42FFBC:  B               loc_430454
42FFBE:  LDRB.W          R0, [R8,#0x2D]; jumptable 0042FD16 case 33
42FFC2:  CMP             R0, #0
42FFC4:  BEQ.W           loc_430508
42FFC8:  LDR             R0, =(TheText_ptr - 0x42FFCE)
42FFCA:  ADD             R0, PC; TheText_ptr
42FFCC:  B               loc_430454
42FFCE:  LDR             R0, =(g_fx_ptr - 0x42FFD4); jumptable 0042FD16 case 45
42FFD0:  ADD             R0, PC; g_fx_ptr
42FFD2:  LDR             R0, [R0]; g_fx ; this
42FFD4:  BLX             j__ZN4Fx_c12GetFxQualityEv; Fx_c::GetFxQuality(void)
42FFD8:  CMP             R0, #3; switch 4 cases
42FFDA:  BHI.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
42FFDE:  TBH.W           [PC,R0,LSL#1]; switch jump
42FFE2:  DCW 0x1D2; jump table for switch statement
42FFE4:  DCW 0x1CB
42FFE6:  DCW 0x1C4
42FFE8:  DCW 0x1BD
42FFEA:  ALIGN 4
42FFEC:  DCD RsGlobal_ptr - 0x42F1EC
42FFF0:  DCD HudColour_ptr - 0x42F222
42FFF4:  DCD aScreens_ptr - 0x42F250
42FFF8:  DCD TheText_ptr - 0x42F25C
42FFFC:  DCD aScreens_ptr - 0x42F2B8
430000:  DCD RsGlobal_ptr - 0x42F2CC
430004:  DCD aScreens_ptr - 0x42F352
430008:  DCD aScreens_ptr - 0x42F388
43000C:  DCB "FESZ_QQ",0
430014:  DCD aScreens_ptr - 0x42F3A0
430018:  DCD aScreens_ptr - 0x42F3BA
43001C:  DCB "FES_LCG",0
430024:  DCD gMobileMenu_ptr - 0x42F3D4
430028:  DCB "FESZ_QC",0
430030:  DCD _ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x42F3DA
430034:  DCD aScreens_ptr - 0x42F3DE
430038:  DCB "FESZ_QO",0
430040:  DCD aScreens_ptr - 0x42F464
430044:  DCB "FEQ_SRW",0
43004C:  DCD TheText_ptr - 0x42F472
430050:  DCD RsGlobal_ptr - 0x42F484
430054:  DCD aScreens_ptr - 0x42F52A
430058:  DCD gString_ptr - 0x42F530
43005C:  DCD aScreens_ptr - 0x42F574
430060:  DCD aScreens_ptr - 0x42F57A
430064:  DCD RsGlobal_ptr - 0x42F586
430068:  DCD aScreens_ptr - 0x42F58E
43006C:  DCD aScreens_ptr - 0x42F59A
430070:  DCD aScreens_ptr - 0x42F5A2
430074:  DCD aScreens_ptr - 0x42F5AE
430078:  DCD aScreens_ptr - 0x42F5B6
43007C:  DCD aScreens_ptr - 0x42F5C2
430080:  DCD aScreens_ptr - 0x42F5CA
430084:  DCD aScreens_ptr - 0x42F5D6
430088:  DCD aScreens_ptr - 0x42F5DE
43008C:  DCD TheText_ptr - 0x42F5EA
430090:  DCD PcSaveHelper_ptr - 0x42F5F4
430094:  DCD _ZN19CGenericGameStorage8ms_SlotsE_ptr - 0x42F60A
430098:  DCD TheText_ptr - 0x42F620
43009C:  DCD gString_ptr - 0x42F636
4300A0:  DCD gString_ptr - 0x42F642
4300A4:  DCD aScreens_ptr - 0x42F64C
4300A8:  DCD RsGlobal_ptr - 0x42F662
4300AC:  DCD aScreens_ptr - 0x42F664
4300B0:  DCD gString_ptr - 0x42F66E
4300B4:  DCD CloudColor_ptr - 0x42F678
4300B8:  DCD gGxtString2_ptr - 0x42F682
4300BC:  DCD aScreens_ptr - 0x42F68C
4300C0:  DCD aScreens_ptr - 0x42F696
4300C4:  DCD RsGlobal_ptr - 0x42F6A0
4300C8:  DCD aScreens_ptr - 0x42F6AA
4300CC:  DCD RsGlobal_ptr - 0x42F6B4
4300D0:  DCD aScreens_ptr - 0x42F6BE
4300D4:  DCD RsGlobal_ptr - 0x42F6C8
4300D8:  DCD aScreens_ptr - 0x42F6D2
4300DC:  DCD RsGlobal_ptr - 0x42F6DC
4300E0:  DCD aScreens_ptr - 0x42F6E6
4300E4:  DCD RsGlobal_ptr - 0x42F6F0
4300E8:  DCD aScreens_ptr - 0x42F6FA
4300EC:  DCD RsGlobal_ptr - 0x42F704
4300F0:  DCD aScreens_ptr - 0x42F70E
4300F4:  DCD aScreens_ptr - 0x42F718
4300F8:  DCD aScreens_ptr - 0x42F722
4300FC:  DCD aScreens_ptr - 0x42F72C
430100:  DCD aScreens_ptr - 0x42F736
430104:  DCD RsGlobal_ptr - 0x42F740
430108:  DCD RsGlobal_ptr - 0x42F74A
43010C:  DCD RsGlobal_ptr - 0x42F754
430110:  DCD RsGlobal_ptr - 0x42F75E
430114:  DCD RsGlobal_ptr - 0x42F768
430118:  DCD RsGlobal_ptr - 0x42F772
43011C:  DCD RsGlobal_ptr - 0x42F77C
430120:  DCD RsGlobal_ptr - 0x42F786
430124:  DCD RsGlobal_ptr - 0x42F790
430128:  DCD RsGlobal_ptr - 0x42F79A
43012C:  DCD RsGlobal_ptr - 0x42F7A4
430130:  DCD RsGlobal_ptr - 0x42F7AE
430134:  DCD RsGlobal_ptr - 0x42F7B8
430138:  DCD RsGlobal_ptr - 0x42F7C2
43013C:  DCD RsGlobal_ptr - 0x42F7CC
430140:  DCD RsGlobal_ptr - 0x42F7D6
430144:  DCD RsGlobal_ptr - 0x42F7E0
430148:  DCD RsGlobal_ptr - 0x42F7EA
43014C:  DCD RsGlobal_ptr - 0x42F7F4
430150:  DCD _ZN7CCamera20m_fMouseAccelHorzntlE_ptr - 0x42F7FE
430154:  DCD RsGlobal_ptr - 0x42F808
430158:  DCD RsGlobal_ptr - 0x42F812
43015C:  DCD RsGlobal_ptr - 0x42F81C
430160:  DCD RsGlobal_ptr - 0x42F826
430164:  DCD aScreens_ptr - 0x42F830
430168:  DCD aScreens_ptr - 0x42F83A
43016C:  DCD aScreens_ptr - 0x42F844
430170:  DCD aScreens_ptr - 0x42F84E
430174:  DCD RsGlobal_ptr - 0x42F858
430178:  DCD RsGlobal_ptr - 0x42F866
43017C:  DCD aScreens_ptr - 0x42F870
430180:  DCD TheText_ptr - 0x42F87A
430184:  DCD TheText_ptr - 0x42F884
430188:  DCD TheText_ptr - 0x42F88E
43018C:  DCD aScreens_ptr - 0x42F898
430190:  DCD gGxtString_ptr - 0x42F8A2
430194:  DCD aScreens_ptr - 0x42F8AC
430198:  DCD TheText_ptr - 0x42F8B6
43019C:  DCD aScreens_ptr - 0x42F8C0
4301A0:  DCD RsGlobal_ptr - 0x42F8CA
4301A4:  DCD TheText_ptr - 0x42F8DA
4301A8:  DCB "FET_TCH",0
4301B0:  DCD TheText_ptr - 0x42F8EA
4301B4:  DCB "FET_CCN",0
4301BC:  DCD TheText_ptr - 0x42F8FA
4301C0:  DCB "FEA_PR3",0
4301C8:  DCD TheText_ptr - 0x42F90A
4301CC:  DCB "FEA_PR2",0
4301D4:  DCD word_990BF6 - 0x42FB48
4301D8:  CMP             R6, #0x2E ; '.'
4301DA:  MOVS            R6, R5
4301DC:  DCB "FESZ_CS",0
4301E4:  DCB "FEM_CS%d",0
4301ED:  DCB 0, 0, 0
4301F0:  DCB "FEC_MOU",0
4301F8:  DCB "FEM_SL%d",0
430201:  DCB 0, 0, 0
430204:  DCB "FEM_NC",0
43020B:  DCB 0
43020C:  DCD _ZN14MobileSettings8settingsE_ptr - 0x42FDA0
430210:  DCD TheText_ptr - 0x42FDA2
430214:  DCD TheText_ptr - 0x42FDDA
430218:  DCB "FET_NOT",0
430220:  DCB "FEJ_TIT",0
430228:  DCD TheText_ptr - 0x42FE22
43022C:  DCD TheText_ptr - 0x42FE34
430230:  DCD TheText_ptr - 0x42FE46
430234:  DCD TheText_ptr - 0x42FE68
430238:  DCB "FEL_KOR",0
430240:  DCD TheText_ptr - 0x42FE76
430244:  DCB "FEL_JPN",0
43024C:  DCD TheText_ptr - 0x42FE84
430250:  DCB "FEL_RUS",0
430258:  DCD TheText_ptr - 0x42FE92
43025C:  DCB "FEL_SPA",0
430264:  DCD TheText_ptr - 0x42FEA0
430268:  DCB "FEL_ITA",0
430270:  DCD TheText_ptr - 0x42FEAE
430274:  DCD aFelGer_0 - 0x42FEB0
430278:  DCD TheText_ptr - 0x42FEBE
43027C:  DCD aFelFre_0 - 0x42FEC0
430280:  DCD TheText_ptr - 0x42FECE
430284:  DCD aFelEng_0 - 0x42FED0
430288:  DCD MousePointerStateHelper_ptr - 0x42FEDA
43028C:  DCD TheText_ptr - 0x42FEE8
430290:  DCD TheText_ptr - 0x42FEF8
430294:  DCD TheText_ptr - 0x42FF16
430298:  DCB "FET_SCN",0
4302A0:  DCD TheText_ptr - 0x42FF20
4302A4:  DCB "FEM_OFF",0
4302AC:  DCD TheText_ptr - 0x42FF56
4302B0:  DCB "FEA_PR1",0
4302B8:  DCD TheText_ptr - 0x42FF68
4302BC:  DCD TheText_ptr - 0x42FF78
4302C0:  DCD FrontEndMenuManager_ptr - 0x42FF7E
4302C4:  DCD TheText_ptr - 0x42FF8E
4302C8:  DCD TheText_ptr - 0x42FF9E
4302CC:  DCD TheText_ptr - 0x42FFAE
4302D0:  DCD TheText_ptr - 0x42FFBE
4302D4:  DCD TheText_ptr - 0x42FFCE
4302D8:  DCD g_fx_ptr - 0x42FFD4
4302DC:  DCD TheText_ptr - 0x430368
4302E0:  DCB "FED_FXV",0
4302E8:  DCD TheText_ptr - 0x430376
4302EC:  DCB "FED_FXH",0
4302F4:  DCD TheText_ptr - 0x430384
4302F8:  DCB "FED_FXM",0
430300:  DCD TheText_ptr - 0x430392
430304:  DCB "FED_FXL",0
43030C:  DCD TheText_ptr - 0x4303A8
430310:  DCB "FEM_ON",0
430317:  DCB 0
430318:  DCD RwEngineInstance_ptr - 0x4303E4
43031C:  DCD 0x6425
430320:  DCD TheText_ptr - 0x430416
430324:  DCD TheText_ptr - 0x430426
430328:  DCD TheText_ptr - 0x430436
43032C:  DCD TheText_ptr - 0x430446
430330:  DCD TheText_ptr - 0x430456
430334:  DCD TheText_ptr - 0x430468
430338:  DCD TheText_ptr - 0x43049C
43033C:  DCD TheText_ptr - 0x4304B8
430340:  DCD TheText_ptr - 0x4304C0
430344:  DCD TheText_ptr - 0x4304C8
430348:  DCD TheText_ptr - 0x4304D0
43034C:  DCD TheText_ptr - 0x4304D8
430350:  DCD TheText_ptr - 0x4304E0
430354:  DCD TheText_ptr - 0x4304E8
430358:  DCFS 0.0022321
43035C:  LDR.W           R0, =(TheText_ptr - 0x430368); jumptable 0042FFDE case 3
430360:  ADR.W           R1, aFedFxv; "FED_FXV"
430364:  ADD             R0, PC; TheText_ptr
430366:  LDR             R0, [R0]; TheText
430368:  B               loc_43053C
43036A:  LDR.W           R0, =(TheText_ptr - 0x430376); jumptable 0042FFDE case 2
43036E:  ADR.W           R1, aFedFxh; "FED_FXH"
430372:  ADD             R0, PC; TheText_ptr
430374:  LDR             R0, [R0]; TheText
430376:  B               loc_43053C
430378:  LDR.W           R0, =(TheText_ptr - 0x430384); jumptable 0042FFDE case 1
43037C:  ADR.W           R1, aFedFxm; "FED_FXM"
430380:  ADD             R0, PC; TheText_ptr
430382:  LDR             R0, [R0]; TheText
430384:  B               loc_43053C
430386:  LDR.W           R0, =(TheText_ptr - 0x430392); jumptable 0042FFDE case 0
43038A:  ADR.W           R1, aFedFxl; "FED_FXL"
43038E:  ADD             R0, PC; TheText_ptr
430390:  LDR             R0, [R0]; TheText
430392:  B               loc_43053C
430394:  LDR.W           R0, =(TheText_ptr - 0x4303A8); jumptable 0042FD16 case 46
430398:  ADR.W           R3, aFemOn; "FEM_ON"
43039C:  LDRB.W          R2, [R8,#0x88]
4303A0:  ADR.W           R1, aFemOff; "FEM_OFF"
4303A4:  ADD             R0, PC; TheText_ptr
4303A6:  CMP             R2, #0
4303A8:  LDR             R0, [R0]; TheText ; this
4303AA:  IT NE
4303AC:  MOVNE           R1, R3; CKeyGen *
4303AE:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4303B2:  MOV             R5, R0
4303B4:  LDRB.W          R0, [R8,#0xAD]
4303B8:  CMP             R0, #0
4303BA:  BNE.W           def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
4303BE:  MOVS            R0, #0xFF
4303C0:  STR             R0, [SP,#0x2B0+var_2B0]
4303C2:  ADD             R0, SP, #0x2B0+var_114
4303C4:  B               loc_43047C
4303C6:  MOVS            R0, #0x64 ; 'd'; jumptable 0042FD16 case 47
4303C8:  MOVS            R1, #1; item_size
4303CA:  BLX             j__ZN10CMemoryMgr6CallocEjj; CMemoryMgr::Calloc(uint,uint)
4303CE:  MOV             R5, R0
4303D0:  LDR.W           R0, [R8,#0x90]
4303D4:  CMP             R0, #2
4303D6:  BLT             loc_430490
4303D8:  LDR.W           R1, =(RwEngineInstance_ptr - 0x4303E4)
4303DC:  SUBS            R2, R0, #1
4303DE:  MOV             R0, R5
4303E0:  ADD             R1, PC; RwEngineInstance_ptr
4303E2:  LDR             R1, [R1]; RwEngineInstance
4303E4:  LDR             R1, [R1]
4303E6:  LDR.W           R3, [R1,#0xF0]
4303EA:  ADR.W           R1, dword_43031C
4303EE:  STR             R4, [SP,#0x2B0+var_17C]
4303F0:  MOV             R4, R5
4303F2:  BLX             R3
4303F4:  ADD             R5, SP, #0x2B0+var_E0
4303F6:  MOV             R0, R4; char *
4303F8:  MOV             R1, R5; unsigned __int16 *
4303FA:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
4303FE:  MOV             R1, R4
430400:  LDR             R4, [SP,#0x2B0+var_17C]
430402:  B               loc_4304A4
430404:  LDRB.W          R0, [R8,#0x76]; jumptable 0042FD16 case 51
430408:  CMP             R0, #0
43040A:  BEQ.W           loc_430510
43040E:  LDR.W           R0, =(TheText_ptr - 0x430416)
430412:  ADD             R0, PC; TheText_ptr
430414:  B               loc_430454
430416:  LDRB.W          R0, [R8,#0x77]; jumptable 0042FD16 case 52
43041A:  CMP             R0, #0
43041C:  BEQ             loc_430518
43041E:  LDR.W           R0, =(TheText_ptr - 0x430426)
430422:  ADD             R0, PC; TheText_ptr
430424:  B               loc_430454
430426:  LDRB.W          R0, [R8,#0x78]; jumptable 0042FD16 case 53
43042A:  CMP             R0, #0
43042C:  BEQ             loc_430520
43042E:  LDR.W           R0, =(TheText_ptr - 0x430436)
430432:  ADD             R0, PC; TheText_ptr
430434:  B               loc_430454
430436:  LDRB.W          R0, [R8,#0x79]; jumptable 0042FD16 case 54
43043A:  CMP             R0, #0
43043C:  BEQ             loc_430528
43043E:  LDR.W           R0, =(TheText_ptr - 0x430446)
430442:  ADD             R0, PC; TheText_ptr
430444:  B               loc_430454
430446:  LDRB.W          R0, [R8,#0x7A]; jumptable 0042FD16 case 55
43044A:  CMP             R0, #0
43044C:  BEQ             loc_430530
43044E:  LDR.W           R0, =(TheText_ptr - 0x430456)
430452:  ADD             R0, PC; TheText_ptr
430454:  LDR             R0, [R0]; TheText
430456:  ADR.W           R1, aFemOn; "FEM_ON"
43045A:  B               loc_43053C
43045C:  LDR.W           R0, =(TheText_ptr - 0x430468); jumptable 0042FD16 case 63
430460:  ADR.W           R1, aFemOff; "FEM_OFF"
430464:  ADD             R0, PC; TheText_ptr
430466:  LDR             R0, [R0]; TheText ; this
430468:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
43046C:  MOV             R5, R0
43046E:  LDRB.W          R0, [R8,#0x94]
430472:  CMP             R0, #1
430474:  BNE             def_42FD16; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
430476:  MOVS            R0, #0xFF
430478:  STR             R0, [SP,#0x2B0+var_2B0]; unsigned __int8
43047A:  ADD             R0, SP, #0x2B0+var_11C; this
43047C:  MOVS            R1, #0xE; unsigned __int8
43047E:  MOVS            R2, #0x1E; unsigned __int8
430480:  MOVS            R3, #0x2F ; '/'; unsigned __int8
430482:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
430486:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
43048A:  CMP             R6, #0
43048C:  BNE             loc_430544
43048E:  B               loc_4305B2
430490:  LDR.W           R0, =(TheText_ptr - 0x43049C)
430494:  ADR.W           R1, aFemOff; "FEM_OFF"
430498:  ADD             R0, PC; TheText_ptr
43049A:  LDR             R0, [R0]; TheText ; this
43049C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
4304A0:  MOV             R1, R5; void *
4304A2:  MOV             R5, R0
4304A4:  MOV             R0, R1; this
4304A6:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
4304AA:  CMP             R6, #0
4304AC:  BNE             loc_430544
4304AE:  B               loc_4305B2
4304B0:  LDR.W           R0, =(TheText_ptr - 0x4304B8)
4304B4:  ADD             R0, PC; TheText_ptr
4304B6:  B               loc_430536
4304B8:  LDR.W           R0, =(TheText_ptr - 0x4304C0)
4304BC:  ADD             R0, PC; TheText_ptr
4304BE:  B               loc_430536
4304C0:  LDR.W           R0, =(TheText_ptr - 0x4304C8)
4304C4:  ADD             R0, PC; TheText_ptr
4304C6:  B               loc_430536
4304C8:  LDR.W           R0, =(TheText_ptr - 0x4304D0)
4304CC:  ADD             R0, PC; TheText_ptr
4304CE:  B               loc_430536
4304D0:  LDR.W           R0, =(TheText_ptr - 0x4304D8)
4304D4:  ADD             R0, PC; TheText_ptr
4304D6:  B               loc_430536
4304D8:  LDR.W           R0, =(TheText_ptr - 0x4304E0)
4304DC:  ADD             R0, PC; TheText_ptr
4304DE:  B               loc_430536
4304E0:  LDR.W           R0, =(TheText_ptr - 0x4304E8)
4304E4:  ADD             R0, PC; TheText_ptr
4304E6:  B               loc_430536
4304E8:  LDR.W           R0, =(TheText_ptr - 0x4304F0)
4304EC:  ADD             R0, PC; TheText_ptr
4304EE:  B               loc_430536
4304F0:  LDR.W           R0, =(TheText_ptr - 0x4304F8)
4304F4:  ADD             R0, PC; TheText_ptr
4304F6:  B               loc_430536
4304F8:  LDR.W           R0, =(TheText_ptr - 0x430500)
4304FC:  ADD             R0, PC; TheText_ptr
4304FE:  B               loc_430536
430500:  LDR.W           R0, =(TheText_ptr - 0x430508)
430504:  ADD             R0, PC; TheText_ptr
430506:  B               loc_430536
430508:  LDR.W           R0, =(TheText_ptr - 0x430510)
43050C:  ADD             R0, PC; TheText_ptr
43050E:  B               loc_430536
430510:  LDR.W           R0, =(TheText_ptr - 0x430518)
430514:  ADD             R0, PC; TheText_ptr
430516:  B               loc_430536
430518:  LDR.W           R0, =(TheText_ptr - 0x430520)
43051C:  ADD             R0, PC; TheText_ptr
43051E:  B               loc_430536
430520:  LDR.W           R0, =(TheText_ptr - 0x430528)
430524:  ADD             R0, PC; TheText_ptr
430526:  B               loc_430536
430528:  LDR.W           R0, =(TheText_ptr - 0x430530)
43052C:  ADD             R0, PC; TheText_ptr
43052E:  B               loc_430536
430530:  LDR.W           R0, =(TheText_ptr - 0x430538)
430534:  ADD             R0, PC; TheText_ptr
430536:  LDR             R0, [R0]; TheText ; this
430538:  ADR.W           R1, aFemOff_0; "FEM_OFF"
43053C:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
430540:  MOV             R5, R0
430542:  CBZ             R6, loc_4305B2; jumptable 0042FD16 default case, cases 27-29,32,34,37-44,48,56-60,64,65,69,72,73
430544:  LDRSB.W         R0, [R8,#0x121]
430548:  LDR             R1, [SP,#0x2B0+var_188]
43054A:  SMLABB.W        R1, R0, R9, R1
43054E:  ADD             R1, R11
430550:  LDRSH.W         R1, [R1,#0x16]
430554:  VMOV            S0, R1
430558:  VCVT.F32.S32    S0, S0
43055C:  LDR             R1, [SP,#0x2B0+var_18C]
43055E:  LDR             R1, [R1,#4]
430560:  CMP.W           R1, #0x280
430564:  BEQ             loc_430576
430566:  VDIV.F32        S0, S0, S23
43056A:  VMOV            S2, R1
43056E:  VCVT.F32.S32    S2, S2
430572:  VMUL.F32        S0, S0, S2
430576:  LDR             R1, [SP,#0x2B0+var_190]
430578:  SMLABB.W        R0, R0, R9, R1
43057C:  ADD             R0, R11
43057E:  LDRSH.W         R0, [R0,#0x18]
430582:  VMOV            S2, R0
430586:  VCVT.F32.S32    S2, S2
43058A:  LDR             R0, [SP,#0x2B0+var_194]
43058C:  LDR             R0, [R0,#8]
43058E:  CMP.W           R0, #0x1C0
430592:  BEQ             loc_4305A4
430594:  VDIV.F32        S2, S2, S28
430598:  VMOV            S4, R0
43059C:  VCVT.F32.S32    S4, S4
4305A0:  VMUL.F32        S2, S2, S4
4305A4:  VMOV            R0, S0; this
4305A8:  MOV             R2, R6; CFont *
4305AA:  VMOV            R1, S2; float
4305AE:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
4305B2:  CMP             R5, #0
4305B4:  BEQ             loc_430676
4305B6:  MOVS            R0, #(stderr+2); this
4305B8:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
4305BC:  MOVS            R0, #(stderr+1); this
4305BE:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
4305C2:  MOVS            R0, #(stderr+2); this
4305C4:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
4305C8:  LDRSB.W         R0, [R8,#0x121]
4305CC:  LDR             R1, [SP,#0x2B0+var_19C]
4305CE:  SMLABB.W        R1, R0, R9, R1
4305D2:  LDR             R0, [SP,#0x2B0+var_198]
4305D4:  LDR             R0, [R0,#8]
4305D6:  ADD             R1, R11
4305D8:  VMOV            S0, R0
4305DC:  VCVT.F32.S32    S0, S0
4305E0:  LDRB            R1, [R1,#0x13]
4305E2:  SUBS            R1, #1
4305E4:  UXTB            R1, R1; float
4305E6:  CMP             R1, #9
4305E8:  BHI             loc_4305FA
4305EA:  VMUL.F32        S0, S0, S18
4305EE:  CMP.W           R0, #0x1C0
4305F2:  IT EQ
4305F4:  VMOVEQ.F32      S0, S20
4305F8:  B               loc_430610
4305FA:  VLDR            S2, =0.0022321
4305FE:  CMP.W           R0, #0x1C0
430602:  VMUL.F32        S0, S0, S2
430606:  VMOV.F32        S2, #1.0
43060A:  IT EQ
43060C:  VMOVEQ.F32      S0, S2
430610:  VMOV            R0, S0; this
430614:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
430618:  LDR             R0, [SP,#0x2B0+var_1A0]
43061A:  LDRD.W          R1, R0, [R0,#4]
43061E:  CMP.W           R1, #0x280
430622:  VMOV            S0, R1
430626:  VCVT.F32.S32    S0, S0
43062A:  LDRSB.W         R2, [R8,#0x121]
43062E:  LDR             R3, [SP,#0x2B0+var_1A4]; unsigned __int16 *
430630:  SMLABB.W        R2, R2, R9, R3
430634:  ADD.W           R1, R2, R11
430638:  VMUL.F32        S4, S0, S22
43063C:  IT EQ
43063E:  VMOVEQ.F32      S4, S21
430642:  CMP.W           R0, #0x1C0
430646:  LDRSH.W         R1, [R1,#0x18]
43064A:  VSUB.F32        S0, S0, S4
43064E:  VMOV            S2, R1
430652:  VCVT.F32.S32    S2, S2
430656:  BEQ             loc_430668
430658:  VDIV.F32        S2, S2, S28
43065C:  VMOV            S4, R0
430660:  VCVT.F32.S32    S4, S4
430664:  VMUL.F32        S2, S2, S4
430668:  VMOV            R0, S0; this
43066C:  MOV             R2, R5; CFont *
43066E:  VMOV            R1, S2; float
430672:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
430676:  CMP             R6, #0
430678:  BEQ.W           loc_43089E
43067C:  LDR.W           R0, [R8,#0x38]
430680:  LDR             R1, [SP,#0x2B0+var_144]
430682:  CMP             R1, R0
430684:  BNE.W           loc_43089E
430688:  LDRB.W          R0, [R8,#0x121]
43068C:  CMP             R0, #2
43068E:  IT NE
430690:  CMPNE           R0, #5
430692:  BEQ.W           loc_43089E
430696:  LSLS            R1, R4, #0x10
430698:  BNE.W           loc_4307EA
43069C:  LDR             R1, [SP,#0x2B0+var_23C]
43069E:  SXTB            R0, R0
4306A0:  SMLABB.W        R1, R0, R9, R1
4306A4:  ADD             R1, R11
4306A6:  LDRSB.W         R1, [R1,#0x1A]
4306AA:  CMP             R1, #2
4306AC:  BEQ             loc_4306EE
4306AE:  CMP             R1, #1
4306B0:  BNE             loc_430726
4306B2:  LDR             R1, [SP,#0x2B0+var_284]
4306B4:  LDR             R1, [R1,#4]
4306B6:  CMP.W           R1, #0x280
4306BA:  VMOV            S0, R1
4306BE:  VCVT.F32.S32    S0, S0
4306C2:  LDR             R2, [SP,#0x2B0+var_288]
4306C4:  SMLABB.W        R0, R0, R9, R2
4306C8:  ADD             R0, R11
4306CA:  VDIV.F32        S2, S0, S23
4306CE:  LDRSH.W         R0, [R0,#0x16]
4306D2:  VMOV            S4, R0
4306D6:  VMUL.F32        S0, S0, S22
4306DA:  VCVT.F32.S32    S4, S4
4306DE:  IT EQ
4306E0:  VMOVEQ.F32      S0, S21
4306E4:  VMUL.F32        S2, S2, S4
4306E8:  VSUB.F32        S0, S2, S0
4306EC:  B               loc_4307E2
4306EE:  LDR             R1, [SP,#0x2B0+var_27C]
4306F0:  LDR             R1, [R1,#4]
4306F2:  CMP.W           R1, #0x280
4306F6:  VMOV            S0, R1
4306FA:  VCVT.F32.S32    S0, S0
4306FE:  LDR             R2, [SP,#0x2B0+var_280]
430700:  SMLABB.W        R0, R0, R9, R2
430704:  ADD             R0, R11
430706:  VDIV.F32        S2, S0, S23
43070A:  LDRSH.W         R0, [R0,#0x16]
43070E:  VMOV            S4, R0
430712:  VMUL.F32        S0, S0, S22
430716:  VCVT.F32.S32    S4, S4
43071A:  IT EQ
43071C:  VMOVEQ.F32      S0, S21
430720:  VMUL.F32        S2, S2, S4
430724:  B               loc_4307DE
430726:  LDR             R1, [SP,#0x2B0+var_28C]
430728:  VMOV.F32        S24, S26
43072C:  VMOV.F32        S26, S20
430730:  VMOV.F32        S20, S18
430734:  LDR             R1, [R1,#4]
430736:  VMOV.F32        S18, S25
43073A:  VMOV.F32        S25, S22
43073E:  CMP.W           R1, #0x280
430742:  VMOV            S0, R1
430746:  MOV.W           R1, #(stderr+1); unsigned __int16 *
43074A:  VCVT.F32.S32    S0, S0
43074E:  LDR             R2, [SP,#0x2B0+var_290]
430750:  SMLABB.W        R0, R0, R9, R2
430754:  MOV.W           R2, #0; unsigned __int8
430758:  ADD             R0, R11
43075A:  VDIV.F32        S2, S0, S23
43075E:  LDRSH.W         R0, [R0,#0x16]
430762:  VMUL.F32        S27, S0, S22
430766:  VMOV            S0, R0
43076A:  MOV             R0, R6; this
43076C:  VMOV.F32        S22, S29
430770:  VCVT.F32.S32    S0, S0
430774:  IT EQ
430776:  VMOVEQ.F32      S27, S21
43077A:  VMOV.F32        S29, S17
43077E:  VMOV.F32        S17, S31
430782:  VMOV.F32        S31, S19
430786:  VMOV.F32        S19, S21
43078A:  VMOV.F32        S21, S23
43078E:  VMOV.F32        S23, S28
430792:  VMUL.F32        S28, S2, S0
430796:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
43079A:  VMOV            S0, R0
43079E:  VSUB.F32        S2, S28, S27
4307A2:  VMOV.F32        S28, S23
4307A6:  VMOV.F32        S23, S21
4307AA:  VMOV.F32        S21, S19
4307AE:  VMOV.F32        S19, S31
4307B2:  VMOV.F32        S31, S17
4307B6:  VMOV.F32        S17, S29
4307BA:  VMOV.F32        S29, S22
4307BE:  VMOV.F32        S22, S25
4307C2:  VMOV.F32        S25, S18
4307C6:  VMOV.F32        S18, S20
4307CA:  VMOV.F32        S20, S26
4307CE:  VMOV.F32        S26, S24
4307D2:  VLDR            S24, =70.0
4307D6:  VMUL.F32        S0, S0, S30
4307DA:  VMOV.F32        S27, #0.78125
4307DE:  VADD.F32        S0, S2, S0
4307E2:  VCVT.S32.F32    S0, S0
4307E6:  VMOV            R4, S0
4307EA:  LDRB.W          R0, [R8,#0x3D]
4307EE:  CMP             R0, #0
4307F0:  BEQ             loc_43089E
4307F2:  LDRB.W          R0, [R8,#0x121]
4307F6:  CMP             R0, #0x12
4307F8:  BHI             loc_430804
4307FA:  MOVS            R1, #1
4307FC:  LSLS            R1, R0
4307FE:  TST.W           R1, #0x46000
430802:  BNE             loc_43089E
430804:  LDR             R1, [SP,#0x2B0+var_274]
430806:  SXTB            R0, R0
430808:  ADD             R5, SP, #0x2B0+var_130
43080A:  MOVS            R3, #0xFF; unsigned __int8
43080C:  VLDR            S0, [R1,#8]
430810:  VCVT.F32.S32    S0, S0
430814:  LDR             R1, [R1,#4]
430816:  CMP.W           R1, #0x280
43081A:  VMOV            S2, R1
43081E:  MOV.W           R1, #0xFF; unsigned __int8
430822:  VCVT.F32.S32    S2, S2
430826:  LDR             R2, [SP,#0x2B0+var_278]
430828:  VDIV.F32        S0, S0, S28
43082C:  SMLABB.W        R0, R0, R9, R2
430830:  MOV.W           R2, #0xFF; unsigned __int8
430834:  ADD             R0, R11
430836:  LDRSH.W         R0, [R0,#0x18]
43083A:  VMOV            S8, R0
43083E:  SXTH            R0, R4
430840:  VMOV            S10, R0
430844:  MOV.W           R0, #0xFF
430848:  VCVT.F32.S32    S8, S8
43084C:  VCVT.F32.S32    S10, S10
430850:  VMUL.F32        S4, S2, S17
430854:  VMUL.F32        S6, S2, S19
430858:  ITT EQ
43085A:  VMOVEQ.F32      S4, S29
43085E:  VMOVEQ.F32      S6, S25
430862:  VMUL.F32        S2, S2, S31
430866:  IT EQ
430868:  VMOVEQ.F32      S2, S26
43086C:  STR             R0, [SP,#0x2B0+var_2B0]; int
43086E:  MOV             R0, R5; this
430870:  VMUL.F32        S0, S0, S8
430874:  VADD.F32        S6, S6, S10
430878:  VSTR            S10, [SP,#0x2B0+var_12C]
43087C:  VSUB.F32        S4, S0, S4
430880:  VADD.F32        S0, S0, S2
430884:  VSTR            S6, [SP,#0x2B0+var_124]
430888:  VSTR            S4, [SP,#0x2B0+var_120]
43088C:  VSTR            S0, [SP,#0x2B0+var_128]
430890:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
430894:  LDR             R0, [SP,#0x2B0+var_270]
430896:  ADD             R1, SP, #0x2B0+var_12C
430898:  MOV             R2, R5
43089A:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
43089E:  LDRD.W          R0, R1, [R8,#0x98]
4308A2:  CMP             R1, R0
4308A4:  BNE             loc_4308D8
4308A6:  LDRSB.W         R0, [R8,#0x121]
4308AA:  LDR             R2, [SP,#0x2B0+var_1B0]
4308AC:  LDR.W           R1, [R8,#0x38]
4308B0:  SMLABB.W        R0, R0, R9, R2
4308B4:  ADD.W           R1, R1, R1,LSL#3
4308B8:  ADD.W           R0, R0, R1,LSL#1
4308BC:  LDR.W           R1, =(aFedRes - 0x4308C6); "FED_RES"
4308C0:  ADDS            R0, #0xB; char *
4308C2:  ADD             R1, PC; "FED_RES"
4308C4:  BLX             strcmp
4308C8:  CBNZ            R0, loc_4308D8
4308CA:  LDR             R0, [SP,#0x2B0+var_1C8]
4308CC:  LDR             R0, [R0]
4308CE:  CMP             R0, #1
4308D0:  ITT EQ
4308D2:  MOVEQ           R0, R8; this
4308D4:  BLXEQ           j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
4308D8:  LDRD.W          R0, R1, [R8,#0x8C]
4308DC:  CMP             R1, R0
4308DE:  BNE             loc_430912
4308E0:  LDRSB.W         R0, [R8,#0x121]
4308E4:  LDR             R2, [SP,#0x2B0+var_1B4]
4308E6:  LDR.W           R1, [R8,#0x38]
4308EA:  SMLABB.W        R0, R0, R9, R2
4308EE:  ADD.W           R1, R1, R1,LSL#3
4308F2:  ADD.W           R0, R0, R1,LSL#1
4308F6:  LDR.W           R1, =(aFedAas - 0x430900); "FED_AAS"
4308FA:  ADDS            R0, #0xB; char *
4308FC:  ADD             R1, PC; "FED_AAS"
4308FE:  BLX             strcmp
430902:  CBNZ            R0, loc_430912
430904:  LDR             R0, [SP,#0x2B0+var_1C8]
430906:  LDR             R0, [R0]
430908:  CMP             R0, #1
43090A:  ITT EQ
43090C:  MOVEQ           R0, R8; this
43090E:  BLXEQ           j__ZN12CMenuManager15ResetHelperTextEv; CMenuManager::ResetHelperText(void)
430912:  LDRD.W          R0, R1, [R8,#0x98]
430916:  CMP             R1, R0
430918:  BEQ             loc_430946
43091A:  LDRSB.W         R0, [R8,#0x121]
43091E:  LDR             R2, [SP,#0x2B0+var_1C0]
430920:  LDR.W           R1, [R8,#0x38]
430924:  SMLABB.W        R0, R0, R9, R2
430928:  ADD.W           R1, R1, R1,LSL#3
43092C:  ADD.W           R0, R0, R1,LSL#1
430930:  LDR.W           R1, =(aFedRes - 0x43093A); "FED_RES"
430934:  ADDS            R0, #0xB; char *
430936:  ADD             R1, PC; "FED_RES"
430938:  BLX             strcmp
43093C:  CBNZ            R0, loc_430946
43093E:  MOV             R0, R8; this
430940:  MOVS            R1, #1; int
430942:  BLX             j__ZN12CMenuManager13SetHelperTextEi; CMenuManager::SetHelperText(int)
430946:  LDRD.W          R5, R6, [R8,#0x8C]
43094A:  CMP             R6, R5
43094C:  BEQ             loc_4309C2
43094E:  LDRSB.W         R0, [R8,#0x121]
430952:  LDR             R2, [SP,#0x2B0+var_1BC]
430954:  LDR.W           R1, [R8,#0x38]
430958:  SMLABB.W        R0, R0, R9, R2
43095C:  ADD.W           R1, R1, R1,LSL#3
430960:  ADD.W           R0, R0, R1,LSL#1
430964:  LDR.W           R1, =(aFedAas - 0x43096E); "FED_AAS"
430968:  ADDS            R0, #0xB; char *
43096A:  ADD             R1, PC; "FED_AAS"
43096C:  BLX             strcmp
430970:  CBZ             R0, loc_430978
430972:  CMP             R6, R5
430974:  BNE             loc_430988
430976:  B               loc_4309C2
430978:  MOV             R0, R8; this
43097A:  MOVS            R1, #1; int
43097C:  BLX             j__ZN12CMenuManager13SetHelperTextEi; CMenuManager::SetHelperText(int)
430980:  LDRD.W          R5, R6, [R8,#0x8C]
430984:  CMP             R6, R5
430986:  BEQ             loc_4309C2
430988:  LDRSB.W         R6, [R8,#0x121]
43098C:  LDR             R1, [SP,#0x2B0+var_1DC]
43098E:  LDR.W           R0, [R8,#0x38]
430992:  SMLABB.W        R1, R6, R9, R1
430996:  ADD.W           R0, R0, R0,LSL#3
43099A:  ADD.W           R0, R1, R0,LSL#1
43099E:  LDR.W           R1, =(aFedAas - 0x4309A8); "FED_AAS"
4309A2:  ADDS            R0, #0xB; char *
4309A4:  ADD             R1, PC; "FED_AAS"
4309A6:  BLX             strcmp
4309AA:  CBZ             R0, loc_4309C2
4309AC:  UXTB            R0, R6
4309AE:  CMP             R0, #0x1B
4309B0:  IT NE
4309B2:  CMPNE           R0, #4
4309B4:  BNE             loc_4309C2
4309B6:  MOV             R0, R8; this
4309B8:  MOVS            R1, #3; int
4309BA:  STR.W           R5, [R8,#0x90]
4309BE:  BLX             j__ZN12CMenuManager13SetHelperTextEi; CMenuManager::SetHelperText(int)
4309C2:  LDRD.W          R5, R0, [R8,#0x98]
4309C6:  CMP             R0, R5
4309C8:  BEQ             loc_430A04
4309CA:  LDRSB.W         R6, [R8,#0x121]
4309CE:  LDR             R1, [SP,#0x2B0+var_1B8]
4309D0:  LDR.W           R0, [R8,#0x38]
4309D4:  SMLABB.W        R1, R6, R9, R1
4309D8:  ADD.W           R0, R0, R0,LSL#3
4309DC:  ADD.W           R0, R1, R0,LSL#1
4309E0:  LDR.W           R1, =(aFedRes - 0x4309EA); "FED_RES"
4309E4:  ADDS            R0, #0xB; char *
4309E6:  ADD             R1, PC; "FED_RES"
4309E8:  BLX             strcmp
4309EC:  CBZ             R0, loc_430A04
4309EE:  UXTB            R0, R6
4309F0:  CMP             R0, #0x1B
4309F2:  IT NE
4309F4:  CMPNE           R0, #4
4309F6:  BNE             loc_430A04
4309F8:  MOV             R0, R8; this
4309FA:  MOVS            R1, #3; int
4309FC:  STR.W           R5, [R8,#0x9C]
430A00:  BLX             j__ZN12CMenuManager13SetHelperTextEi; CMenuManager::SetHelperText(int)
430A04:  LDRSB.W         R0, [R8,#0x121]
430A08:  MOV             R5, R10
430A0A:  LDR             R1, [SP,#0x2B0+var_170]
430A0C:  LDR             R6, [SP,#0x2B0+var_160]
430A0E:  SMLABB.W        R0, R0, R9, R1
430A12:  ADD             R0, R11
430A14:  LDRB            R0, [R0,#0xA]
430A16:  LDRD.W          R10, R4, [SP,#0x2B0+var_148]
430A1A:  SUBS            R0, #0x1C; switch 38 cases
430A1C:  CMP             R0, #0x25 ; '%'
430A1E:  BHI.W           def_430A22; jumptable 00430A22 default case, cases 30-63
430A22:  TBH.W           [PC,R0,LSL#1]; switch jump
430A26:  DCW 0x43; jump table for switch statement
430A28:  DCW 0xCC
430A2A:  DCW 0x4D8
430A2C:  DCW 0x4D8
430A2E:  DCW 0x4D8
430A30:  DCW 0x4D8
430A32:  DCW 0x4D8
430A34:  DCW 0x4D8
430A36:  DCW 0x4D8
430A38:  DCW 0x4D8
430A3A:  DCW 0x4D8
430A3C:  DCW 0x4D8
430A3E:  DCW 0x4D8
430A40:  DCW 0x4D8
430A42:  DCW 0x4D8
430A44:  DCW 0x4D8
430A46:  DCW 0x4D8
430A48:  DCW 0x4D8
430A4A:  DCW 0x4D8
430A4C:  DCW 0x4D8
430A4E:  DCW 0x4D8
430A50:  DCW 0x4D8
430A52:  DCW 0x4D8
430A54:  DCW 0x4D8
430A56:  DCW 0x4D8
430A58:  DCW 0x4D8
430A5A:  DCW 0x4D8
430A5C:  DCW 0x4D8
430A5E:  DCW 0x4D8
430A60:  DCW 0x4D8
430A62:  DCW 0x4D8
430A64:  DCW 0x4D8
430A66:  DCW 0x4D8
430A68:  DCW 0x4D8
430A6A:  DCW 0x4D8
430A6C:  DCW 0x4D8
430A6E:  DCW 0x155
430A70:  DCW 0x1DE
430A72:  ALIGN 4
430A74:  DCFS 70.0
430A78:  DCFS 500.0
430A7C:  DCFS 95.0
430A80:  DCFS 0.21205
430A84:  DCFS 0.0089286
430A88:  DCFS 0.044643
430A8C:  DCFS 0.0046875
430A90:  DCFS 0.015625
430A94:  DCFS 100.0
430A98:  DCFS 120.0
430A9C:  DCFS 125.0
430AA0:  DCFS 0.27902
430AA4:  DCFS 150.0
430AA8:  DCFS 0.005
430AAC:  LDR             R1, [SP,#0x2B0+var_1E0]; jumptable 00430A22 case 28
430AAE:  VMOV.F32        S6, #4.0
430AB2:  VLDR            S2, =500.0
430AB6:  LDRD.W          R0, R1, [R1,#4]
430ABA:  VLDR            S8, =95.0
430ABE:  CMP.W           R0, #0x280
430AC2:  VMOV            S0, R0; this
430AC6:  VCVT.F32.S32    S0, S0
430ACA:  VMUL.F32        S4, S0, S27
430ACE:  IT EQ
430AD0:  VMOVEQ.F32      S4, S2
430AD4:  VMOV.F32        S2, #20.0
430AD8:  CMP.W           R1, #0x1C0
430ADC:  BEQ             loc_430AFE
430ADE:  VMOV            S2, R1
430AE2:  VLDR            S8, =0.21205
430AE6:  VLDR            S10, =0.0089286
430AEA:  VCVT.F32.S32    S6, S2
430AEE:  VLDR            S2, =0.044643
430AF2:  VMUL.F32        S2, S6, S2
430AF6:  VMUL.F32        S8, S6, S8
430AFA:  VMUL.F32        S6, S6, S10
430AFE:  VMOV            R3, S6; float
430B02:  LDRSB.W         R6, [R8,#0x33]
430B06:  VMOV.F32        S6, #0.15625
430B0A:  CMP.W           R0, #0x280
430B0E:  VMOV            R1, S4; float
430B12:  VMOV            R2, S8; float
430B16:  VLDR            S8, =0.0046875
430B1A:  VMOV            S4, R6
430B1E:  VCVT.F32.S32    S4, S4
430B22:  VMUL.F32        S6, S0, S6
430B26:  VMUL.F32        S0, S0, S8
430B2A:  VLDR            S8, =0.015625
430B2E:  VMUL.F32        S4, S4, S8
430B32:  VLDR            S8, =100.0
430B36:  IT EQ
430B38:  VMOVEQ.F32      S6, S8
430B3C:  CMP.W           R0, #0x280
430B40:  VCVT.S32.F32    S0, S0
430B44:  VSTR            S2, [SP,#0x2B0+var_2B0]
430B48:  VMOV            R6, S0
430B4C:  IT EQ
430B4E:  MOVEQ           R6, #3
430B50:  STR             R6, [SP,#0x2B0+var_2A4]; float
430B52:  VSTR            S4, [SP,#0x2B0+var_2A8]
430B56:  VSTR            S6, [SP,#0x2B0+var_2AC]
430B5A:  BLX             j__ZN12CMenuManager13DisplaySliderEffffffi; CMenuManager::DisplaySlider(float,float,float,float,float,float,int)
430B5E:  LDR.W           R1, [R8,#0x38]
430B62:  CMP             R4, R1
430B64:  MOV.W           R1, #0
430B68:  IT NE
430B6A:  MOVNE           R1, #1
430B6C:  LDR             R2, [SP,#0x2B0+var_180]
430B6E:  LDR             R6, [SP,#0x2B0+var_160]
430B70:  ORRS            R1, R2
430B72:  BNE.W           def_430A22; jumptable 00430A22 default case, cases 30-63
430B76:  LDR             R1, [SP,#0x2B0+var_208]
430B78:  VLDR            S2, =0.0046875
430B7C:  LDRD.W          R2, R1, [R1,#4]
430B80:  CMP.W           R2, #0x280
430B84:  VMOV            S0, R2
430B88:  VCVT.F32.S32    S0, S0
430B8C:  VMUL.F32        S0, S0, S2
430B90:  VMOV            S2, R0
430B94:  VCVT.F32.S32    S27, S2
430B98:  VMOV.F32        S2, #3.0
430B9C:  IT EQ
430B9E:  VMOVEQ.F32      S0, S2
430BA2:  CMP.W           R1, #0x1C0
430BA6:  VSUB.F32        S0, S27, S0
430BAA:  VCVT.S32.F32    S0, S0
430BAE:  VMOV            R2, S0; int
430BB2:  BNE.W           loc_430EE6
430BB6:  MOVS            R3, #0x5F ; '_'
430BB8:  VLDR            S0, =120.0
430BBC:  B               loc_430F06
430BBE:  LDR             R1, [SP,#0x2B0+var_1E4]; jumptable 00430A22 case 29
430BC0:  VMOV.F32        S6, #4.0
430BC4:  VLDR            S2, =500.0
430BC8:  LDRD.W          R0, R1, [R1,#4]
430BCC:  VLDR            S8, =125.0
430BD0:  CMP.W           R0, #0x280
430BD4:  VMOV            S0, R0; this
430BD8:  VCVT.F32.S32    S0, S0
430BDC:  VMUL.F32        S4, S0, S27
430BE0:  IT EQ
430BE2:  VMOVEQ.F32      S4, S2
430BE6:  VMOV.F32        S2, #20.0
430BEA:  CMP.W           R1, #0x1C0
430BEE:  BEQ             loc_430C10
430BF0:  VMOV            S2, R1
430BF4:  VLDR            S8, =0.27902
430BF8:  VLDR            S10, =0.0089286
430BFC:  VCVT.F32.S32    S6, S2
430C00:  VLDR            S2, =0.044643
430C04:  VMUL.F32        S2, S6, S2
430C08:  VMUL.F32        S8, S6, S8
430C0C:  VMUL.F32        S6, S6, S10
430C10:  VMOV            R3, S6; float
430C14:  LDRSB.W         R6, [R8,#0x32]
430C18:  VMOV.F32        S6, #0.15625
430C1C:  CMP.W           R0, #0x280
430C20:  VMOV            R1, S4; float
430C24:  VMOV            R2, S8; float
430C28:  VLDR            S8, =0.0046875
430C2C:  VMOV            S4, R6
430C30:  VCVT.F32.S32    S4, S4
430C34:  VMUL.F32        S6, S0, S6
430C38:  VMUL.F32        S0, S0, S8
430C3C:  VLDR            S8, =0.015625
430C40:  VMUL.F32        S4, S4, S8
430C44:  VLDR            S8, =100.0
430C48:  IT EQ
430C4A:  VMOVEQ.F32      S6, S8
430C4E:  CMP.W           R0, #0x280
430C52:  VCVT.S32.F32    S0, S0
430C56:  VSTR            S2, [SP,#0x2B0+var_2B0]
430C5A:  VMOV            R6, S0
430C5E:  IT EQ
430C60:  MOVEQ           R6, #3
430C62:  STR             R6, [SP,#0x2B0+var_2A4]; float
430C64:  VSTR            S4, [SP,#0x2B0+var_2A8]
430C68:  VSTR            S6, [SP,#0x2B0+var_2AC]
430C6C:  BLX             j__ZN12CMenuManager13DisplaySliderEffffffi; CMenuManager::DisplaySlider(float,float,float,float,float,float,int)
430C70:  LDR.W           R1, [R8,#0x38]
430C74:  CMP             R4, R1
430C76:  MOV.W           R1, #0
430C7A:  IT NE
430C7C:  MOVNE           R1, #1
430C7E:  LDR             R2, [SP,#0x2B0+var_180]
430C80:  LDR             R6, [SP,#0x2B0+var_160]
430C82:  ORRS            R1, R2
430C84:  BNE.W           def_430A22; jumptable 00430A22 default case, cases 30-63
430C88:  LDR             R1, [SP,#0x2B0+var_20C]
430C8A:  VLDR            S2, =0.0046875
430C8E:  LDRD.W          R2, R1, [R1,#4]
430C92:  CMP.W           R2, #0x280
430C96:  VMOV            S0, R2
430C9A:  VCVT.F32.S32    S0, S0
430C9E:  VMUL.F32        S0, S0, S2
430CA2:  VMOV            S2, R0
430CA6:  VCVT.F32.S32    S27, S2
430CAA:  VMOV.F32        S2, #3.0
430CAE:  IT EQ
430CB0:  VMOVEQ.F32      S0, S2
430CB4:  CMP.W           R1, #0x1C0
430CB8:  VSUB.F32        S0, S27, S0
430CBC:  VCVT.S32.F32    S0, S0
430CC0:  VMOV            R2, S0; int
430CC4:  BNE.W           loc_430F20
430CC8:  MOVS            R3, #0x7D ; '}'
430CCA:  VLDR            S0, =150.0
430CCE:  B               loc_430F40
430CD0:  LDR             R1, [SP,#0x2B0+var_1E8]; jumptable 00430A22 case 64
430CD2:  VMOV.F32        S6, #4.0
430CD6:  VLDR            S2, =500.0
430CDA:  LDRD.W          R0, R1, [R1,#4]
430CDE:  VLDR            S8, =125.0
430CE2:  CMP.W           R0, #0x280
430CE6:  VMOV            S0, R0; this
430CEA:  VCVT.F32.S32    S0, S0
430CEE:  VMUL.F32        S4, S0, S27
430CF2:  IT EQ
430CF4:  VMOVEQ.F32      S4, S2
430CF8:  VMOV.F32        S2, #20.0
430CFC:  CMP.W           R1, #0x1C0
430D00:  BEQ             loc_430D22
430D02:  VMOV            S2, R1
430D06:  VLDR            S8, =0.27902
430D0A:  VLDR            S10, =0.0089286
430D0E:  VCVT.F32.S32    S6, S2
430D12:  VLDR            S2, =0.044643
430D16:  VMUL.F32        S2, S6, S2
430D1A:  VMUL.F32        S8, S6, S8
430D1E:  VMUL.F32        S6, S6, S10
430D22:  VMOV.F32        S12, #-0.875
430D26:  VLDR            S10, [R8,#0x28]
430D2A:  VMOV            R1, S4; float
430D2E:  CMP.W           R0, #0x280
430D32:  VMOV.F32        S4, #0.15625
430D36:  VMOV            R3, S6; float
430D3A:  VLDR            S6, =0.0046875
430D3E:  VMOV            R2, S8; float
430D42:  VADD.F32        S10, S10, S12
430D46:  VMOV.F32        S12, #0.875
430D4A:  VMUL.F32        S4, S0, S4
430D4E:  VMUL.F32        S0, S0, S6
430D52:  VLDR            S6, =100.0
430D56:  IT EQ
430D58:  VMOVEQ.F32      S4, S6
430D5C:  CMP.W           R0, #0x280
430D60:  VDIV.F32        S10, S10, S12
430D64:  VCVT.S32.F32    S0, S0
430D68:  VSTR            S2, [SP,#0x2B0+var_2B0]
430D6C:  VMOV            R6, S0
430D70:  IT EQ
430D72:  MOVEQ           R6, #3
430D74:  STR             R6, [SP,#0x2B0+var_2A4]; float
430D76:  VSTR            S4, [SP,#0x2B0+var_2AC]
430D7A:  VSTR            S10, [SP,#0x2B0+var_2A8]
430D7E:  BLX             j__ZN12CMenuManager13DisplaySliderEffffffi; CMenuManager::DisplaySlider(float,float,float,float,float,float,int)
430D82:  LDR.W           R1, [R8,#0x38]
430D86:  CMP             R4, R1
430D88:  MOV.W           R1, #0
430D8C:  IT NE
430D8E:  MOVNE           R1, #1
430D90:  LDR             R2, [SP,#0x2B0+var_180]
430D92:  LDR             R6, [SP,#0x2B0+var_160]
430D94:  ORRS            R1, R2
430D96:  BNE.W           def_430A22; jumptable 00430A22 default case, cases 30-63
430D9A:  LDR             R1, [SP,#0x2B0+var_210]
430D9C:  VLDR            S2, =0.0046875
430DA0:  LDRD.W          R2, R1, [R1,#4]
430DA4:  CMP.W           R2, #0x280
430DA8:  VMOV            S0, R2
430DAC:  VCVT.F32.S32    S0, S0
430DB0:  VMUL.F32        S0, S0, S2
430DB4:  VMOV            S2, R0
430DB8:  VCVT.F32.S32    S27, S2
430DBC:  VMOV.F32        S2, #3.0
430DC0:  IT EQ
430DC2:  VMOVEQ.F32      S0, S2
430DC6:  CMP.W           R1, #0x1C0
430DCA:  VSUB.F32        S0, S27, S0
430DCE:  VCVT.S32.F32    S0, S0
430DD2:  VMOV            R2, S0; int
430DD6:  BNE.W           loc_430F5A
430DDA:  MOVS            R3, #0x7D ; '}'
430DDC:  VLDR            S0, =150.0
430DE0:  B               loc_430F7A
430DE2:  LDR             R1, [SP,#0x2B0+var_1EC]; jumptable 00430A22 case 65
430DE4:  VMOV.F32        S6, #4.0
430DE8:  VLDR            S2, =500.0
430DEC:  LDRD.W          R0, R1, [R1,#4]
430DF0:  VLDR            S8, =125.0
430DF4:  CMP.W           R0, #0x280
430DF8:  VMOV            S0, R0
430DFC:  VCVT.F32.S32    S0, S0
430E00:  VMUL.F32        S4, S0, S27
430E04:  IT EQ
430E06:  VMOVEQ.F32      S4, S2
430E0A:  VMOV.F32        S2, #20.0
430E0E:  CMP.W           R1, #0x1C0
430E12:  BEQ             loc_430E34
430E14:  VMOV            S2, R1
430E18:  VLDR            S8, =0.27902
430E1C:  VLDR            S10, =0.0089286
430E20:  VCVT.F32.S32    S6, S2
430E24:  VLDR            S2, =0.044643
430E28:  VMUL.F32        S2, S6, S2
430E2C:  VMUL.F32        S8, S6, S8
430E30:  VMUL.F32        S6, S6, S10
430E34:  LDR             R1, [SP,#0x2B0+var_1F0]
430E36:  VMOV            R3, S6; float
430E3A:  VLDR            S12, =0.005
430E3E:  VMOV            R2, S8; float
430E42:  VLDR            S6, =0.0046875
430E46:  CMP.W           R0, #0x280
430E4A:  VLDR            S10, [R1]
430E4E:  VMOV            R1, S4; float
430E52:  VMOV.F32        S4, #0.15625
430E56:  VDIV.F32        S10, S10, S12
430E5A:  VMUL.F32        S4, S0, S4
430E5E:  VMUL.F32        S0, S0, S6
430E62:  VLDR            S6, =100.0
430E66:  IT EQ
430E68:  VMOVEQ.F32      S4, S6
430E6C:  VCVT.S32.F32    S0, S0
430E70:  VMOV            R0, S0
430E74:  IT EQ
430E76:  MOVEQ           R0, #(stderr+3); this
430E78:  STR             R0, [SP,#0x2B0+var_2A4]; float
430E7A:  VSTR            S2, [SP,#0x2B0+var_2B0]
430E7E:  VSTR            S4, [SP,#0x2B0+var_2AC]
430E82:  VSTR            S10, [SP,#0x2B0+var_2A8]
430E86:  BLX             j__ZN12CMenuManager13DisplaySliderEffffffi; CMenuManager::DisplaySlider(float,float,float,float,float,float,int)
430E8A:  LDR.W           R1, [R8,#0x38]
430E8E:  CMP             R4, R1
430E90:  MOV.W           R1, #0
430E94:  IT NE
430E96:  MOVNE           R1, #1
430E98:  LDR             R2, [SP,#0x2B0+var_180]
430E9A:  ORRS            R1, R2
430E9C:  BNE.W           def_430A22; jumptable 00430A22 default case, cases 30-63
430EA0:  LDR             R1, [SP,#0x2B0+var_214]
430EA2:  VLDR            S2, =0.0046875
430EA6:  LDRD.W          R2, R1, [R1,#4]
430EAA:  CMP.W           R2, #0x280
430EAE:  VMOV            S0, R2
430EB2:  VCVT.F32.S32    S0, S0
430EB6:  VMUL.F32        S0, S0, S2
430EBA:  VMOV            S2, R0
430EBE:  VCVT.F32.S32    S27, S2
430EC2:  VMOV.F32        S2, #3.0
430EC6:  IT EQ
430EC8:  VMOVEQ.F32      S0, S2
430ECC:  CMP.W           R1, #0x1C0
430ED0:  VSUB.F32        S0, S27, S0
430ED4:  VCVT.S32.F32    S0, S0
430ED8:  VMOV            R2, S0; int
430EDC:  BNE             loc_430F92
430EDE:  MOVS            R3, #0x7D ; '}'
430EE0:  VLDR            S0, =150.0
430EE4:  B               loc_430FB2
430EE6:  VMOV            S0, R1
430EEA:  VLDR            S2, =0.21205
430EEE:  VLDR            S4, =0.26786
430EF2:  VCVT.F32.S32    S0, S0
430EF6:  VMUL.F32        S2, S0, S2
430EFA:  VMUL.F32        S0, S0, S4
430EFE:  VCVT.S32.F32    S2, S2
430F02:  VMOV            R3, S2; int
430F06:  VCVT.S32.F32    S0, S0
430F0A:  MOV             R0, R8; this
430F0C:  MOVS            R1, #0; int
430F0E:  VSTR            S0, [SP,#0x2B0+var_2B0]
430F12:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
430F16:  CMP             R0, #0
430F18:  BEQ             loc_430FD6
430F1A:  LDR             R0, [SP,#0x2B0+var_1C4]
430F1C:  MOVS            R1, #0xB
430F1E:  B               loc_430FC8
430F20:  VMOV            S0, R1
430F24:  VLDR            S2, =0.27902
430F28:  VLDR            S4, =0.33482
430F2C:  VCVT.F32.S32    S0, S0
430F30:  VMUL.F32        S2, S0, S2
430F34:  VMUL.F32        S0, S0, S4
430F38:  VCVT.S32.F32    S2, S2
430F3C:  VMOV            R3, S2; int
430F40:  VCVT.S32.F32    S0, S0
430F44:  MOV             R0, R8; this
430F46:  MOVS            R1, #0; int
430F48:  VSTR            S0, [SP,#0x2B0+var_2B0]
430F4C:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
430F50:  CMP             R0, #0
430F52:  BEQ             loc_430FEE
430F54:  LDR             R0, [SP,#0x2B0+var_1C4]
430F56:  MOVS            R1, #0xD
430F58:  B               loc_430FC8
430F5A:  VMOV            S0, R1
430F5E:  VLDR            S2, =0.27902
430F62:  VLDR            S4, =0.33482
430F66:  VCVT.F32.S32    S0, S0
430F6A:  VMUL.F32        S2, S0, S2
430F6E:  VMUL.F32        S0, S0, S4
430F72:  VCVT.S32.F32    S2, S2
430F76:  VMOV            R3, S2; int
430F7A:  VCVT.S32.F32    S0, S0
430F7E:  MOV             R0, R8; this
430F80:  MOVS            R1, #0; int
430F82:  VSTR            S0, [SP,#0x2B0+var_2B0]
430F86:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
430F8A:  CBZ             R0, loc_431006
430F8C:  LDR             R0, [SP,#0x2B0+var_1C4]
430F8E:  MOVS            R1, #9
430F90:  B               loc_430FC8
430F92:  VMOV            S0, R1
430F96:  VLDR            S2, =0.27902
430F9A:  VLDR            S4, =0.33482
430F9E:  VCVT.F32.S32    S0, S0
430FA2:  VMUL.F32        S2, S0, S2
430FA6:  VMUL.F32        S0, S0, S4
430FAA:  VCVT.S32.F32    S2, S2
430FAE:  VMOV            R3, S2; int
430FB2:  VCVT.S32.F32    S0, S0
430FB6:  MOV             R0, R8; this
430FB8:  MOVS            R1, #0; int
430FBA:  VSTR            S0, [SP,#0x2B0+var_2B0]
430FBE:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
430FC2:  CBZ             R0, loc_43101E
430FC4:  LDR             R0, [SP,#0x2B0+var_1C4]
430FC6:  MOVS            R1, #0xF
430FC8:  STR             R1, [R0]
430FCA:  VMOV.F32        S27, #0.78125
430FCE:  CMP             R5, #0
430FD0:  BNE.W           loc_4313D8
430FD4:  B               loc_4313FA
430FD6:  LDR             R0, [SP,#0x2B0+var_240]
430FD8:  LDR             R0, [R0,#4]
430FDA:  CMP.W           R0, #0x280
430FDE:  BNE             loc_431036
430FE0:  VMOV.F32        S0, #3.0
430FE4:  VMOV.F32        S2, S23
430FE8:  VADD.F32        S0, S27, S0
430FEC:  B               loc_431052
430FEE:  LDR             R0, [SP,#0x2B0+var_248]
430FF0:  LDR             R0, [R0,#4]
430FF2:  CMP.W           R0, #0x280
430FF6:  BNE             loc_431078
430FF8:  VMOV.F32        S0, #3.0
430FFC:  VMOV.F32        S2, S23
431000:  VADD.F32        S0, S27, S0
431004:  B               loc_431094
431006:  LDR             R0, [SP,#0x2B0+var_250]
431008:  LDR             R0, [R0,#4]
43100A:  CMP.W           R0, #0x280
43100E:  BNE             loc_4310BC
431010:  VMOV.F32        S0, #3.0
431014:  VMOV.F32        S2, S23
431018:  VADD.F32        S0, S27, S0
43101C:  B               loc_4310D8
43101E:  LDR             R0, [SP,#0x2B0+var_258]
431020:  LDR             R0, [R0,#4]
431022:  CMP.W           R0, #0x280
431026:  BNE             loc_431100
431028:  VMOV.F32        S0, #3.0
43102C:  VMOV.F32        S2, S23
431030:  VADD.F32        S0, S27, S0
431034:  B               loc_43111C
431036:  VMOV            S0, R0
43103A:  VCVT.F32.S32    S2, S0
43103E:  VLDR            S0, =0.0046875
431042:  VDIV.F32        S4, S2, S23
431046:  VMUL.F32        S0, S2, S0
43104A:  VMUL.F32        S2, S4, S2
43104E:  VADD.F32        S0, S0, S27
431052:  VCVT.S32.F32    S2, S2
431056:  VCVT.S32.F32    S0, S0
43105A:  LDR             R0, [SP,#0x2B0+var_244]
43105C:  VMOV.F32        S27, #0.78125
431060:  LDR             R0, [R0,#8]
431062:  CMP.W           R0, #0x1C0
431066:  VMOV            R2, S2; int
43106A:  VMOV            R1, S0; int
43106E:  BNE             loc_431144
431070:  MOVS            R3, #0x5F ; '_'
431072:  VLDR            S0, =120.0
431076:  B               loc_431164
431078:  VMOV            S0, R0
43107C:  VCVT.F32.S32    S2, S0
431080:  VLDR            S0, =0.0046875
431084:  VDIV.F32        S4, S2, S23
431088:  VMUL.F32        S0, S2, S0
43108C:  VMUL.F32        S2, S4, S2
431090:  VADD.F32        S0, S0, S27
431094:  VCVT.S32.F32    S2, S2
431098:  VCVT.S32.F32    S0, S0
43109C:  LDR             R0, [SP,#0x2B0+var_24C]
43109E:  VMOV.F32        S27, #0.78125
4310A2:  LDR             R0, [R0,#8]
4310A4:  CMP.W           R0, #0x1C0
4310A8:  VMOV            R2, S2; int
4310AC:  VMOV            R1, S0; int
4310B0:  BNE.W           loc_43123C
4310B4:  MOVS            R3, #0x7D ; '}'
4310B6:  VLDR            S0, =150.0
4310BA:  B               loc_43125C
4310BC:  VMOV            S0, R0
4310C0:  VCVT.F32.S32    S2, S0
4310C4:  VLDR            S0, =0.0046875
4310C8:  VDIV.F32        S4, S2, S23
4310CC:  VMUL.F32        S0, S2, S0
4310D0:  VMUL.F32        S2, S4, S2
4310D4:  VADD.F32        S0, S0, S27
4310D8:  VCVT.S32.F32    S2, S2
4310DC:  VCVT.S32.F32    S0, S0
4310E0:  LDR             R0, [SP,#0x2B0+var_254]
4310E2:  VMOV.F32        S27, #0.78125
4310E6:  LDR             R0, [R0,#8]
4310E8:  CMP.W           R0, #0x1C0
4310EC:  VMOV            R2, S2; int
4310F0:  VMOV            R1, S0; int
4310F4:  BNE.W           loc_4312AC
4310F8:  MOVS            R3, #0x7D ; '}'
4310FA:  VLDR            S0, =150.0
4310FE:  B               loc_4312CC
431100:  VMOV            S0, R0
431104:  VCVT.F32.S32    S2, S0
431108:  VLDR            S0, =0.0046875
43110C:  VDIV.F32        S4, S2, S23
431110:  VMUL.F32        S0, S2, S0
431114:  VMUL.F32        S2, S4, S2
431118:  VADD.F32        S0, S0, S27
43111C:  VCVT.S32.F32    S2, S2
431120:  VCVT.S32.F32    S0, S0
431124:  LDR             R0, [SP,#0x2B0+var_25C]
431126:  VMOV.F32        S27, #0.78125
43112A:  LDR             R0, [R0,#8]
43112C:  CMP.W           R0, #0x1C0
431130:  VMOV            R2, S2; int
431134:  VMOV            R1, S0; int
431138:  BNE.W           loc_43136A
43113C:  MOVS            R3, #0x7D ; '}'
43113E:  VLDR            S0, =150.0
431142:  B               loc_43138A
431144:  VMOV            S0, R0
431148:  VLDR            S2, =0.21205
43114C:  VLDR            S4, =0.26786
431150:  VCVT.F32.S32    S0, S0
431154:  VMUL.F32        S2, S0, S2
431158:  VMUL.F32        S0, S0, S4
43115C:  VCVT.S32.F32    S2, S2
431160:  VMOV            R3, S2; int
431164:  VCVT.S32.F32    S0, S0
431168:  MOV             R0, R8; this
43116A:  VSTR            S0, [SP,#0x2B0+var_2B0]
43116E:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
431172:  CMP             R0, #0
431174:  BEQ.W           loc_4313D0
431178:  LDR             R0, [SP,#0x2B0+var_1C4]
43117A:  MOVS            R1, #0xA
43117C:  VLDR            S4, =500.0
431180:  STR             R1, [R0]
431182:  LDR             R0, [SP,#0x2B0+var_260]
431184:  LDR             R0, [R0,#4]
431186:  CMP.W           R0, #0x280
43118A:  VMOV            S0, R0
43118E:  VCVT.F32.S32    S0, S0
431192:  VLDR            S2, [R8,#0x80]
431196:  VCVT.F32.S32    S2, S2
43119A:  VMUL.F32        S0, S0, S27
43119E:  IT EQ
4311A0:  VMOVEQ.F32      S0, S4
4311A4:  VCMPE.F32       S0, S2
4311A8:  VMRS            APSR_nzcv, FPSCR
4311AC:  BGT.W           loc_4313D0
4311B0:  LDR             R0, [SP,#0x2B0+var_294]
4311B2:  VLDR            S6, =95.0
4311B6:  LDR             R0, [R0,#8]
4311B8:  CMP.W           R0, #0x1C0
4311BC:  VMOV            S0, R0
4311C0:  VCVT.F32.S32    S2, S0
4311C4:  VLDR            S0, =0.21205
4311C8:  VMUL.F32        S4, S2, S0
4311CC:  VLDR            S0, [R8,#0x84]
4311D0:  VCVT.F32.S32    S0, S0
4311D4:  IT EQ
4311D6:  VMOVEQ.F32      S4, S6
4311DA:  VCMPE.F32       S4, S0
4311DE:  VMRS            APSR_nzcv, FPSCR
4311E2:  BGT.W           loc_4313D0
4311E6:  VLDR            S4, =0.26786
4311EA:  CMP.W           R0, #0x1C0
4311EE:  VMUL.F32        S2, S2, S4
4311F2:  VLDR            S4, =120.0
4311F6:  B               loc_431358
4311F8:  DCFS 0.0046875
4311FC:  DCFS 150.0
431200:  DCFS 0.21205
431204:  DCFS 0.26786
431208:  DCFS 0.27902
43120C:  DCFS 0.33482
431210:  DCFS 120.0
431214:  DCD TheText_ptr - 0x4304F0
431218:  DCD TheText_ptr - 0x4304F8
43121C:  DCD TheText_ptr - 0x430500
431220:  DCD TheText_ptr - 0x430508
431224:  DCD TheText_ptr - 0x430510
431228:  DCD TheText_ptr - 0x430518
43122C:  DCD TheText_ptr - 0x430520
431230:  DCD TheText_ptr - 0x430528
431234:  DCD TheText_ptr - 0x430530
431238:  DCD TheText_ptr - 0x430538
43123C:  VMOV            S0, R0
431240:  VLDR            S2, =0.27902
431244:  VLDR            S4, =0.33482
431248:  VCVT.F32.S32    S0, S0
43124C:  VMUL.F32        S2, S0, S2
431250:  VMUL.F32        S0, S0, S4
431254:  VCVT.S32.F32    S2, S2
431258:  VMOV            R3, S2; int
43125C:  VCVT.S32.F32    S0, S0
431260:  MOV             R0, R8; this
431262:  VSTR            S0, [SP,#0x2B0+var_2B0]
431266:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
43126A:  CMP             R0, #0
43126C:  BEQ.W           loc_4313D0
431270:  LDR             R0, [SP,#0x2B0+var_1C4]
431272:  MOVS            R1, #0xC
431274:  VLDR            S4, =500.0
431278:  STR             R1, [R0]
43127A:  LDR             R0, [SP,#0x2B0+var_264]
43127C:  LDR             R0, [R0,#4]
43127E:  CMP.W           R0, #0x280
431282:  VMOV            S0, R0
431286:  VCVT.F32.S32    S0, S0
43128A:  VLDR            S2, [R8,#0x80]
43128E:  VCVT.F32.S32    S2, S2
431292:  VMUL.F32        S0, S0, S27
431296:  IT EQ
431298:  VMOVEQ.F32      S0, S4
43129C:  VCMPE.F32       S0, S2
4312A0:  VMRS            APSR_nzcv, FPSCR
4312A4:  BGT.W           loc_4313D0
4312A8:  LDR             R0, [SP,#0x2B0+var_298]
4312AA:  B               loc_431316
4312AC:  VMOV            S0, R0
4312B0:  VLDR            S2, =0.27902
4312B4:  VLDR            S4, =0.33482
4312B8:  VCVT.F32.S32    S0, S0
4312BC:  VMUL.F32        S2, S0, S2
4312C0:  VMUL.F32        S0, S0, S4
4312C4:  VCVT.S32.F32    S2, S2
4312C8:  VMOV            R3, S2; int
4312CC:  VCVT.S32.F32    S0, S0
4312D0:  MOV             R0, R8; this
4312D2:  VSTR            S0, [SP,#0x2B0+var_2B0]
4312D6:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
4312DA:  CMP             R0, #0
4312DC:  BEQ             loc_4313D0
4312DE:  LDR             R0, [SP,#0x2B0+var_1C4]
4312E0:  MOVS            R1, #8
4312E2:  VLDR            S4, =500.0
4312E6:  STR             R1, [R0]
4312E8:  LDR             R0, [SP,#0x2B0+var_268]
4312EA:  LDR             R0, [R0,#4]
4312EC:  CMP.W           R0, #0x280
4312F0:  VMOV            S0, R0
4312F4:  VCVT.F32.S32    S0, S0
4312F8:  VLDR            S2, [R8,#0x80]
4312FC:  VCVT.F32.S32    S2, S2
431300:  VMUL.F32        S0, S0, S27
431304:  IT EQ
431306:  VMOVEQ.F32      S0, S4
43130A:  VCMPE.F32       S0, S2
43130E:  VMRS            APSR_nzcv, FPSCR
431312:  BGT             loc_4313D0
431314:  LDR             R0, [SP,#0x2B0+var_29C]
431316:  LDR             R0, [R0,#8]
431318:  VLDR            S6, =125.0
43131C:  CMP.W           R0, #0x1C0
431320:  VMOV            S0, R0
431324:  VCVT.F32.S32    S2, S0
431328:  VLDR            S0, =0.27902
43132C:  VMUL.F32        S4, S2, S0
431330:  VLDR            S0, [R8,#0x84]
431334:  VCVT.F32.S32    S0, S0
431338:  IT EQ
43133A:  VMOVEQ.F32      S4, S6
43133E:  VCMPE.F32       S4, S0
431342:  VMRS            APSR_nzcv, FPSCR
431346:  BGT             loc_4313D0
431348:  VLDR            S4, =0.33482
43134C:  CMP.W           R0, #0x1C0
431350:  VMUL.F32        S2, S2, S4
431354:  VLDR            S4, =150.0
431358:  IT EQ
43135A:  VMOVEQ.F32      S2, S4
43135E:  VCMPE.F32       S2, S0
431362:  VMRS            APSR_nzcv, FPSCR
431366:  BLT             loc_4313D0
431368:  B               def_430A22; jumptable 00430A22 default case, cases 30-63
43136A:  VMOV            S0, R0
43136E:  VLDR            S2, =0.27902
431372:  VLDR            S4, =0.33482
431376:  VCVT.F32.S32    S0, S0
43137A:  VMUL.F32        S2, S0, S2
43137E:  VMUL.F32        S0, S0, S4
431382:  VCVT.S32.F32    S2, S2
431386:  VMOV            R3, S2; int
43138A:  VCVT.S32.F32    S0, S0
43138E:  MOV             R0, R8; this
431390:  VSTR            S0, [SP,#0x2B0+var_2B0]
431394:  BLX             j__ZN12CMenuManager10CheckHoverEiiii; CMenuManager::CheckHover(int,int,int,int)
431398:  CBZ             R0, loc_4313D0
43139A:  LDR             R0, [SP,#0x2B0+var_1C4]
43139C:  MOVS            R1, #0xE
43139E:  VLDR            S4, =500.0
4313A2:  STR             R1, [R0]
4313A4:  LDR             R0, [SP,#0x2B0+var_26C]
4313A6:  LDR             R0, [R0,#4]
4313A8:  CMP.W           R0, #0x280
4313AC:  VMOV            S0, R0
4313B0:  VCVT.F32.S32    S0, S0
4313B4:  VLDR            S2, [R8,#0x80]
4313B8:  VCVT.F32.S32    S2, S2
4313BC:  VMUL.F32        S0, S0, S27
4313C0:  IT EQ
4313C2:  VMOVEQ.F32      S0, S4
4313C6:  VCMPE.F32       S0, S2
4313CA:  VMRS            APSR_nzcv, FPSCR
4313CE:  BLE             def_430A22; jumptable 00430A22 default case, cases 30-63
4313D0:  LDR             R0, [SP,#0x2B0+var_1C4]
4313D2:  MOVS            R1, #0x10
4313D4:  STR             R1, [R0]
4313D6:  CBZ             R5, loc_4313FA; jumptable 00430A22 default case, cases 30-63
4313D8:  VMOV            R1, S16; float
4313DC:  MOVS            R0, #0x42700000; this
4313E2:  MOV             R2, R5; float
4313E4:  BLX             j__ZN5CFont14GetNumberLinesEffPt; CFont::GetNumberLines(float,float,ushort *)
4313E8:  MOVS            R1, #0x1D
4313EA:  SMULBB.W        R0, R0, R1
4313EE:  VMOV            S0, R0
4313F2:  VCVT.F32.U32    S0, S0
4313F6:  VADD.F32        S16, S16, S0
4313FA:  LDRSB.W         R0, [R8,#0x121]
4313FE:  VADD.F32        S0, S16, S24
431402:  LDR             R1, [SP,#0x2B0+var_174]
431404:  SMLABB.W        R1, R0, R9, R1
431408:  UXTB            R0, R0
43140A:  ADD             R1, R11
43140C:  LDRB            R1, [R1,#0xA]
43140E:  CMP             R1, #0x20 ; ' '
431410:  IT EQ
431412:  VMOVEQ.F32      S16, S0
431416:  ADD.W           R11, R11, #0x12
43141A:  ADDW            R10, R10, #0x105
43141E:  ADDS            R4, #1
431420:  CMP.W           R11, #0xD8
431424:  BNE.W           loc_42F90E
431428:  ADD.W           SP, SP, #0x250
43142C:  VPOP            {D8-D15}
431430:  ADD             SP, SP, #4
431432:  POP.W           {R8-R11}
431436:  POP             {R4-R7,PC}
