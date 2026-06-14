; =========================================================
; Game Engine Function: _ZN12SelectScreen6RenderEi
; Address            : 0x29F2D8 - 0x29F7D6
; =========================================================

29F2D8:  PUSH            {R4-R7,LR}
29F2DA:  ADD             R7, SP, #0xC
29F2DC:  PUSH.W          {R8-R11}
29F2E0:  SUB             SP, SP, #4
29F2E2:  VPUSH           {D8-D15}
29F2E6:  SUB             SP, SP, #0x60
29F2E8:  MOV             R11, R0
29F2EA:  MOVS            R0, #0xFF
29F2EC:  LDR.W           R6, [R11,#0x10]
29F2F0:  MOVS            R1, #0xF0; unsigned __int8
29F2F2:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
29F2F4:  ADD             R0, SP, #0xC0+var_64; this
29F2F6:  MOVS            R2, #0xF0; unsigned __int8
29F2F8:  MOVS            R3, #0xF0; unsigned __int8
29F2FA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29F2FE:  LDR.W           R0, [R11]
29F302:  LDR             R1, [R0,#0x30]
29F304:  MOV             R0, R11
29F306:  BLX             R1
29F308:  MOV             R5, R0
29F30A:  LDR.W           R0, [R11]
29F30E:  LDR             R1, [R0,#0x34]
29F310:  MOV             R0, R11
29F312:  BLX             R1
29F314:  LDR.W           R1, [R11]
29F318:  VMOV            S16, R0
29F31C:  MOV             R0, R11
29F31E:  LDR             R1, [R1,#0x30]
29F320:  BLX             R1
29F322:  LDR.W           R1, =(TheText_ptr - 0x29F32E)
29F326:  VMOV            S18, R0
29F32A:  ADD             R1, PC; TheText_ptr
29F32C:  LDR             R1, [R1]; TheText
29F32E:  MOV             R0, R1; this
29F330:  MOV             R1, R6; CKeyGen *
29F332:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
29F336:  VSUB.F32        S0, S16, S18
29F33A:  MOV             R2, R0
29F33C:  LDR             R0, [SP,#0xC0+var_64]
29F33E:  MOVS            R3, #0
29F340:  STR             R0, [SP,#0xC0+var_88]
29F342:  MOVS            R0, #0x41F00000
29F348:  ADD.W           R1, R0, #0x280000
29F34C:  ADD             R6, SP, #0xC0+var_88
29F34E:  STRD.W          R1, R3, [SP,#0xC0+var_A8]
29F352:  MOVS            R1, #1
29F354:  STR             R3, [SP,#0xC0+var_A0]
29F356:  STRD.W          R3, R6, [SP,#0xC0+var_C0]
29F35A:  MOVS            R3, #0
29F35C:  STRD.W          R1, R5, [SP,#0xC0+var_B8]
29F360:  MOV             R1, R11
29F362:  STR             R0, [SP,#0xC0+var_B0]
29F364:  ADD             R0, SP, #0xC0+var_78
29F366:  VSTR            S0, [SP,#0xC0+var_AC]
29F36A:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
29F36E:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
29F372:  LDR.W           R0, [R11]
29F376:  ADD             R4, SP, #0xC0+var_78
29F378:  MOV             R1, R11
29F37A:  LDR             R2, [R0,#0x4C]
29F37C:  MOV             R0, R4
29F37E:  BLX             R2
29F380:  MOV             R0, R4
29F382:  BLX             j__ZN7CWidget10SetScissorER5CRect; CWidget::SetScissor(CRect &)
29F386:  LDR.W           R0, [R11]
29F38A:  LDR             R1, [R0,#0x40]
29F38C:  MOV             R0, R11
29F38E:  BLX             R1
29F390:  MOV             R5, R0
29F392:  LDR.W           R0, [R11]
29F396:  LDR             R1, [R0,#0x3C]
29F398:  MOV             R0, R11
29F39A:  BLX             R1
29F39C:  LDR.W           R1, [R11,#0x18]
29F3A0:  CMP             R1, #0
29F3A2:  BEQ.W           loc_29F7A4
29F3A6:  VMOV            S2, R0
29F3AA:  ADD             R0, SP, #0xC0+var_88
29F3AC:  ADD.W           R1, R0, #0xC
29F3B0:  STR             R1, [SP,#0xC0+var_90]
29F3B2:  ADD.W           R1, R0, #8
29F3B6:  ADDS            R0, #4
29F3B8:  STR             R0, [SP,#0xC0+var_98]
29F3BA:  VMOV            S0, R5
29F3BE:  LDR.W           R0, =(RsGlobal_ptr - 0x29F3D2)
29F3C2:  VMOV.F32        S18, #1.0
29F3C6:  VADD.F32        S23, S0, S2
29F3CA:  VLDR            S20, =0.0
29F3CE:  ADD             R0, PC; RsGlobal_ptr
29F3D0:  VMOV.F32        S24, #0.5
29F3D4:  VMOV.F32        S19, #-5.0
29F3D8:  VLDR            S30, =255.0
29F3DC:  LDR             R0, [R0]; RsGlobal
29F3DE:  VMOV.F32        S25, #4.0
29F3E2:  STR             R0, [SP,#0xC0+var_9C]
29F3E4:  VMOV.F32        S27, #-4.0
29F3E8:  LDR.W           R0, =(maVertices_ptr - 0x29F3FA)
29F3EC:  VMOV.F32        S31, #-10.0
29F3F0:  VLDR            S17, =127.0
29F3F4:  MOVS            R4, #0
29F3F6:  ADD             R0, PC; maVertices_ptr
29F3F8:  VLDR            S21, =-320.0
29F3FC:  VLDR            S29, =480.0
29F400:  MOV.W           R8, #0
29F404:  LDR             R5, [R0]; maVertices
29F406:  STR             R1, [SP,#0xC0+var_94]
29F408:  LDR.W           R0, [R11]
29F40C:  MOV             R1, R8
29F40E:  LDR             R2, [R0,#0x44]
29F410:  MOV             R0, R11
29F412:  BLX             R2
29F414:  LDR.W           R1, [R11,#0x18]
29F418:  VMOV            S16, R0
29F41C:  SUBS            R0, R1, #1
29F41E:  CMP             R8, R0
29F420:  BNE             loc_29F44E
29F422:  CMP.W           R8, #7
29F426:  BGT             loc_29F44E
29F428:  VMOV.F32        S22, S23
29F42C:  LDRB.W          R0, [R11,#0x30]
29F430:  CBZ             R0, loc_29F452
29F432:  LDR.W           R0, [R11]
29F436:  LDR             R1, [R0,#0x48]
29F438:  MOV             R0, R11
29F43A:  BLX             R1
29F43C:  VMOV.F32        S0, #-1.5
29F440:  VMOV            S2, R0
29F444:  VMUL.F32        S0, S16, S0
29F448:  VADD.F32        S22, S2, S0
29F44C:  B               loc_29F452
29F44E:  VMOV.F32        S22, S23
29F452:  LDR             R0, =(byte_6E01A8 - 0x29F45C)
29F454:  VMOV.F32        S23, S18
29F458:  ADD             R0, PC; byte_6E01A8
29F45A:  LDRB            R0, [R0]
29F45C:  CMP             R0, #1
29F45E:  BNE             loc_29F4A4
29F460:  VMOV.F32        S23, S20
29F464:  LDR.W           R0, [R11,#0x2C]
29F468:  CMP             R8, R0
29F46A:  BNE             loc_29F4A4
29F46C:  BLX             j__Z15OS_TimeAccuratev; OS_TimeAccurate(void)
29F470:  VMOV.F64        D17, #4.0
29F474:  VMOV            D16, R0, R1
29F478:  VMUL.F64        D16, D16, D17
29F47C:  VCVT.F32.F64    S0, D16
29F480:  VMOV            R0, S0; x
29F484:  BLX             sinf
29F488:  VMOV            S0, R0
29F48C:  VLDR            S2, =0.67
29F490:  VADD.F32        S0, S0, S18
29F494:  VMUL.F32        S0, S0, S24
29F498:  VMUL.F32        S0, S0, S2
29F49C:  VLDR            S2, =0.33
29F4A0:  VADD.F32        S23, S0, S2
29F4A4:  LDR.W           R0, [R11,#0x28]
29F4A8:  ADD             R0, R4
29F4AA:  VLDR            S0, [R0]
29F4AE:  STR             R4, [SP,#0xC0+var_8C]
29F4B0:  VCMP.F32        S0, #0.0
29F4B4:  VMRS            APSR_nzcv, FPSCR
29F4B8:  BEQ.W           loc_29F724
29F4BC:  VMUL.F32        S0, S0, S30
29F4C0:  MOVS            R1, #0xF0; unsigned __int8
29F4C2:  MOVS            R2, #0xF0; unsigned __int8
29F4C4:  MOVS            R3, #0xF0; unsigned __int8
29F4C6:  VMUL.F32        S0, S23, S0
29F4CA:  VCVT.U32.F32    S0, S0
29F4CE:  VMOV            R0, S0
29F4D2:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
29F4D4:  ADD             R0, SP, #0xC0+var_88; this
29F4D6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29F4DA:  LDR.W           R0, [R11,#0x28]
29F4DE:  MOVS            R1, #0xF0; unsigned __int8
29F4E0:  MOVS            R2, #0xF0; unsigned __int8
29F4E2:  MOVS            R3, #0xF0; unsigned __int8
29F4E4:  ADD             R0, R4
29F4E6:  VLDR            S0, [R0]
29F4EA:  VMUL.F32        S0, S0, S30
29F4EE:  VMUL.F32        S0, S23, S0
29F4F2:  VCVT.U32.F32    S0, S0
29F4F6:  VMOV            R0, S0
29F4FA:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
29F4FC:  LDR             R0, [SP,#0xC0+var_98]; this
29F4FE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29F502:  LDR.W           R0, [R11,#0x28]
29F506:  MOVS            R1, #0xF0; unsigned __int8
29F508:  MOVS            R2, #0xF0; unsigned __int8
29F50A:  MOVS            R3, #0xF0; unsigned __int8
29F50C:  ADD             R0, R4
29F50E:  VLDR            S0, [R0]
29F512:  VMUL.F32        S0, S0, S17
29F516:  VMUL.F32        S0, S23, S0
29F51A:  VCVT.U32.F32    S0, S0
29F51E:  VMOV            R0, S0
29F522:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
29F524:  LDR             R0, [SP,#0xC0+var_94]; this
29F526:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29F52A:  LDR.W           R0, [R11,#0x28]
29F52E:  MOVS            R1, #0xF0; unsigned __int8
29F530:  MOVS            R2, #0xF0; unsigned __int8
29F532:  MOVS            R3, #0xF0; unsigned __int8
29F534:  ADD             R0, R4
29F536:  VLDR            S0, [R0]
29F53A:  VMUL.F32        S0, S0, S17
29F53E:  VMUL.F32        S0, S23, S0
29F542:  VCVT.U32.F32    S0, S0
29F546:  VMOV            R0, S0
29F54A:  STR             R0, [SP,#0xC0+var_C0]; unsigned __int8
29F54C:  LDR             R0, [SP,#0xC0+var_90]; this
29F54E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
29F552:  LDR.W           R0, [R11]
29F556:  LDR             R1, [R0,#0x30]
29F558:  MOV             R0, R11
29F55A:  BLX             R1
29F55C:  MOV             R9, R0
29F55E:  LDR.W           R0, [R11]
29F562:  LDR             R1, [R0,#0x34]
29F564:  MOV             R0, R11
29F566:  BLX             R1
29F568:  MOV             R4, R0
29F56A:  LDRB.W          R0, [SP,#0xC0+var_88+3]
29F56E:  LDRB.W          R1, [SP,#0xC0+var_81]
29F572:  LDRB.W          R2, [SP,#0xC0+var_7D]
29F576:  VMOV            S4, R0
29F57A:  LDRB.W          R3, [SP,#0xC0+var_79]
29F57E:  VMOV            S2, R1
29F582:  MOVS            R1, #0
29F584:  VMOV            S0, R2
29F588:  VMOV            S8, R3
29F58C:  VCVT.F32.U32    S0, S0
29F590:  VCVT.F32.U32    S2, S2
29F594:  VCVT.F32.U32    S4, S4
29F598:  VLDR            S6, [R11,#8]
29F59C:  VCVT.F32.U32    S8, S8
29F5A0:  LDR             R0, [SP,#0xC0+var_9C]
29F5A2:  VLDR            S10, [R0,#8]
29F5A6:  VMUL.F32        S0, S6, S0
29F5AA:  VMUL.F32        S2, S6, S2
29F5AE:  VMUL.F32        S4, S6, S4
29F5B2:  VMUL.F32        S6, S6, S8
29F5B6:  VLDR            S8, [R0,#4]
29F5BA:  VCVT.U32.F32    S0, S0
29F5BE:  VCVT.U32.F32    S2, S2
29F5C2:  VCVT.F32.S32    S26, S8
29F5C6:  VCVT.F32.S32    S28, S10
29F5CA:  VCVT.U32.F32    S4, S4
29F5CE:  VCVT.U32.F32    S6, S6
29F5D2:  VMOV            R0, S4
29F5D6:  STRB.W          R0, [SP,#0xC0+var_88+3]
29F5DA:  VMOV            R0, S6
29F5DE:  STRB.W          R0, [SP,#0xC0+var_79]
29F5E2:  VMOV            R0, S0
29F5E6:  STRB.W          R0, [SP,#0xC0+var_7D]
29F5EA:  VMOV            R0, S2
29F5EE:  STRB.W          R0, [SP,#0xC0+var_81]
29F5F2:  MOVS            R0, #1
29F5F4:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
29F5F8:  VMOV            S0, R9
29F5FC:  MOVS            R6, #0
29F5FE:  VMOV            S2, R4
29F602:  MOV.W           R4, #0x3F800000
29F606:  VADD.F32        S0, S0, S19
29F60A:  LDRB.W          R0, [SP,#0xC0+var_88]
29F60E:  VADD.F32        S2, S2, S21
29F612:  LDRB.W          R1, [SP,#0xC0+var_88+1]
29F616:  VADD.F32        S23, S16, S22
29F61A:  LDRB.W          R2, [SP,#0xC0+var_88+2]
29F61E:  VADD.F32        S4, S22, S25
29F622:  LDRB.W          R3, [SP,#0xC0+var_88+3]
29F626:  VMUL.F32        S8, S26, S24
29F62A:  STRD.W          R4, R4, [R5,#(dword_6E0140 - 0x6E0138)]
29F62E:  STRD.W          R6, R6, [R5,#(dword_6E014C - 0x6E0138)]
29F632:  STRD.W          R4, R4, [R5,#(dword_6E015C - 0x6E0138)]
29F636:  VADD.F32        S0, S0, S21
29F63A:  STRD.W          R4, R6, [R5,#(dword_6E0168 - 0x6E0138)]
29F63E:  VMUL.F32        S2, S2, S28
29F642:  STRB            R0, [R5,#(byte_6E0148 - 0x6E0138)]
29F644:  VADD.F32        S6, S23, S27
29F648:  LDRB.W          R0, [SP,#0xC0+var_84]
29F64C:  VMUL.F32        S4, S4, S28
29F650:  STRB            R1, [R5,#(byte_6E0149 - 0x6E0138)]
29F652:  STRB            R2, [R5,#(byte_6E014A - 0x6E0138)]
29F654:  MOV             R1, R5
29F656:  STRB            R3, [R5,#(byte_6E014B - 0x6E0138)]
29F658:  MOVS            R2, #4
29F65A:  VMUL.F32        S0, S0, S28
29F65E:  VDIV.F32        S2, S2, S29
29F662:  VDIV.F32        S0, S0, S29
29F666:  VMUL.F32        S6, S6, S28
29F66A:  VDIV.F32        S4, S4, S29
29F66E:  VDIV.F32        S6, S6, S29
29F672:  VADD.F32        S2, S8, S2
29F676:  VADD.F32        S0, S8, S0
29F67A:  VSTR            S2, [R5,#0x1C]
29F67E:  VSTR            S4, [R5,#0x20]
29F682:  VSTR            S0, [R5]
29F686:  VSTR            S4, [R5,#4]
29F68A:  STRB.W          R0, [R5,#(byte_6E0164 - 0x6E0138)]
29F68E:  LDRB.W          R0, [SP,#0xC0+var_83]
29F692:  STRB.W          R0, [R5,#(byte_6E0165 - 0x6E0138)]
29F696:  LDRB.W          R0, [SP,#0xC0+var_82]
29F69A:  STRB.W          R0, [R5,#(byte_6E0166 - 0x6E0138)]
29F69E:  LDRB.W          R0, [SP,#0xC0+var_81]
29F6A2:  STRB.W          R0, [R5,#(byte_6E0167 - 0x6E0138)]
29F6A6:  STRD.W          R4, R4, [R5,#(dword_6E0178 - 0x6E0138)]
29F6AA:  STRD.W          R6, R4, [R5,#(dword_6E0184 - 0x6E0138)]
29F6AE:  LDRB.W          R0, [SP,#0xC0+var_80]
29F6B2:  VSTR            S0, [R5,#0x38]
29F6B6:  VSTR            S6, [R5,#0x3C]
29F6BA:  STRB.W          R0, [R5,#(byte_6E0180 - 0x6E0138)]
29F6BE:  LDRB.W          R0, [SP,#0xC0+var_7F]
29F6C2:  STRB.W          R0, [R5,#(byte_6E0181 - 0x6E0138)]
29F6C6:  LDRB.W          R0, [SP,#0xC0+var_7E]
29F6CA:  STRB.W          R0, [R5,#(byte_6E0182 - 0x6E0138)]
29F6CE:  LDRB.W          R0, [SP,#0xC0+var_7D]
29F6D2:  STRB.W          R0, [R5,#(byte_6E0183 - 0x6E0138)]
29F6D6:  STRD.W          R4, R4, [R5,#(dword_6E0194 - 0x6E0138)]
29F6DA:  STRD.W          R4, R4, [R5,#(dword_6E01A0 - 0x6E0138)]
29F6DE:  LDRB.W          R0, [SP,#0xC0+var_7C]
29F6E2:  VSTR            S2, [R5,#0x54]
29F6E6:  VSTR            S6, [R5,#0x58]
29F6EA:  STRB.W          R0, [R5,#(byte_6E019C - 0x6E0138)]
29F6EE:  LDRB.W          R0, [SP,#0xC0+var_7B]
29F6F2:  STRB.W          R0, [R5,#(byte_6E019D - 0x6E0138)]
29F6F6:  LDRB.W          R0, [SP,#0xC0+var_7A]
29F6FA:  STRB.W          R0, [R5,#(byte_6E019E - 0x6E0138)]
29F6FE:  LDRB.W          R0, [SP,#0xC0+var_79]
29F702:  STRB.W          R0, [R5,#(byte_6E019F - 0x6E0138)]
29F706:  MOVS            R0, #4
29F708:  BLX             j__Z28RwIm2DRenderPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexi; RwIm2DRenderPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int)
29F70C:  B               loc_29F728
29F70E:  ALIGN 0x10
29F710:  DCFS 0.0
29F714:  DCFS 255.0
29F718:  DCFS 127.0
29F71C:  DCFS -320.0
29F720:  DCFS 480.0
29F724:  VADD.F32        S23, S16, S22
29F728:  LDR.W           R1, [R11,#0x1C]
29F72C:  LDR.W           R0, [R11]
29F730:  LDR.W           R6, [R1,R8,LSL#2]
29F734:  LDR             R2, [R0,#0x30]
29F736:  MOV             R0, R11
29F738:  LDR             R1, [R6]
29F73A:  LDR.W           R10, [R1,#8]
29F73E:  BLX             R2
29F740:  MOV             R9, R0
29F742:  LDR.W           R0, [R11]
29F746:  LDR             R1, [R0,#0x34]
29F748:  MOV             R0, R11
29F74A:  BLX             R1
29F74C:  LDR.W           R1, [R11]
29F750:  VMOV            R4, S22
29F754:  VMOV            S22, R0
29F758:  MOV             R0, R11
29F75A:  LDR             R1, [R1,#0x30]
29F75C:  BLX             R1
29F75E:  VMOV            S0, R0
29F762:  LDR.W           R0, [R11,#0x2C]
29F766:  VMOV.F32        S2, S20
29F76A:  MOV             R1, R11
29F76C:  VSUB.F32        S0, S22, S0
29F770:  CMP             R8, R0
29F772:  IT EQ
29F774:  VMOVEQ.F32      S2, S18
29F778:  MOV             R0, R6
29F77A:  MOV             R2, R9
29F77C:  MOV             R3, R4
29F77E:  VADD.F32        S0, S0, S31
29F782:  VSTR            S0, [SP,#0xC0+var_C0]
29F786:  VSTR            S16, [SP,#0xC0+var_BC]
29F78A:  VSTR            S2, [SP,#0xC0+var_B8]
29F78E:  BLX             R10
29F790:  LDR             R1, [SP,#0xC0+var_8C]
29F792:  ADD.W           R8, R8, #1
29F796:  LDR.W           R0, [R11,#0x18]; this
29F79A:  ADDS            R1, #4
29F79C:  CMP             R8, R0
29F79E:  MOV             R4, R1
29F7A0:  BCC.W           loc_29F408
29F7A4:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
29F7A8:  VMOV.I32        Q8, #0
29F7AC:  ADD             R0, SP, #0xC0+var_78
29F7AE:  VST1.64         {D16-D17}, [R0]
29F7B2:  BLX             j__ZN7CWidget10SetScissorER5CRect; CWidget::SetScissor(CRect &)
29F7B6:  LDRB.W          R0, [R11,#0xC]
29F7BA:  CBZ             R0, loc_29F7C8
29F7BC:  LDR.W           R0, [R11]
29F7C0:  MOVS            R1, #1
29F7C2:  LDR             R2, [R0,#0x28]
29F7C4:  MOV             R0, R11
29F7C6:  BLX             R2
29F7C8:  ADD             SP, SP, #0x60 ; '`'
29F7CA:  VPOP            {D8-D15}
29F7CE:  ADD             SP, SP, #4
29F7D0:  POP.W           {R8-R11}
29F7D4:  POP             {R4-R7,PC}
