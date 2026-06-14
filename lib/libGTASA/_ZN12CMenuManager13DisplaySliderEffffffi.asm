; =========================================================
; Game Engine Function: _ZN12CMenuManager13DisplaySliderEffffffi
; Address            : 0x431560 - 0x431718
; =========================================================

431560:  PUSH            {R4-R7,LR}
431562:  ADD             R7, SP, #0xC
431564:  PUSH.W          {R8-R11}
431568:  SUB             SP, SP, #4
43156A:  VPUSH           {D8-D15}
43156E:  SUB             SP, SP, #0x20
431570:  VLDR            S4, [R7,#arg_0]
431574:  VMOV            S18, R3
431578:  VLDR            S0, [R7,#arg_C]
43157C:  VMOV            S2, R2
431580:  VMAX.F32        D2, D9, D2
431584:  LDR             R0, =(RsGlobal_ptr - 0x431596)
431586:  VCVT.F32.S32    S20, S0
43158A:  VLDR            S24, [R7,#arg_8]
43158E:  VMOV.F32        S27, #2.0
431592:  ADD             R0, PC; RsGlobal_ptr
431594:  VLDR            S26, [R7,#arg_4]
431598:  VMOV            S28, R1
43159C:  LDR             R6, [R0]; RsGlobal
43159E:  ADD             R4, SP, #0x80+var_74
4315A0:  VADD.F32        S22, S4, S2
4315A4:  VLDR            S30, =0.0625
4315A8:  VLDR            S21, =0.03125
4315AC:  ADD.W           R11, SP, #0x80+var_78
4315B0:  VLDR            S23, =0.003125
4315B4:  ADD.W           R8, SP, #0x80+var_64
4315B8:  VLDR            S25, =0.0044643
4315BC:  MOV.W           R9, #0
4315C0:  MOVS            R5, #0x10
4315C2:  MOV.W           R10, #0
4315C6:  VMOV            S0, R5
4315CA:  VLDR            S4, [R7,#arg_0]
4315CE:  VMOV            S2, R10
4315D2:  MOVS            R0, #0xFF
4315D4:  VCVT.F32.S32    S0, S0
4315D8:  VCVT.F32.S32    S2, S2
4315DC:  VMUL.F32        S0, S0, S18
4315E0:  VMUL.F32        S4, S2, S4
4315E4:  VMUL.F32        S6, S2, S26
4315E8:  VMUL.F32        S2, S2, S30
4315EC:  VADD.F32        S0, S4, S0
4315F0:  VMUL.F32        S4, S6, S30
4315F4:  VADD.F32        S2, S2, S21
4315F8:  VMUL.F32        S31, S0, S30
4315FC:  VADD.F32        S29, S4, S28
431600:  VCMPE.F32       S2, S24
431604:  VMRS            APSR_nzcv, FPSCR
431608:  BGE             loc_431642
43160A:  STR             R0, [SP,#0x80+var_80]; unsigned __int8
43160C:  MOV             R0, R4; this
43160E:  MOVS            R1, #0xAC; unsigned __int8
431610:  MOVS            R2, #0xCB; unsigned __int8
431612:  MOVS            R3, #0xF1; unsigned __int8
431614:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
431618:  LDRB.W          R0, [SP,#0x80+var_74]
43161C:  LDRB.W          R1, [SP,#0x80+var_74+1]
431620:  LDRB.W          R2, [SP,#0x80+var_74+2]
431624:  LDRB.W          R3, [SP,#0x80+var_74+3]
431628:  VCVT.S32.F32    S0, S29
43162C:  STRB.W          R0, [SP,#0x80+var_64]
431630:  STRB.W          R1, [SP,#0x80+var_63]
431634:  STRB.W          R2, [SP,#0x80+var_62]
431638:  STRB.W          R3, [SP,#0x80+var_61]
43163C:  VMOV            R9, S0
431640:  B               loc_431670
431642:  STR             R0, [SP,#0x80+var_80]; unsigned __int8
431644:  MOV             R0, R4; this
431646:  MOVS            R1, #0x4A ; 'J'; unsigned __int8
431648:  MOVS            R2, #0x5A ; 'Z'; unsigned __int8
43164A:  MOVS            R3, #0x6B ; 'k'; unsigned __int8
43164C:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
431650:  LDRB.W          R0, [SP,#0x80+var_74]
431654:  LDRB.W          R1, [SP,#0x80+var_74+1]
431658:  LDRB.W          R2, [SP,#0x80+var_74+2]
43165C:  LDRB.W          R3, [SP,#0x80+var_74+3]
431660:  STRB.W          R0, [SP,#0x80+var_64]
431664:  STRB.W          R1, [SP,#0x80+var_63]
431668:  STRB.W          R2, [SP,#0x80+var_62]
43166C:  STRB.W          R3, [SP,#0x80+var_61]
431670:  LDRD.W          R0, R1, [R6,#(dword_9FC900 - 0x9FC8FC)]
431674:  VSUB.F32        S31, S22, S31
431678:  VMOV            S2, R1
43167C:  MOVS            R2, #0; unsigned __int8
43167E:  VADD.F32        S16, S29, S20
431682:  CMP.W           R0, #0x280
431686:  VMOV            S0, R0
43168A:  MOV.W           R0, #0xC8
43168E:  MOV.W           R3, #0; unsigned __int8
431692:  VCVT.F32.S32    S0, S0
431696:  VCVT.F32.S32    S2, S2
43169A:  VMUL.F32        S0, S0, S23
43169E:  IT EQ
4316A0:  VMOVEQ.F32      S0, S27
4316A4:  CMP.W           R1, #0x1C0
4316A8:  VMUL.F32        S2, S2, S25
4316AC:  MOV.W           R1, #0; unsigned __int8
4316B0:  IT EQ
4316B2:  VMOVEQ.F32      S2, S27
4316B6:  VADD.F32        S4, S29, S0
4316BA:  VADD.F32        S6, S31, S2
4316BE:  STR             R0, [SP,#0x80+var_80]; unsigned __int8
4316C0:  VADD.F32        S0, S16, S0
4316C4:  MOV             R0, R11; this
4316C6:  VADD.F32        S2, S22, S2
4316CA:  VSTR            S4, [SP,#0x80+var_74]
4316CE:  VSTR            S6, [SP,#0x80+var_68]
4316D2:  VSTR            S0, [SP,#0x80+var_6C]
4316D6:  VSTR            S2, [SP,#0x80+var_70]
4316DA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
4316DE:  MOV             R0, R4
4316E0:  MOV             R1, R11
4316E2:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
4316E6:  MOV             R0, R4
4316E8:  MOV             R1, R8
4316EA:  VSTR            S31, [SP,#0x80+var_68]
4316EE:  VSTR            S29, [SP,#0x80+var_74]
4316F2:  VSTR            S16, [SP,#0x80+var_6C]
4316F6:  VSTR            S22, [SP,#0x80+var_70]
4316FA:  BLX             j__ZN9CSprite2d8DrawRectERK5CRectRK5CRGBA; CSprite2d::DrawRect(CRect const&,CRGBA const&)
4316FE:  SUBS            R5, #1
431700:  ADD.W           R10, R10, #1
431704:  BNE.W           loc_4315C6
431708:  MOV             R0, R9
43170A:  ADD             SP, SP, #0x20 ; ' '
43170C:  VPOP            {D8-D15}
431710:  ADD             SP, SP, #4
431712:  POP.W           {R8-R11}
431716:  POP             {R4-R7,PC}
