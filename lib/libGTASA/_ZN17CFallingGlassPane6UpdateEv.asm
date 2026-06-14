; =========================================================
; Game Engine Function: _ZN17CFallingGlassPane6UpdateEv
; Address            : 0x5AB484 - 0x5AB700
; =========================================================

5AB484:  PUSH            {R4-R7,LR}
5AB486:  ADD             R7, SP, #0xC
5AB488:  PUSH.W          {R8}
5AB48C:  VPUSH           {D8-D10}
5AB490:  SUB             SP, SP, #0x28
5AB492:  MOV             R4, R0
5AB494:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5AB49C)
5AB496:  LDR             R1, [R4,#0x60]
5AB498:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5AB49A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5AB49C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5AB49E:  CMP             R0, R1
5AB4A0:  BCC.W           loc_5AB6F4
5AB4A4:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5AB4B4)
5AB4A6:  VMOV.F32        S0, #1.0
5AB4AA:  LDRB.W          R1, [R4,#0x6F]
5AB4AE:  ADR             R2, dword_5AB70C
5AB4B0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5AB4B2:  VLDR            S2, =0.35
5AB4B6:  VLDR            S10, [R4,#0x48]
5AB4BA:  CMP             R1, #0
5AB4BC:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5AB4BE:  ADD.W           R5, R4, #0x54 ; 'T'
5AB4C2:  VLDR            S12, [R4,#0x4C]
5AB4C6:  VLDR            S14, [R4,#0x50]
5AB4CA:  VLDR            S1, [R0]
5AB4CE:  ADD             R0, SP, #0x50+var_38; CVector *
5AB4D0:  VLDR            S4, [R4,#0x30]
5AB4D4:  VLDR            S6, [R4,#0x34]
5AB4D8:  VLDR            S8, [R4,#0x38]
5AB4DC:  IT NE
5AB4DE:  VMOVNE.F32      S0, S2
5AB4E2:  VMUL.F32        S2, S10, S1
5AB4E6:  CMP             R1, #0
5AB4E8:  VMUL.F32        S10, S12, S1
5AB4EC:  IT NE
5AB4EE:  ADDNE           R2, #4
5AB4F0:  VMUL.F32        S12, S14, S1
5AB4F4:  VLDR            S3, [R2]
5AB4F8:  MOV             R1, R5; CVector *
5AB4FA:  MOV             R2, R4
5AB4FC:  VMUL.F32        S1, S3, S1
5AB500:  VMUL.F32        S2, S0, S2
5AB504:  VMUL.F32        S10, S0, S10
5AB508:  VMUL.F32        S0, S0, S12
5AB50C:  VSUB.F32        S12, S14, S1
5AB510:  VADD.F32        S2, S4, S2
5AB514:  VADD.F32        S4, S6, S10
5AB518:  VADD.F32        S0, S8, S0
5AB51C:  VSTR            S12, [R4,#0x50]
5AB520:  VSTR            S2, [R4,#0x30]
5AB524:  VSTR            S4, [R4,#0x34]
5AB528:  VSTR            S0, [R4,#0x38]
5AB52C:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5AB530:  VLDR            S0, [R4]
5AB534:  ADD.W           R2, R4, #0x10
5AB538:  VLDR            S6, [SP,#0x50+var_38]
5AB53C:  ADD             R0, SP, #0x50+var_48; CVector *
5AB53E:  VLDR            S2, [R4,#4]
5AB542:  MOV             R1, R5; CVector *
5AB544:  VADD.F32        S0, S6, S0
5AB548:  VLDR            S6, [SP,#0x50+var_38+4]
5AB54C:  VLDR            S4, [R4,#8]
5AB550:  VADD.F32        S2, S6, S2
5AB554:  VLDR            S6, [SP,#0x50+var_30]
5AB558:  VADD.F32        S4, S6, S4
5AB55C:  VSTR            S0, [R4]
5AB560:  VSTR            S2, [R4,#4]
5AB564:  VSTR            S4, [R4,#8]
5AB568:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5AB56C:  VLDR            D16, [SP,#0x50+var_48]
5AB570:  ADD.W           R2, R4, #0x20 ; ' '
5AB574:  LDR             R0, [SP,#0x50+var_40]
5AB576:  MOV             R1, R5; CVector *
5AB578:  STR             R0, [SP,#0x50+var_30]
5AB57A:  ADD             R0, SP, #0x50+var_48; CVector *
5AB57C:  VSTR            D16, [SP,#0x50+var_38]
5AB580:  VLDR            S0, [R4,#0x10]
5AB584:  VLDR            S6, [SP,#0x50+var_38]
5AB588:  VLDR            S2, [R4,#0x14]
5AB58C:  VADD.F32        S0, S6, S0
5AB590:  VLDR            S6, [SP,#0x50+var_38+4]
5AB594:  VLDR            S4, [R4,#0x18]
5AB598:  VADD.F32        S2, S6, S2
5AB59C:  VLDR            S6, [SP,#0x50+var_30]
5AB5A0:  VADD.F32        S4, S6, S4
5AB5A4:  VSTR            S0, [R4,#0x10]
5AB5A8:  VSTR            S2, [R4,#0x14]
5AB5AC:  VSTR            S4, [R4,#0x18]
5AB5B0:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5AB5B4:  VLDR            D16, [SP,#0x50+var_48]
5AB5B8:  LDR             R0, [SP,#0x50+var_40]
5AB5BA:  STR             R0, [SP,#0x50+var_30]
5AB5BC:  VSTR            D16, [SP,#0x50+var_38]
5AB5C0:  VLDR            S0, [R4,#0x20]
5AB5C4:  VLDR            S8, [SP,#0x50+var_38]
5AB5C8:  VLDR            S2, [R4,#0x24]
5AB5CC:  VADD.F32        S8, S8, S0
5AB5D0:  VLDR            S0, [SP,#0x50+var_38+4]
5AB5D4:  VLDR            S4, [R4,#0x28]
5AB5D8:  VADD.F32        S2, S0, S2
5AB5DC:  VLDR            S0, [SP,#0x50+var_30]
5AB5E0:  VLDR            S6, [R4,#0x38]
5AB5E4:  VADD.F32        S4, S0, S4
5AB5E8:  VLDR            S0, [R4,#0x64]
5AB5EC:  VCMPE.F32       S6, S0
5AB5F0:  VMRS            APSR_nzcv, FPSCR
5AB5F4:  VSTR            S8, [R4,#0x20]
5AB5F8:  VSTR            S2, [R4,#0x24]
5AB5FC:  VSTR            S4, [R4,#0x28]
5AB600:  BGE             loc_5AB6F4
5AB602:  LDR             R0, =(AudioEngine_ptr - 0x5AB60E)
5AB604:  MOVS            R1, #0
5AB606:  STRB.W          R1, [R4,#0x6D]
5AB60A:  ADD             R0, PC; AudioEngine_ptr
5AB60C:  LDRD.W          R1, R2, [R4,#0x30]
5AB610:  STRD.W          R1, R2, [SP,#0x50+var_48]
5AB614:  ADD             R2, SP, #0x50+var_48; CVector *
5AB616:  LDR             R0, [R0]; AudioEngine ; this
5AB618:  MOVS            R1, #0x7F; int
5AB61A:  VSTR            S0, [SP,#0x50+var_40]
5AB61E:  BLX.W           j__ZN12CAudioEngine25ReportGlassCollisionEventEiR7CVector; CAudioEngine::ReportGlassCollisionEvent(int,CVector &)
5AB622:  LDRB.W          R0, [R4,#0x6F]
5AB626:  CMP             R0, #0
5AB628:  BNE             loc_5AB6F4
5AB62A:  ADD.W           R8, SP, #0x50+var_4C
5AB62E:  MOVS            R0, #0x20 ; ' '
5AB630:  STR             R0, [SP,#0x50+var_50]; unsigned __int8
5AB632:  MOVS            R1, #0xFF; unsigned __int8
5AB634:  MOV             R0, R8; this
5AB636:  MOVS            R2, #0xFF; unsigned __int8
5AB638:  MOVS            R3, #0xFF; unsigned __int8
5AB63A:  BLX.W           j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
5AB63E:  BLX.W           rand
5AB642:  VMOV            S0, R0
5AB646:  VLDR            S16, =4.6566e-10
5AB64A:  VLDR            S18, =0.04
5AB64E:  ADD             R6, SP, #0x50+var_48
5AB650:  VCVT.F32.S32    S0, S0
5AB654:  VLDR            S20, =0.02
5AB658:  LDR             R0, =(g_fx_ptr - 0x5AB664)
5AB65A:  MOVS            R4, #1
5AB65C:  MOV             R1, R6
5AB65E:  MOV             R2, R8
5AB660:  ADD             R0, PC; g_fx_ptr
5AB662:  STR             R4, [SP,#0x50+var_50]
5AB664:  LDR             R5, [R0]; g_fx
5AB666:  VMUL.F32        S0, S0, S16
5AB66A:  MOV             R0, R5
5AB66C:  VMUL.F32        S0, S0, S18
5AB670:  VADD.F32        S0, S0, S20
5AB674:  VMOV            R3, S0
5AB678:  BLX.W           j__ZN4Fx_c8AddGlassER7CVectorR6RwRGBAfi; Fx_c::AddGlass(CVector &,RwRGBA &,float,int)
5AB67C:  BLX.W           rand
5AB680:  VMOV            S0, R0
5AB684:  MOV             R0, R5
5AB686:  MOV             R1, R6
5AB688:  MOV             R2, R8
5AB68A:  VCVT.F32.S32    S0, S0
5AB68E:  STR             R4, [SP,#0x50+var_50]
5AB690:  VMUL.F32        S0, S0, S16
5AB694:  VMUL.F32        S0, S0, S18
5AB698:  VADD.F32        S0, S0, S20
5AB69C:  VMOV            R3, S0
5AB6A0:  BLX.W           j__ZN4Fx_c8AddGlassER7CVectorR6RwRGBAfi; Fx_c::AddGlass(CVector &,RwRGBA &,float,int)
5AB6A4:  BLX.W           rand
5AB6A8:  VMOV            S0, R0
5AB6AC:  MOV             R0, R5
5AB6AE:  MOV             R1, R6
5AB6B0:  MOV             R2, R8
5AB6B2:  VCVT.F32.S32    S0, S0
5AB6B6:  STR             R4, [SP,#0x50+var_50]
5AB6B8:  VMUL.F32        S0, S0, S16
5AB6BC:  VMUL.F32        S0, S0, S18
5AB6C0:  VADD.F32        S0, S0, S20
5AB6C4:  VMOV            R3, S0
5AB6C8:  BLX.W           j__ZN4Fx_c8AddGlassER7CVectorR6RwRGBAfi; Fx_c::AddGlass(CVector &,RwRGBA &,float,int)
5AB6CC:  BLX.W           rand
5AB6D0:  VMOV            S0, R0
5AB6D4:  MOV             R0, R5
5AB6D6:  MOV             R1, R6
5AB6D8:  MOV             R2, R8
5AB6DA:  VCVT.F32.S32    S0, S0
5AB6DE:  STR             R4, [SP,#0x50+var_50]
5AB6E0:  VMUL.F32        S0, S0, S16
5AB6E4:  VMUL.F32        S0, S0, S18
5AB6E8:  VADD.F32        S0, S0, S20
5AB6EC:  VMOV            R3, S0
5AB6F0:  BLX.W           j__ZN4Fx_c8AddGlassER7CVectorR6RwRGBAfi; Fx_c::AddGlass(CVector &,RwRGBA &,float,int)
5AB6F4:  ADD             SP, SP, #0x28 ; '('
5AB6F6:  VPOP            {D8-D10}
5AB6FA:  POP.W           {R8}
5AB6FE:  POP             {R4-R7,PC}
