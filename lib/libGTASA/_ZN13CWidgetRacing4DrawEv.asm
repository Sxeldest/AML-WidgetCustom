; =========================================================
; Game Engine Function: _ZN13CWidgetRacing4DrawEv
; Address            : 0x2BF254 - 0x2BF542
; =========================================================

2BF254:  PUSH            {R4-R7,LR}
2BF256:  ADD             R7, SP, #0xC
2BF258:  PUSH.W          {R8-R11}
2BF25C:  SUB             SP, SP, #4
2BF25E:  VPUSH           {D8-D11}
2BF262:  SUB             SP, SP, #0x140
2BF264:  MOV             R4, R0
2BF266:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BF26C)
2BF268:  ADD             R0, PC; __stack_chk_guard_ptr
2BF26A:  LDR             R0, [R0]; __stack_chk_guard
2BF26C:  LDR             R0, [R0]
2BF26E:  STR             R0, [SP,#0x180+var_44]
2BF270:  LDRB.W          R5, [R4,#0x4C]
2BF274:  CMP             R5, #0
2BF276:  BEQ.W           loc_2BF520
2BF27A:  MOVS            R0, #0; this
2BF27C:  MOVS            R1, #0; unsigned __int8
2BF27E:  VLDR            S16, [R4,#0x24]
2BF282:  VLDR            S18, [R4,#0x2C]
2BF286:  LDR.W           R6, [R4,#0x9C]
2BF28A:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
2BF28E:  MOVS            R0, #(stderr+1); this
2BF290:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
2BF294:  MOVS            R0, #(stderr+2); this
2BF296:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
2BF29A:  MOVS            R0, #(stderr+1); this
2BF29C:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2BF2A0:  MOVS            R0, #0; this
2BF2A2:  BLX             j__ZN5CFont19SetRightJustifyWrapEf; CFont::SetRightJustifyWrap(float)
2BF2A6:  MOVS            R0, #0; this
2BF2A8:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
2BF2AC:  VMOV            S0, R5
2BF2B0:  VLDR            S2, =255.0
2BF2B4:  ADD             R0, SP, #0x180+var_148; this
2BF2B6:  MOVS            R1, #0xFF; unsigned __int8
2BF2B8:  VCVT.F32.U32    S0, S0
2BF2BC:  MOVS            R2, #0xFF; unsigned __int8
2BF2BE:  MOVS            R3, #0xFF; unsigned __int8
2BF2C0:  VDIV.F32        S20, S0, S2
2BF2C4:  VMUL.F32        S0, S20, S2
2BF2C8:  VCVT.U32.F32    S0, S0
2BF2CC:  VMOV            R10, S0
2BF2D0:  STR.W           R10, [SP,#0x180+var_180]; unsigned __int8
2BF2D4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF2D8:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2BF2DC:  ADD             R0, SP, #0x180+var_14C; this
2BF2DE:  MOVS            R1, #0; unsigned __int8
2BF2E0:  MOVS            R2, #0; unsigned __int8
2BF2E2:  MOVS            R3, #0; unsigned __int8
2BF2E4:  STR.W           R10, [SP,#0x180+var_180]; unsigned __int8
2BF2E8:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF2EC:  BLX             j__ZN5CFont12SetDropColorE5CRGBA; CFont::SetDropColor(CRGBA)
2BF2F0:  LDR             R0, =(RsGlobal_ptr - 0x2BF2F6)
2BF2F2:  ADD             R0, PC; RsGlobal_ptr
2BF2F4:  LDR             R0, [R0]; RsGlobal
2BF2F6:  LDR             R0, [R0,#(dword_9FC900 - 0x9FC8FC)]
2BF2F8:  VMOV            S0, R0
2BF2FC:  VCVT.F32.S32    S0, S0
2BF300:  VMOV            R0, S0; this
2BF304:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2BF308:  VSUB.F32        S0, S16, S18
2BF30C:  VMOV.F32        S2, #-2.0
2BF310:  VMOV.F32        S4, #3.0
2BF314:  VABS.F32        S0, S0
2BF318:  VADD.F32        S0, S0, S2
2BF31C:  VDIV.F32        S16, S0, S4
2BF320:  VLDR            S0, =0.0325
2BF324:  VMUL.F32        S18, S16, S0
2BF328:  VMOV            R0, S18; this
2BF32C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BF330:  VLDR            S0, [R4,#0x20]
2BF334:  ADR             R1, aRacPtn; "RAC_PTN"
2BF336:  VLDR            S2, [R4,#0x28]
2BF33A:  LDR             R0, =(TheText_ptr - 0x2BF348)
2BF33C:  VSUB.F32        S0, S2, S0
2BF340:  VLDR            S2, =0.6125
2BF344:  ADD             R0, PC; TheText_ptr
2BF346:  LDR             R0, [R0]; TheText ; this
2BF348:  VABS.F32        S0, S0
2BF34C:  VMUL.F32        S22, S0, S2
2BF350:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BF354:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BF356:  MOVS            R2, #0; unsigned __int8
2BF358:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BF35C:  VMOV            S0, R0
2BF360:  MOVS            R1, #3
2BF362:  CMP             R6, #0
2BF364:  STR             R6, [SP,#0x180+var_16C]
2BF366:  VCMPE.F32       S0, S22
2BF36A:  IT EQ
2BF36C:  MOVEQ           R1, #2; float
2BF36E:  VMRS            APSR_nzcv, FPSCR
2BF372:  STR             R1, [SP,#0x180+var_170]
2BF374:  BLE             loc_2BF386
2BF376:  VDIV.F32        S0, S22, S0
2BF37A:  VMUL.F32        S18, S18, S0
2BF37E:  VMOV            R0, S18; this
2BF382:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BF386:  LDR             R0, =(TheText_ptr - 0x2BF38E)
2BF388:  ADR             R1, aRacLap; "RAC_LAP"
2BF38A:  ADD             R0, PC; TheText_ptr
2BF38C:  LDR             R0, [R0]; TheText ; this
2BF38E:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BF392:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BF394:  MOVS            R2, #0; unsigned __int8
2BF396:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BF39A:  VMOV            S0, R0
2BF39E:  VCMPE.F32       S0, S22
2BF3A2:  VMRS            APSR_nzcv, FPSCR
2BF3A6:  BLE             loc_2BF3B8
2BF3A8:  VDIV.F32        S0, S22, S0
2BF3AC:  VMUL.F32        S18, S18, S0
2BF3B0:  VMOV            R0, S18; this
2BF3B4:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BF3B8:  LDR             R0, =(TheText_ptr - 0x2BF3C0)
2BF3BA:  ADR             R1, aRacTim; "RAC_TIM"
2BF3BC:  ADD             R0, PC; TheText_ptr
2BF3BE:  LDR             R0, [R0]; TheText ; this
2BF3C0:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2BF3C4:  MOVS            R1, #(stderr+1); unsigned __int16 *
2BF3C6:  MOVS            R2, #0; unsigned __int8
2BF3C8:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2BF3CC:  VMOV            S0, R0
2BF3D0:  VCMPE.F32       S0, S22
2BF3D4:  VMRS            APSR_nzcv, FPSCR
2BF3D8:  BLE             loc_2BF3EA
2BF3DA:  VDIV.F32        S0, S22, S0
2BF3DE:  VMUL.F32        S18, S18, S0
2BF3E2:  VMOV            R0, S18; this
2BF3E6:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2BF3EA:  VLDR            S2, =128.0
2BF3EE:  VMOV.F32        S0, #1.0
2BF3F2:  ADD             R5, SP, #0x180+var_144
2BF3F4:  MOV.W           R8, #0
2BF3F8:  VMUL.F32        S2, S20, S2
2BF3FC:  VADD.F32        S20, S16, S0
2BF400:  VCVT.U32.F32    S0, S2
2BF404:  VLDR            S22, [R4,#0x2C]
2BF408:  VMOV            R11, S0
2BF40C:  VADD.F32        S0, S16, S22
2BF410:  LDR             R0, [R4,#0x20]
2BF412:  LDR             R1, [R4,#0x28]
2BF414:  MOVS            R2, #0; unsigned __int8
2BF416:  VSTR            S22, [SP,#0x180+var_150]
2BF41A:  MOVS            R3, #0; unsigned __int8
2BF41C:  STR             R0, [SP,#0x180+var_15C]
2BF41E:  MOV             R0, R5; this
2BF420:  STR             R1, [SP,#0x180+var_154]
2BF422:  MOVS            R1, #0; unsigned __int8
2BF424:  STR.W           R11, [SP,#0x180+var_180]; unsigned __int8
2BF428:  VSTR            S0, [SP,#0x180+var_158]
2BF42C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF430:  ADD.W           R9, SP, #0x180+var_160
2BF434:  MOVS            R1, #0; unsigned __int8
2BF436:  MOVS            R2, #0; unsigned __int8
2BF438:  MOVS            R3, #0; unsigned __int8
2BF43A:  MOV             R0, R9; this
2BF43C:  STR.W           R11, [SP,#0x180+var_180]; unsigned __int8
2BF440:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF444:  ADD             R6, SP, #0x180+var_164
2BF446:  MOVS            R1, #0; unsigned __int8
2BF448:  MOVS            R2, #0; unsigned __int8
2BF44A:  MOVS            R3, #0; unsigned __int8
2BF44C:  MOV             R0, R6; this
2BF44E:  STR.W           R10, [SP,#0x180+var_180]; unsigned __int8
2BF452:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF456:  ADD             R0, SP, #0x180+var_168; this
2BF458:  MOVS            R1, #0; unsigned __int8
2BF45A:  MOVS            R2, #0; unsigned __int8
2BF45C:  MOVS            R3, #0; unsigned __int8
2BF45E:  STR.W           R10, [SP,#0x180+var_180]; unsigned __int8
2BF462:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BF466:  STR             R0, [SP,#0x180+var_180]; float
2BF468:  ADD             R0, SP, #0x180+var_15C
2BF46A:  MOV             R1, R5
2BF46C:  MOV             R2, R9
2BF46E:  MOV             R3, R6
2BF470:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBAS5_S5_S5_; CSprite2d::DrawRect(CRect const&,CRGBA const&,CRGBA const&,CRGBA const&,CRGBA const&)
2BF474:  LDR             R0, [SP,#0x180+var_16C]
2BF476:  CBZ             R0, loc_2BF4A4
2BF478:  CMP.W           R8, #2
2BF47C:  BEQ             loc_2BF4D4
2BF47E:  CMP.W           R8, #1
2BF482:  BNE             loc_2BF4AA
2BF484:  LDRD.W          R2, R3, [R4,#0x98]
2BF488:  ADR             R1, aFDWD; "~f~%d~w~/%d"
2BF48A:  MOV             R0, R5
2BF48C:  BL              sub_5E6BC0
2BF490:  LDRD.W          R2, R3, [SP,#0x180+var_15C]
2BF494:  LDRD.W          R0, R1, [SP,#0x180+var_154]
2BF498:  VSTR            S18, [SP,#0x180+var_174]
2BF49C:  STMEA.W         SP, {R0,R1,R5}
2BF4A0:  ADR             R1, aRacLap; "RAC_LAP"
2BF4A2:  B               loc_2BF50C
2BF4A4:  CMP.W           R8, #1
2BF4A8:  BEQ             loc_2BF4D4
2BF4AA:  CMP.W           R8, #0
2BF4AE:  BNE             loc_2BF510
2BF4B0:  LDR.W           R2, [R4,#0x90]
2BF4B4:  ADR             R1, aFDWD; "~f~%d~w~/%d"
2BF4B6:  LDR.W           R3, [R4,#0x94]
2BF4BA:  MOV             R0, R5
2BF4BC:  BL              sub_5E6BC0
2BF4C0:  LDR             R0, [SP,#0x180+var_154]
2BF4C2:  LDR             R1, [SP,#0x180+var_150]
2BF4C4:  LDR             R2, [SP,#0x180+var_15C]
2BF4C6:  LDR             R3, [SP,#0x180+var_158]
2BF4C8:  VSTR            S18, [SP,#0x180+var_174]
2BF4CC:  STMEA.W         SP, {R0,R1,R5}
2BF4D0:  ADR             R1, aRacPtn; "RAC_PTN"
2BF4D2:  B               loc_2BF50C
2BF4D4:  LDR.W           R0, [R4,#0xA0]
2BF4D8:  MOV             R1, #0x88888889
2BF4E0:  SMMLA.W         R1, R1, R0, R0
2BF4E4:  ASRS            R2, R1, #5
2BF4E6:  ADD.W           R2, R2, R1,LSR#31
2BF4EA:  RSB.W           R1, R2, R2,LSL#4
2BF4EE:  SUB.W           R3, R0, R1,LSL#2
2BF4F2:  ADR             R1, aD2d_1; "%d:%.2d"
2BF4F4:  MOV             R0, R5
2BF4F6:  BL              sub_5E6BC0
2BF4FA:  LDR             R0, [SP,#0x180+var_154]; int
2BF4FC:  LDR             R2, [SP,#0x180+var_15C]; int
2BF4FE:  LDR             R3, [SP,#0x180+var_158]; int
2BF500:  LDR             R1, [SP,#0x180+var_150]
2BF502:  VSTR            S18, [SP,#0x180+var_174]
2BF506:  STMEA.W         SP, {R0,R1,R5}
2BF50A:  ADR             R1, aRacTim; "RAC_TIM"
2BF50C:  BLX             j__ZN13CWidgetRacing13RenderRowTextEPKc5CRectS1_f; CWidgetRacing::RenderRowText(char const*,CRect,char const*,float)
2BF510:  VADD.F32        S22, S20, S22
2BF514:  LDR             R0, [SP,#0x180+var_170]
2BF516:  ADD.W           R8, R8, #1
2BF51A:  CMP             R8, R0
2BF51C:  BLT.W           loc_2BF40C
2BF520:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BF528)
2BF522:  LDR             R1, [SP,#0x180+var_44]
2BF524:  ADD             R0, PC; __stack_chk_guard_ptr
2BF526:  LDR             R0, [R0]; __stack_chk_guard
2BF528:  LDR             R0, [R0]
2BF52A:  SUBS            R0, R0, R1
2BF52C:  ITTTT EQ
2BF52E:  ADDEQ           SP, SP, #0x140
2BF530:  VPOPEQ          {D8-D11}
2BF534:  ADDEQ           SP, SP, #4
2BF536:  POPEQ.W         {R8-R11}
2BF53A:  IT EQ
2BF53C:  POPEQ           {R4-R7,PC}
2BF53E:  BLX             __stack_chk_fail
