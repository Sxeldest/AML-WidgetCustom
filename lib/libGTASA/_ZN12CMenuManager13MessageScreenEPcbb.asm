; =========================================================
; Game Engine Function: _ZN12CMenuManager13MessageScreenEPcbb
; Address            : 0x431480 - 0x431554
; =========================================================

431480:  PUSH            {R4-R7,LR}
431482:  ADD             R7, SP, #0xC
431484:  PUSH.W          {R11}
431488:  SUB             SP, SP, #0x20
43148A:  MOV             R5, R2
43148C:  MOV             R4, R1
43148E:  CBNZ            R3, loc_4314E2
431490:  LDR             R0, =(Scene_ptr - 0x431496)
431492:  ADD             R0, PC; Scene_ptr
431494:  LDR             R0, [R0]; Scene
431496:  LDR             R0, [R0,#(dword_9FC93C - 0x9FC938)]
431498:  BLX             j__Z19RsCameraBeginUpdateP8RwCamera; RsCameraBeginUpdate(RwCamera *)
43149C:  CMP             R0, #0
43149E:  BEQ             loc_43154C
4314A0:  CMP             R5, #1
4314A2:  BNE             loc_4314E2
4314A4:  LDR             R0, =(RsGlobal_ptr - 0x4314B0)
4314A6:  ADD             R6, SP, #0x30+var_24
4314A8:  MOVS            R1, #0; unsigned __int8
4314AA:  MOVS            R2, #0; unsigned __int8
4314AC:  ADD             R0, PC; RsGlobal_ptr
4314AE:  MOVS            R3, #0; unsigned __int8
4314B0:  LDR             R0, [R0]; RsGlobal
4314B2:  VLDR            S0, [R0,#4]
4314B6:  VLDR            S2, [R0,#8]
4314BA:  MOVS            R0, #0
4314BC:  VCVT.F32.S32    S0, S0
4314C0:  VCVT.F32.S32    S2, S2
4314C4:  STR             R0, [SP,#0x30+var_20]
4314C6:  STR             R0, [SP,#0x30+var_14]
4314C8:  MOVS            R0, #0xFF
4314CA:  STR             R0, [SP,#0x30+var_30]; unsigned __int8
4314CC:  MOV             R0, R6; this
4314CE:  VSTR            S0, [SP,#0x30+var_18]
4314D2:  VSTR            S2, [SP,#0x30+var_1C]
4314D6:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4314DA:  ADD             R0, SP, #0x30+var_20
4314DC:  MOV             R1, R6
4314DE:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
4314E2:  BLX             j__ZN9CSprite2d16SetRecipNearClipEv; CSprite2d::SetRecipNearClip(void)
4314E6:  BLX             j__ZN9CSprite2d12InitPerFrameEv; CSprite2d::InitPerFrame(void)
4314EA:  BLX             j__ZN5CFont12InitPerFrameEv; CFont::InitPerFrame(void)
4314EE:  BLX             j__Z14DefinedState2dv; DefinedState2d(void)
4314F2:  ADD             R0, SP, #0x30+var_24; this
4314F4:  MOVS            R6, #0xFF
4314F6:  MOVS            R1, #0xFF; unsigned __int8
4314F8:  MOVS            R2, #0xFF; unsigned __int8
4314FA:  MOVS            R3, #0xFF; unsigned __int8
4314FC:  STR             R6, [SP,#0x30+var_30]; unsigned __int8
4314FE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
431502:  CMP             R5, #1
431504:  BNE             loc_431542
431506:  LDR             R0, =(RsGlobal_ptr - 0x431512)
431508:  ADD             R5, SP, #0x30+var_28
43150A:  MOVS            R1, #0; unsigned __int8
43150C:  MOVS            R2, #0; unsigned __int8
43150E:  ADD             R0, PC; RsGlobal_ptr
431510:  MOVS            R3, #0; unsigned __int8
431512:  LDR             R0, [R0]; RsGlobal
431514:  VLDR            S0, [R0,#4]
431518:  VLDR            S2, [R0,#8]
43151C:  MOVS            R0, #0
43151E:  VCVT.F32.S32    S0, S0
431522:  VCVT.F32.S32    S2, S2
431526:  STR             R0, [SP,#0x30+var_20]
431528:  STR             R0, [SP,#0x30+var_14]
43152A:  MOV             R0, R5; this
43152C:  STR             R6, [SP,#0x30+var_30]; unsigned __int8
43152E:  VSTR            S0, [SP,#0x30+var_18]
431532:  VSTR            S2, [SP,#0x30+var_1C]
431536:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
43153A:  ADD             R0, SP, #0x30+var_20
43153C:  MOV             R1, R5
43153E:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
431542:  MOV             R1, R4; char *
431544:  BLX             j__ZN12CMenuManager18SmallMessageScreenEPKc; CMenuManager::SmallMessageScreen(char const*)
431548:  BLX             j__ZN5CFont16RenderFontBufferEv; CFont::RenderFontBuffer(void)
43154C:  ADD             SP, SP, #0x20 ; ' '
43154E:  POP.W           {R11}
431552:  POP             {R4-R7,PC}
