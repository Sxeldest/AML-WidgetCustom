; =========================================================
; Game Engine Function: _ZN10CTapEffect7DrawAllEv
; Address            : 0x2AC500 - 0x2AC588
; =========================================================

2AC500:  PUSH            {R4-R7,LR}
2AC502:  ADD             R7, SP, #0xC
2AC504:  PUSH.W          {R11}
2AC508:  VPUSH           {D8-D11}
2AC50C:  SUB             SP, SP, #8
2AC50E:  LDR             R0, =(_ZN10CTapEffect12m_pChainHeadE_ptr - 0x2AC514)
2AC510:  ADD             R0, PC; _ZN10CTapEffect12m_pChainHeadE_ptr
2AC512:  LDR             R0, [R0]; CTapEffect::m_pChainHead ...
2AC514:  LDR             R6, [R0]; CTapEffect::m_pChainHead
2AC516:  CBZ             R6, loc_2AC57C
2AC518:  VMOV.F32        S16, #30.0
2AC51C:  VLDR            S22, =128.0
2AC520:  VMOV.F32        S18, #-30.0
2AC524:  ADD             R4, SP, #0x38+var_34
2AC526:  VMOV.F32        S20, #1.0
2AC52A:  MOV             R5, R6
2AC52C:  LDR.W           R0, [R5,#8]!
2AC530:  CBZ             R0, loc_2AC576
2AC532:  VLDR            S0, [R6,#0x14]
2AC536:  VCMPE.F32       S0, S16
2AC53A:  VMRS            APSR_nzcv, FPSCR
2AC53E:  BLE             loc_2AC55A
2AC540:  VADD.F32        S0, S0, S18
2AC544:  VDIV.F32        S0, S0, S18
2AC548:  VADD.F32        S0, S0, S20
2AC54C:  VMUL.F32        S0, S0, S22
2AC550:  VCVT.U32.F32    S0, S0
2AC554:  VMOV            R0, S0
2AC558:  B               loc_2AC55C
2AC55A:  MOVS            R0, #0x80
2AC55C:  STR             R0, [SP,#0x38+var_38]; unsigned __int8
2AC55E:  MOV             R0, R4; this
2AC560:  MOVS            R1, #0xFF; unsigned __int8
2AC562:  MOVS            R2, #0xFF; unsigned __int8
2AC564:  MOVS            R3, #0xFF; unsigned __int8
2AC566:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2AC56A:  ADD.W           R1, R6, #0x1C
2AC56E:  MOV             R0, R5
2AC570:  MOV             R2, R4
2AC572:  BLX             j__ZN9CSprite2d4DrawERK5CRectRK5CRGBA; CSprite2d::Draw(CRect const&,CRGBA const&)
2AC576:  LDR             R6, [R6,#4]
2AC578:  CMP             R6, #0
2AC57A:  BNE             loc_2AC52A
2AC57C:  ADD             SP, SP, #8
2AC57E:  VPOP            {D8-D11}
2AC582:  POP.W           {R11}
2AC586:  POP             {R4-R7,PC}
