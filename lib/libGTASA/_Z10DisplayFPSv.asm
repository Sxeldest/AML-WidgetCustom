; =========================================================
; Game Engine Function: _Z10DisplayFPSv
; Address            : 0x3F5530 - 0x3F5690
; =========================================================

3F5530:  PUSH            {R4-R7,LR}
3F5532:  ADD             R7, SP, #0xC
3F5534:  PUSH.W          {R11}
3F5538:  SUB.W           SP, SP, #0x268
3F553C:  LDR             R0, =(__stack_chk_guard_ptr - 0x3F5544)
3F553E:  LDR             R1, =(curMS_ptr - 0x3F5546)
3F5540:  ADD             R0, PC; __stack_chk_guard_ptr
3F5542:  ADD             R1, PC; curMS_ptr
3F5544:  LDR             R0, [R0]; __stack_chk_guard
3F5546:  LDR             R5, [R1]; curMS
3F5548:  LDR             R0, [R0]
3F554A:  STR             R0, [SP,#0x278+var_14]
3F554C:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
3F5550:  LDR             R1, [R5]
3F5552:  MOV             R6, #0xCCCCCCCD
3F555A:  UMULL.W         R2, R3, R1, R6
3F555E:  LDR             R2, =(msCollected_ptr - 0x3F5564)
3F5560:  ADD             R2, PC; msCollected_ptr
3F5562:  LDR             R4, [R2]; msCollected
3F5564:  ADDS            R2, R1, #1
3F5566:  STR             R2, [R5]
3F5568:  LSRS            R2, R3, #5
3F556A:  ADD.W           R2, R2, R2,LSL#2; unsigned __int8
3F556E:  SUB.W           R1, R1, R2,LSL#3
3F5572:  STR.W           R0, [R4,R1,LSL#2]
3F5576:  MOVS            R0, #0; this
3F5578:  MOVS            R1, #0; unsigned __int8
3F557A:  BLX             j__ZN5CFont13SetBackgroundEhh; CFont::SetBackground(uchar,uchar)
3F557E:  MOVS            R0, #0x80
3F5580:  MOVS            R1, #0; unsigned __int8
3F5582:  STR             R0, [SP,#0x278+var_278]; unsigned __int8
3F5584:  ADD             R0, SP, #0x278+var_270; this
3F5586:  MOVS            R2, #0; unsigned __int8
3F5588:  MOVS            R3, #0; unsigned __int8
3F558A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
3F558E:  BLX             j__ZN5CFont18SetBackgroundColorE5CRGBA; CFont::SetBackgroundColor(CRGBA)
3F5592:  MOV             R0, #0x3F8F5C29; this
3F559A:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
3F559E:  MOVS            R0, #(stderr+1); this
3F55A0:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
3F55A4:  MOVS            R0, #0; this
3F55A6:  BLX             j__ZN5CFont10SetJustifyEh; CFont::SetJustify(uchar)
3F55AA:  MOVS            R0, #0x44200000; this
3F55B0:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
3F55B4:  MOVS            R0, #0; this
3F55B6:  BLX             j__ZN5CFont15SetProportionalEh; CFont::SetProportional(uchar)
3F55BA:  MOVS            R0, #(stderr+1); this
3F55BC:  BLX             j__ZN5CFont12SetFontStyleEh; CFont::SetFontStyle(uchar)
3F55C0:  MOVS            R0, #0; this
3F55C2:  BLX             j__ZN5CFont7SetEdgeEa; CFont::SetEdge(signed char)
3F55C6:  MOVS            R0, #0xFF
3F55C8:  MOVS            R1, #0xFF; unsigned __int8
3F55CA:  STR             R0, [SP,#0x278+var_278]; unsigned __int8
3F55CC:  ADD             R0, SP, #0x278+var_274; this
3F55CE:  MOVS            R2, #0xFF; unsigned __int8
3F55D0:  MOVS            R3, #0xFF; unsigned __int8
3F55D2:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
3F55D6:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
3F55DA:  LDR             R0, [R5]
3F55DC:  VLDR            S2, =39000.0
3F55E0:  UMULL.W         R1, R2, R0, R6
3F55E4:  SUBS            R1, R0, #1
3F55E6:  UMULL.W         R3, R6, R1, R6
3F55EA:  LSRS            R2, R2, #5
3F55EC:  ADD.W           R2, R2, R2,LSL#2
3F55F0:  SUB.W           R0, R0, R2,LSL#3
3F55F4:  LSRS            R2, R6, #5
3F55F6:  ADD.W           R2, R2, R2,LSL#2
3F55FA:  LDR.W           R0, [R4,R0,LSL#2]
3F55FE:  SUB.W           R1, R1, R2,LSL#3
3F5602:  LDR.W           R1, [R4,R1,LSL#2]
3F5606:  ADD             R4, SP, #0x278+var_DC
3F5608:  SUBS            R0, R1, R0
3F560A:  ADR             R1, aFps2f; "FPS: %.2f"
3F560C:  VMOV            S0, R0
3F5610:  MOV             R0, R4
3F5612:  VCVT.F32.S32    S0, S0
3F5616:  VDIV.F32        S0, S2, S0
3F561A:  VCVT.F64.F32    D16, S0
3F561E:  VMOV            R2, R3, D16
3F5622:  BL              sub_5E6BC0
3F5626:  ADD             R5, SP, #0x278+var_26C
3F5628:  MOV             R0, R4; char *
3F562A:  MOV             R1, R5; unsigned __int16 *
3F562C:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
3F5630:  LDR             R0, =(RsGlobal_ptr - 0x3F563C)
3F5632:  MOV             R2, R5; CFont *
3F5634:  VLDR            S4, =640.0
3F5638:  ADD             R0, PC; RsGlobal_ptr
3F563A:  VLDR            S6, =355.0
3F563E:  LDR             R0, [R0]; RsGlobal
3F5640:  VLDR            S0, [R0,#4]
3F5644:  VLDR            S2, [R0,#8]
3F5648:  VCVT.F32.S32    S0, S0
3F564C:  VCVT.F32.S32    S2, S2
3F5650:  VDIV.F32        S0, S0, S4
3F5654:  VDIV.F32        S2, S2, S6
3F5658:  VMOV.F32        S4, #4.0
3F565C:  VLDR            S6, =200.0
3F5660:  VMUL.F32        S2, S2, S6
3F5664:  VMUL.F32        S0, S0, S4
3F5668:  VMOV            R1, S2; float
3F566C:  VMOV            R0, S0; this
3F5670:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
3F5674:  LDR             R0, =(__stack_chk_guard_ptr - 0x3F567C)
3F5676:  LDR             R1, [SP,#0x278+var_14]
3F5678:  ADD             R0, PC; __stack_chk_guard_ptr
3F567A:  LDR             R0, [R0]; __stack_chk_guard
3F567C:  LDR             R0, [R0]
3F567E:  SUBS            R0, R0, R1
3F5680:  ITTT EQ
3F5682:  ADDEQ.W         SP, SP, #0x268
3F5686:  POPEQ.W         {R11}
3F568A:  POPEQ           {R4-R7,PC}
3F568C:  BLX             __stack_chk_fail
