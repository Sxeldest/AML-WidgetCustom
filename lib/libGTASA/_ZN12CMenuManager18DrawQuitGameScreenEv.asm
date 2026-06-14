; =========================================================
; Game Engine Function: _ZN12CMenuManager18DrawQuitGameScreenEv
; Address            : 0x434510 - 0x434568
; =========================================================

434510:  PUSH            {R4,R6,R7,LR}
434512:  ADD             R7, SP, #8
434514:  SUB             SP, SP, #0x18
434516:  LDR             R1, =(RsGlobal_ptr - 0x434524)
434518:  MOVS            R2, #0
43451A:  STRB.W          R2, [R0,#0x7C]
43451E:  ADD             R4, SP, #0x20+var_1C
434520:  ADD             R1, PC; RsGlobal_ptr
434522:  MOVS            R0, #0xFF
434524:  MOVS            R3, #0; unsigned __int8
434526:  LDR             R1, [R1]; RsGlobal
434528:  VLDR            S0, [R1,#4]
43452C:  VLDR            S2, [R1,#8]
434530:  MOVS            R1, #0; unsigned __int8
434532:  VCVT.F32.S32    S0, S0
434536:  VCVT.F32.S32    S2, S2
43453A:  STR             R2, [SP,#0x20+var_18]
43453C:  STR             R2, [SP,#0x20+var_C]
43453E:  MOVS            R2, #0; unsigned __int8
434540:  STR             R0, [SP,#0x20+var_20]; unsigned __int8
434542:  MOV             R0, R4; this
434544:  VSTR            S0, [SP,#0x20+var_10]
434548:  VSTR            S2, [SP,#0x20+var_14]
43454C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
434550:  ADD             R0, SP, #0x20+var_18
434552:  MOV             R1, R4
434554:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
434558:  BLX             j__Z17Menu_SaveSettingsv; Menu_SaveSettings(void)
43455C:  MOVS            R0, #0x1E
43455E:  MOVS            R1, #0
434560:  BLX             j__Z14RsEventHandler7RsEventPv; RsEventHandler(RsEvent,void *)
434564:  ADD             SP, SP, #0x18
434566:  POP             {R4,R6,R7,PC}
