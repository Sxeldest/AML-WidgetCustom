; =========================================================
; Game Engine Function: _ZN17CWidgetPlayerInfo15RenderBreathBarEif
; Address            : 0x2BD95C - 0x2BDA76
; =========================================================

2BD95C:  PUSH            {R4-R7,LR}
2BD95E:  ADD             R7, SP, #0xC
2BD960:  PUSH.W          {R11}
2BD964:  VPUSH           {D8-D13}
2BD968:  SUB             SP, SP, #0x20
2BD96A:  MOV             R4, R0
2BD96C:  LDR             R0, =(_ZN4CHud13m_ItemToFlashE_ptr - 0x2BD972)
2BD96E:  ADD             R0, PC; _ZN4CHud13m_ItemToFlashE_ptr
2BD970:  LDR             R0, [R0]; CHud::m_ItemToFlash ...
2BD972:  LDRH            R0, [R0]; CHud::m_ItemToFlash
2BD974:  CMP             R0, #0xA
2BD976:  BNE             loc_2BD99A
2BD978:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2BD986)
2BD97A:  MOV             R3, #0x5D9F7391
2BD982:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2BD984:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2BD986:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2BD988:  UMULL.W         R3, R6, R0, R3
2BD98C:  LSRS            R3, R6, #7
2BD98E:  MOV.W           R6, #0x15E
2BD992:  MLS.W           R0, R3, R6, R0
2BD996:  CMP             R0, #0x97
2BD998:  BCC             loc_2BDA6A
2BD99A:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x2BD9AA)
2BD99C:  VMOV            S16, R2
2BD9A0:  MOV.W           R2, #0x194
2BD9A4:  MULS            R1, R2
2BD9A6:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
2BD9A8:  LDR             R0, [R0]; CWorld::Players ...
2BD9AA:  LDR             R0, [R0,R1]
2BD9AC:  LDR.W           R0, [R0,#0x444]
2BD9B0:  VLDR            S18, [R0,#0x44]
2BD9B4:  MOVS            R0, #8
2BD9B6:  BLX             j__ZN6CStats23GetFatAndMuscleModifierE17eStatModAbilities; CStats::GetFatAndMuscleModifier(eStatModAbilities)
2BD9BA:  MOV             R5, R0
2BD9BC:  VLDR            S20, [R4,#0x20]
2BD9C0:  VLDR            S22, [R4,#0x24]
2BD9C4:  MOVS            R1, #0x89; unsigned __int8
2BD9C6:  VLDR            S24, [R4,#0x28]
2BD9CA:  MOVS            R2, #0xA2; unsigned __int8
2BD9CC:  VLDR            S26, [R4,#0x2C]
2BD9D0:  MOVS            R3, #0xC0; unsigned __int8
2BD9D2:  LDRB.W          R0, [R4,#0x4C]
2BD9D6:  ADD             R4, SP, #0x60+var_44
2BD9D8:  STR             R0, [SP,#0x60+var_60]; unsigned __int8
2BD9DA:  MOV             R0, R4; this
2BD9DC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BD9E0:  ADD             R0, SP, #0x60+var_48; this
2BD9E2:  MOVS            R6, #0
2BD9E4:  MOVS            R1, #0; unsigned __int8
2BD9E6:  MOVS            R2, #0; unsigned __int8
2BD9E8:  MOVS            R3, #0; unsigned __int8
2BD9EA:  STR             R6, [SP,#0x60+var_60]; unsigned __int8
2BD9EC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BD9F0:  VCVT.S32.F32    S2, S16
2BD9F4:  VLDR            S10, =0.55
2BD9F8:  VSUB.F32        S4, S22, S26
2BD9FC:  MOVS            R2, #1
2BD9FE:  VSUB.F32        S8, S24, S20
2BDA02:  VMOV            S0, R5
2BDA06:  VDIV.F32        S0, S18, S0
2BDA0A:  VCVT.F32.S32    S2, S2
2BDA0E:  VCVT.S32.F32    S6, S20
2BDA12:  VMOV            R1, S2
2BDA16:  VABS.F32        S2, S4
2BDA1A:  VABS.F32        S4, S8
2BDA1E:  VCVT.F32.S32    S6, S6
2BDA22:  STRD.W          R6, R6, [SP,#0x60+var_5C]
2BDA26:  STRD.W          R2, R4, [SP,#0x60+var_54]
2BDA2A:  VMOV.F32        S8, #1.0
2BDA2E:  STR             R0, [SP,#0x60+var_4C]
2BDA30:  VMUL.F32        S4, S4, S10
2BDA34:  VMOV            R5, S6
2BDA38:  VLDR            S6, =0.095
2BDA3C:  VMIN.F32        D0, D0, D4
2BDA40:  VLDR            S8, =100.0
2BDA44:  VMUL.F32        S2, S2, S6
2BDA48:  VCVT.S32.F32    S4, S4
2BDA4C:  VMUL.F32        S0, S0, S8
2BDA50:  VCVT.S32.F32    S2, S2
2BDA54:  VMOV            R0, S4
2BDA58:  VSTR            S0, [SP,#0x60+var_60]
2BDA5C:  UXTH            R2, R0
2BDA5E:  VMOV            R0, S2
2BDA62:  UXTB            R3, R0
2BDA64:  MOV             R0, R5
2BDA66:  BLX             j__ZN9CSprite2d12DrawBarChartEffthfahh5CRGBAS0_; CSprite2d::DrawBarChart(float,float,ushort,uchar,float,signed char,uchar,uchar,CRGBA,CRGBA)
2BDA6A:  ADD             SP, SP, #0x20 ; ' '
2BDA6C:  VPOP            {D8-D13}
2BDA70:  POP.W           {R11}
2BDA74:  POP             {R4-R7,PC}
