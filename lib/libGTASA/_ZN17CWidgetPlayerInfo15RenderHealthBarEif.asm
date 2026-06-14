; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo15RenderHealthBarEif
; Address            : 0x2BD610 - 0x2BD7A0
; =========================================================

2BD610:  PUSH            {R4-R7,LR}
2BD612:  ADD             R7, SP, #0xC
2BD614:  PUSH.W          {R8-R10}
2BD618:  VPUSH           {D8-D13}
2BD61C:  SUB             SP, SP, #0x20
2BD61E:  MOV             R4, R0
2BD620:  LDR             R0, =(_ZN4CHud13m_ItemToFlashE_ptr - 0x2BD626)
2BD622:  ADD             R0, PC; _ZN4CHud13m_ItemToFlashE_ptr
2BD624:  LDR             R0, [R0]; CHud::m_ItemToFlash ...
2BD626:  LDRH            R0, [R0]; CHud::m_ItemToFlash
2BD628:  CMP             R0, #4
2BD62A:  BNE             loc_2BD650
2BD62C:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BD63A)
2BD62E:  MOV             R3, #0x5D9F7391
2BD636:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BD638:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2BD63A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2BD63C:  UMULL.W         R3, R6, R0, R3
2BD640:  LSRS            R3, R6, #7
2BD642:  MOV.W           R6, #0x15E
2BD646:  MLS.W           R0, R3, R6, R0
2BD64A:  CMP             R0, #0x97
2BD64C:  BCC.W           loc_2BD794
2BD650:  LDR             R3, =(_ZN6CWorld7PlayersE_ptr - 0x2BD65E)
2BD652:  MOV.W           R12, #0x194
2BD656:  MUL.W           R6, R1, R12
2BD65A:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
2BD65C:  LDR             R3, [R3]; CWorld::Players ...
2BD65E:  LDR             R6, [R3,R6]
2BD660:  ADDW            R6, R6, #0x544
2BD664:  VLDR            S0, [R6]
2BD668:  VCVT.S32.F32    S0, S0
2BD66C:  VMOV            R6, S0
2BD670:  CMP             R6, #9
2BD672:  BGT             loc_2BD696
2BD674:  LDR             R6, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BD682)
2BD676:  MOV             R5, #0x5D9F7391
2BD67E:  ADD             R6, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BD680:  LDR             R6, [R6]; CTimer::m_snTimeInMilliseconds ...
2BD682:  LDR             R6, [R6]; CTimer::m_snTimeInMilliseconds
2BD684:  UMULL.W         R5, R0, R6, R5
2BD688:  MOV.W           R5, #0x15E
2BD68C:  LSRS            R0, R0, #7
2BD68E:  MLS.W           R0, R0, R5, R6
2BD692:  CMP             R0, #0x97
2BD694:  BCC             loc_2BD794
2BD696:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x2BD6A8)
2BD698:  VMOV            S16, R2
2BD69C:  LDR.W           R9, =(HudColour_ptr - 0x2BD6AA)
2BD6A0:  MLA.W           R6, R1, R12, R3
2BD6A4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2BD6A6:  ADD             R9, PC; HudColour_ptr
2BD6A8:  LDR             R0, [R0]; CWorld::Players ...
2BD6AA:  MLA.W           R5, R1, R12, R0
2BD6AE:  MOVS            R0, #off_18; this
2BD6B0:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
2BD6B4:  MOV             R10, R0
2BD6B6:  LDR             R0, [R6]
2BD6B8:  LDRB.W          R3, [R4,#0x4C]
2BD6BC:  ADD.W           R8, SP, #0x68+var_4C
2BD6C0:  ADDW            R0, R0, #0x544
2BD6C4:  LDR.W           R1, [R9]; HudColour ; unsigned __int8
2BD6C8:  MOVS            R2, #0; unsigned __int8
2BD6CA:  VLDR            S18, [R4,#0x20]
2BD6CE:  VLDR            S26, [R0]
2BD6D2:  MOV             R0, R8; this
2BD6D4:  VLDR            S20, [R4,#0x24]
2BD6D8:  MOVS            R6, #0
2BD6DA:  VLDR            S22, [R4,#0x28]
2BD6DE:  VLDR            S24, [R4,#0x2C]
2BD6E2:  LDRB.W          R4, [R5,#0x14F]
2BD6E6:  BLX             j__ZN11CHudColours6GetRGBEhh; CHudColours::GetRGB(uchar,uchar)
2BD6EA:  ADD             R0, SP, #0x68+var_50; this
2BD6EC:  MOVS            R1, #0; unsigned __int8
2BD6EE:  MOVS            R2, #0; unsigned __int8
2BD6F0:  MOVS            R3, #0; unsigned __int8
2BD6F2:  STR             R6, [SP,#0x68+var_68]; unsigned __int8
2BD6F4:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BD6F8:  VLDR            S0, =1000.0
2BD6FC:  VMOV            S2, R10
2BD700:  VMOV.F32        S4, #1.0
2BD704:  MOVS            R3, #1
2BD706:  VDIV.F32        S0, S2, S0
2BD70A:  VSUB.F32        S2, S22, S18
2BD70E:  VMIN.F32        D0, D0, D2
2BD712:  VLDR            S4, =0.55
2BD716:  VSUB.F32        S6, S20, S24
2BD71A:  VABS.F32        S2, S2
2BD71E:  VMUL.F32        S0, S0, S2
2BD722:  VMUL.F32        S2, S2, S4
2BD726:  VMUL.F32        S0, S0, S4
2BD72A:  VADD.F32        S2, S18, S2
2BD72E:  VMOV            S4, R4
2BD732:  VCVT.U32.F32    S0, S0
2BD736:  VMOV            R2, S0
2BD73A:  VCVT.F32.U32    S0, S0
2BD73E:  VCVT.F32.U32    S4, S4
2BD742:  VSUB.F32        S0, S2, S0
2BD746:  VCVT.S32.F32    S2, S16
2BD74A:  VDIV.F32        S4, S26, S4
2BD74E:  VCVT.F32.S32    S2, S2
2BD752:  VCVT.S32.F32    S0, S0
2BD756:  VMOV            R1, S2
2BD75A:  VLDR            S2, =0.095
2BD75E:  VCVT.F32.S32    S0, S0
2BD762:  STRD.W          R6, R6, [SP,#0x68+var_64]
2BD766:  STRD.W          R3, R8, [SP,#0x68+var_5C]
2BD76A:  STR             R0, [SP,#0x68+var_54]
2BD76C:  VMOV            R5, S0
2BD770:  VABS.F32        S0, S6
2BD774:  VLDR            S6, =100.0
2BD778:  VMUL.F32        S0, S0, S2
2BD77C:  VMUL.F32        S2, S4, S6
2BD780:  VCVT.S32.F32    S0, S0
2BD784:  VSTR            S2, [SP,#0x68+var_68]
2BD788:  VMOV            R0, S0
2BD78C:  UXTB            R3, R0
2BD78E:  MOV             R0, R5
2BD790:  BLX             j__ZN9CSprite2d12DrawBarChartEffthfahh5CRGBAS0_; CSprite2d::DrawBarChart(float,float,ushort,uchar,float,signed char,uchar,uchar,CRGBA,CRGBA)
2BD794:  ADD             SP, SP, #0x20 ; ' '
2BD796:  VPOP            {D8-D13}
2BD79A:  POP.W           {R8-R10}
2BD79E:  POP             {R4-R7,PC}
