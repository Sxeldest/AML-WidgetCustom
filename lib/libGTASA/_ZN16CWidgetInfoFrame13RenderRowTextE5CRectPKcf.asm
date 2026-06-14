; =========================================================
; Game Engine Function: _ZN16CWidgetInfoFrame13RenderRowTextE5CRectPKcf
; Address            : 0x2B93DC - 0x2B95C0
; =========================================================

2B93DC:  PUSH            {R4-R7,LR}
2B93DE:  ADD             R7, SP, #0xC
2B93E0:  PUSH.W          {R8}
2B93E4:  VPUSH           {D8-D13}
2B93E8:  SUB.W           SP, SP, #0x318
2B93EC:  MOV             R8, R0
2B93EE:  LDR             R0, =(RsGlobal_ptr - 0x2B93F8)
2B93F0:  MOV             R4, R1
2B93F2:  LDR             R1, =(__stack_chk_guard_ptr - 0x2B93FC)
2B93F4:  ADD             R0, PC; RsGlobal_ptr
2B93F6:  MOV             R5, R3
2B93F8:  ADD             R1, PC; __stack_chk_guard_ptr
2B93FA:  MOV             R6, R2
2B93FC:  LDR             R0, [R0]; RsGlobal
2B93FE:  LDR             R1, [R1]; __stack_chk_guard
2B9400:  VLDR            S0, [R0,#4]
2B9404:  VCVT.F32.S32    S0, S0
2B9408:  LDR             R1, [R1]; float
2B940A:  STR             R1, [SP,#0x358+var_44]
2B940C:  VMOV            R0, S0; this
2B9410:  BLX             j__ZN5CFont8SetWrapxEf; CFont::SetWrapx(float)
2B9414:  VLDR            S18, [R7,#arg_8]
2B9418:  VMOV            R0, S18; this
2B941C:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2B9420:  MOVS            R0, #(stderr+1); this
2B9422:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2B9426:  VMOV            S24, R4
2B942A:  MOVS            R0, #0; this
2B942C:  VMOV            S16, R5
2B9430:  VMOV            S22, R6
2B9434:  VSUB.F32        S20, S16, S24
2B9438:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2B943C:  VLDR            S0, [R7,#arg_0]
2B9440:  VABS.F32        S20, S20
2B9444:  VMOV.F32        S2, #0.5
2B9448:  VLDR            S4, =0.055
2B944C:  VADD.F32        S0, S22, S0
2B9450:  ADD.W           R1, R8, #0x98; CKeyGen *
2B9454:  VMOV            S6, R0
2B9458:  LDR             R0, =(TheText_ptr - 0x2B945E)
2B945A:  ADD             R0, PC; TheText_ptr
2B945C:  VMUL.F32        S4, S20, S4
2B9460:  LDR             R0, [R0]; TheText ; this
2B9462:  VMUL.F32        S22, S0, S2
2B9466:  VMUL.F32        S0, S6, S2
2B946A:  VADD.F32        S24, S4, S24
2B946E:  VSUB.F32        S26, S22, S0
2B9472:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2B9476:  MOV             R2, R0; CFont *
2B9478:  VMOV            R0, S24; this
2B947C:  VMOV            R1, S26; float
2B9480:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2B9484:  LDRB.W          R0, [R8,#0xA9]
2B9488:  CMP             R0, #0
2B948A:  ITT EQ
2B948C:  LDRBEQ.W        R0, [R8,#0xAA]
2B9490:  CMPEQ           R0, #0
2B9492:  BEQ             loc_2B94D2
2B9494:  LDRB.W          R0, [R8,#0x4C]
2B9498:  VMOV            S0, R0
2B949C:  VCVT.F32.U32    S2, S0
2B94A0:  LDR.W           R1, [R8,#0xAC]
2B94A4:  SUBS            R0, R1, #1; switch 4 cases
2B94A6:  CMP             R0, #3
2B94A8:  BHI             def_2B94B2; jumptable 002B94B2 default case
2B94AA:  VLDR            S0, =255.0
2B94AE:  VDIV.F32        S2, S2, S0
2B94B2:  TBB.W           [PC,R0]; switch jump
2B94B6:  DCB 0x13; jump table for switch statement
2B94B7:  DCB 2
2B94B8:  DCB 0x1F
2B94B9:  DCB 2
2B94BA:  VMUL.F32        S0, S2, S0; jumptable 002B94B2 cases 2,4
2B94BE:  MOVS            R1, #0x9A
2B94C0:  MOVS            R2, #0xCC
2B94C2:  MOVS            R3, #0x97
2B94C4:  VCVT.U32.F32    S0, S0
2B94C8:  VMOV            R0, S0
2B94CC:  STR             R0, [SP,#0x358+var_358]
2B94CE:  ADD             R0, SP, #0x358+var_14C
2B94D0:  B               loc_2B950A
2B94D2:  LDRB.W          R0, [R8,#0xAB]
2B94D6:  CMP             R0, #0
2B94D8:  BNE             loc_2B9494
2B94DA:  B               loc_2B95A0
2B94DC:  VMUL.F32        S0, S2, S0; jumptable 002B94B2 case 1
2B94E0:  MOVS            R1, #0x5D ; ']'
2B94E2:  MOVS            R2, #0x8E
2B94E4:  MOVS            R3, #0xBE
2B94E6:  VCVT.U32.F32    S0, S0
2B94EA:  VMOV            R0, S0
2B94EE:  STR             R0, [SP,#0x358+var_358]
2B94F0:  ADD             R0, SP, #0x358+var_148
2B94F2:  B               loc_2B950A
2B94F4:  VMUL.F32        S0, S2, S0; jumptable 002B94B2 case 3
2B94F8:  MOVS            R1, #0xFF; unsigned __int8
2B94FA:  MOVS            R2, #0; unsigned __int8
2B94FC:  MOVS            R3, #0; unsigned __int8
2B94FE:  VCVT.U32.F32    S0, S0
2B9502:  VMOV            R0, S0
2B9506:  STR             R0, [SP,#0x358+var_358]; unsigned __int8
2B9508:  ADD             R0, SP, #0x358+var_150; this
2B950A:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B950E:  BLX             j__ZN5CFont8SetColorE5CRGBA; CFont::SetColor(CRGBA)
2B9512:  LDR.W           R1, [R8,#0xAC]
2B9516:  LDR             R2, [R7,#arg_4]; jumptable 002B94B2 default case
2B9518:  ADD             R0, SP, #0x358+var_144; char *
2B951A:  CMP             R1, #4
2B951C:  BNE             loc_2B9526
2B951E:  ADR             R1, a1S; "$~1~%s"
2B9520:  BL              sub_5E6BC0
2B9524:  B               loc_2B952C
2B9526:  MOV             R1, R2; char *
2B9528:  BLX             strcpy
2B952C:  ADD             R4, SP, #0x358+var_350
2B952E:  ADD             R0, SP, #0x358+var_144; char *
2B9530:  MOV             R1, R4; unsigned __int16 *
2B9532:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
2B9536:  MOV             R0, R4; this
2B9538:  MOVS            R1, #(stderr+1); unsigned __int16 *
2B953A:  MOVS            R2, #0; unsigned __int8
2B953C:  BLX             j__ZN5CFont14GetStringWidthEPthh; CFont::GetStringWidth(ushort *,uchar,uchar)
2B9540:  VLDR            S0, =0.275
2B9544:  VMOV            S2, R0
2B9548:  VMUL.F32        S0, S20, S0
2B954C:  VCMPE.F32       S2, S0
2B9550:  VMRS            APSR_nzcv, FPSCR
2B9554:  BLE             loc_2B9566
2B9556:  VDIV.F32        S0, S0, S2
2B955A:  VMUL.F32        S0, S0, S18
2B955E:  VMOV            R0, S0; this
2B9562:  BLX             j__ZN5CFont8SetScaleEf; CFont::SetScale(float)
2B9566:  MOVS            R0, #(stderr+2); this
2B9568:  BLX             j__ZN5CFont14SetOrientationEh; CFont::SetOrientation(uchar)
2B956C:  MOVS            R0, #0; this
2B956E:  BLX             j__ZN5CFont9GetHeightEb; CFont::GetHeight(bool)
2B9572:  VMOV.F32        S0, #-0.5
2B9576:  VLDR            S2, =-0.052
2B957A:  VMOV            S4, R0
2B957E:  ADD             R2, SP, #0x358+var_350; CFont *
2B9580:  VMUL.F32        S2, S20, S2
2B9584:  VMUL.F32        S0, S4, S0
2B9588:  VADD.F32        S2, S16, S2
2B958C:  VADD.F32        S0, S22, S0
2B9590:  VMOV            R0, S2; this
2B9594:  VMOV            R1, S0; float
2B9598:  BLX             j__ZN5CFont11PrintStringEffPt; CFont::PrintString(float,float,ushort *)
2B959C:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
2B95A0:  LDR             R0, =(__stack_chk_guard_ptr - 0x2B95A8)
2B95A2:  LDR             R1, [SP,#0x358+var_44]
2B95A4:  ADD             R0, PC; __stack_chk_guard_ptr
2B95A6:  LDR             R0, [R0]; __stack_chk_guard
2B95A8:  LDR             R0, [R0]
2B95AA:  SUBS            R0, R0, R1
2B95AC:  ITTTT EQ
2B95AE:  ADDEQ.W         SP, SP, #0x318
2B95B2:  VPOPEQ          {D8-D13}
2B95B6:  POPEQ.W         {R8}
2B95BA:  POPEQ           {R4-R7,PC}
2B95BC:  BLX             __stack_chk_fail
