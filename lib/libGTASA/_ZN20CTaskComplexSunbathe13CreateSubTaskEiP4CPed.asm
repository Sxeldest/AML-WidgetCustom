; =========================================================
; Game Engine Function: _ZN20CTaskComplexSunbathe13CreateSubTaskEiP4CPed
; Address            : 0x4ED5F0 - 0x4ED8A6
; =========================================================

4ED5F0:  PUSH            {R4-R7,LR}
4ED5F2:  ADD             R7, SP, #0xC
4ED5F4:  PUSH.W          {R11}
4ED5F8:  VPUSH           {D8}
4ED5FC:  SUB             SP, SP, #0x18
4ED5FE:  MOV             R5, R0
4ED600:  MOV             R6, R1
4ED602:  LDR             R0, [R5,#8]
4ED604:  CBZ             R0, loc_4ED614
4ED606:  LDR             R1, [R0]
4ED608:  LDR             R1, [R1,#0x14]
4ED60A:  BLX             R1
4ED60C:  CMP             R0, R6
4ED60E:  BNE             loc_4ED614
4ED610:  LDR             R4, [R5,#8]
4ED612:  B               loc_4ED898; jumptable 004ED61E cases 419-427
4ED614:  SUB.W           R0, R6, #0x1A2; switch 13 cases
4ED618:  MOVS            R4, #0
4ED61A:  CMP             R0, #0xC
4ED61C:  BHI             def_4ED61E; jumptable 004ED61E default case
4ED61E:  TBH.W           [PC,R0,LSL#1]; switch jump
4ED622:  DCW 0xD; jump table for switch statement
4ED624:  DCW 0x13B
4ED626:  DCW 0x13B
4ED628:  DCW 0x13B
4ED62A:  DCW 0x13B
4ED62C:  DCW 0x13B
4ED62E:  DCW 0x13B
4ED630:  DCW 0x13B
4ED632:  DCW 0x13B
4ED634:  DCW 0x13B
4ED636:  DCW 0x61
4ED638:  DCW 0x70
4ED63A:  DCW 0x77
4ED63C:  LDR             R1, [R5,#0x28]; jumptable 004ED61E case 418
4ED63E:  LDR             R0, [R5,#0x20]
4ED640:  LDRB            R1, [R1,#0x10]
4ED642:  ADD.W           R6, R0, #0xEF
4ED646:  CMP             R1, #0
4ED648:  BEQ             loc_4ED734
4ED64A:  ORR.W           R0, R0, #2
4ED64E:  CMP             R0, #2
4ED650:  BNE             loc_4ED734
4ED652:  LDRB            R0, [R5,#0x1C]
4ED654:  CMP             R0, #0
4ED656:  BEQ.W           loc_4ED82A
4ED65A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4ED668)
4ED65C:  MOVW            R3, #0x2AF8
4ED660:  LDRD.W          R1, R2, [R5,#0x14]
4ED664:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4ED666:  ADD             R1, R2; unsigned int
4ED668:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4ED66A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4ED66C:  SUBS            R2, R1, R0
4ED66E:  CMP             R2, R3
4ED670:  BLE.W           loc_4ED830
4ED674:  VLDR            S16, =9000.0
4ED678:  B               loc_4ED842
4ED67A:  CMP             R6, #0xCA; jumptable 004ED61E default case
4ED67C:  BNE.W           loc_4ED898; jumptable 004ED61E cases 419-427
4ED680:  LDR             R0, [R5,#0x28]
4ED682:  LDRB            R0, [R0,#0x10]
4ED684:  CMP             R0, #0
4ED686:  BEQ.W           loc_4ED7A4
4ED68A:  LDR             R0, [R5,#0x24]
4ED68C:  LDRB            R0, [R0,#0x10]
4ED68E:  CMP             R0, #0
4ED690:  BEQ.W           loc_4ED7FE
4ED694:  MOVS            R0, #off_18; this
4ED696:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED69A:  MOV             R4, R0
4ED69C:  BLX             rand
4ED6A0:  MOV             R5, R0
4ED6A2:  MOV             R0, R4; this
4ED6A4:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4ED6A8:  UXTH            R0, R5
4ED6AA:  VLDR            S2, =0.000015259
4ED6AE:  VMOV            S0, R0
4ED6B2:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x4ED6BE)
4ED6B4:  MOVS            R1, #0; unsigned int
4ED6B6:  VCVT.F32.S32    S0, S0
4ED6BA:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4ED6BC:  STRH            R1, [R4,#0x10]
4ED6BE:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4ED6C0:  ADDS            R0, #8
4ED6C2:  STR             R0, [R4]
4ED6C4:  VMUL.F32        S0, S0, S2
4ED6C8:  VLDR            S2, =4000.0
4ED6CC:  VMUL.F32        S0, S0, S2
4ED6D0:  VCVT.S32.F32    S0, S0
4ED6D4:  STRD.W          R1, R1, [R4,#8]
4ED6D8:  VMOV            R0, S0
4ED6DC:  ADD.W           R0, R0, #0x3E8
4ED6E0:  STR             R0, [R4,#0x14]
4ED6E2:  B               loc_4ED898; jumptable 004ED61E cases 419-427
4ED6E4:  MOVS            R0, #dword_20; jumptable 004ED61E case 428
4ED6E6:  LDR             R5, [R5,#0x20]
4ED6E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED6EC:  MOV             R4, R0
4ED6EE:  LDR             R0, =(aStartSunbathin - 0x4ED6FA); "start sunbathing"
4ED6F0:  MOVS            R1, #1; unsigned int
4ED6F2:  MOV.W           R2, #0x1AC
4ED6F6:  ADD             R0, PC; "start sunbathing"
4ED6F8:  STRD.W          R2, R0, [SP,#0x30+var_30]
4ED6FC:  ADD.W           R2, R5, #0xF4
4ED700:  B               loc_4ED72C
4ED702:  LDR             R0, [R5,#0x20]; jumptable 004ED61E case 429
4ED704:  CMP             R0, #2
4ED706:  BEQ             loc_4ED750
4ED708:  CMP             R0, #0
4ED70A:  BNE             loc_4ED77C
4ED70C:  MOVS            R4, #0xFE
4ED70E:  B               loc_4ED754
4ED710:  MOVS            R0, #dword_20; jumptable 004ED61E case 430
4ED712:  LDR             R5, [R5,#0x20]
4ED714:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED718:  MOV             R4, R0
4ED71A:  LDR             R0, =(aStopSunbathing - 0x4ED726); "stop sunbathing"
4ED71C:  MOV.W           R2, #0x1AE
4ED720:  MOVS            R1, #0
4ED722:  ADD             R0, PC; "stop sunbathing"
4ED724:  STRD.W          R2, R0, [SP,#0x30+var_30]
4ED728:  ADD.W           R2, R5, #0xF9
4ED72C:  STR             R1, [SP,#0x30+var_28]
4ED72E:  MOV             R0, R4
4ED730:  MOVS            R1, #0x30 ; '0'
4ED732:  B               loc_4ED79A
4ED734:  LDRB            R0, [R5,#0x1C]
4ED736:  CMP             R0, #0
4ED738:  BEQ             loc_4ED824
4ED73A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4ED744)
4ED73C:  LDRD.W          R1, R2, [R5,#0x14]
4ED740:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4ED742:  ADD             R1, R2
4ED744:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4ED746:  ADD.W           R1, R1, #0x3E8
4ED74A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4ED74C:  SUBS            R5, R1, R0
4ED74E:  B               loc_4ED868
4ED750:  MOVW            R4, #0x101
4ED754:  BLX             rand
4ED758:  UXTH            R0, R0
4ED75A:  VLDR            S2, =0.000015259
4ED75E:  VMOV            S0, R0
4ED762:  VMOV.F32        S4, #3.0
4ED766:  VCVT.F32.S32    S0, S0
4ED76A:  VMUL.F32        S0, S0, S2
4ED76E:  VMUL.F32        S0, S0, S4
4ED772:  VCVT.S32.F32    S0, S0
4ED776:  VMOV            R0, S0
4ED77A:  ADDS            R5, R4, R0
4ED77C:  MOVS            R0, #dword_20; this
4ED77E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED782:  MOV             R4, R0
4ED784:  LDR             R0, =(aIdleSunbathing - 0x4ED790); "idle sunbathing"
4ED786:  MOVS            R1, #1
4ED788:  MOVW            R2, #0x1AD
4ED78C:  ADD             R0, PC; "idle sunbathing"
4ED78E:  STRD.W          R2, R0, [SP,#0x30+var_30]
4ED792:  MOV             R0, R4
4ED794:  STR             R1, [SP,#0x30+var_28]
4ED796:  MOVS            R1, #0x30 ; '0'
4ED798:  MOV             R2, R5
4ED79A:  MOV.W           R3, #0x40800000
4ED79E:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
4ED7A2:  B               loc_4ED898; jumptable 004ED61E cases 419-427
4ED7A4:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4ED7B0)
4ED7A6:  MOV.W           R2, #0x194
4ED7AA:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4ED7B2)
4ED7AC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4ED7AE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4ED7B0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4ED7B2:  LDR             R1, [R1]; CWorld::Players ...
4ED7B4:  LDR             R0, [R0]; CWorld::PlayerInFocus
4ED7B6:  SMULBB.W        R0, R0, R2
4ED7BA:  LDR             R1, [R1,R0]
4ED7BC:  LDR.W           R0, [R1,#0x590]
4ED7C0:  CMP             R0, #0
4ED7C2:  ITT NE
4ED7C4:  LDRNE.W         R1, [R1,#0x484]
4ED7C8:  ANDSNE.W        R1, R1, #0x100; unsigned int
4ED7CC:  BEQ             loc_4ED7FE
4ED7CE:  VLDR            S0, [R0,#0x48]
4ED7D2:  VLDR            S2, [R0,#0x4C]
4ED7D6:  VMUL.F32        S0, S0, S0
4ED7DA:  VLDR            S4, [R0,#0x50]
4ED7DE:  VMUL.F32        S2, S2, S2
4ED7E2:  VMUL.F32        S4, S4, S4
4ED7E6:  VADD.F32        S0, S0, S2
4ED7EA:  VLDR            S2, =0.04
4ED7EE:  VADD.F32        S0, S0, S4
4ED7F2:  VCMPE.F32       S0, S2
4ED7F6:  VMRS            APSR_nzcv, FPSCR
4ED7FA:  BGT.W           loc_4ED68A
4ED7FE:  MOVS            R0, #off_18; this
4ED800:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED804:  MOV             R4, R0
4ED806:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4ED80A:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x4ED818)
4ED80C:  MOVS            R1, #0
4ED80E:  MOVW            R2, #0x2710
4ED812:  STRH            R1, [R4,#0x10]
4ED814:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4ED816:  STR             R2, [R4,#0x14]
4ED818:  STRD.W          R1, R1, [R4,#8]
4ED81C:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4ED81E:  ADDS            R0, #8
4ED820:  STR             R0, [R4]
4ED822:  B               loc_4ED898; jumptable 004ED61E cases 419-427
4ED824:  MOV.W           R5, #0x3E8
4ED828:  B               loc_4ED868
4ED82A:  VLDR            S16, =-2000.0
4ED82E:  B               loc_4ED842
4ED830:  ADD.W           R1, R1, #0x3E8
4ED834:  SUBS            R0, R1, R0
4ED836:  SUBW            R0, R0, #0xBB8
4ED83A:  VMOV            S0, R0
4ED83E:  VCVT.F32.S32    S16, S0
4ED842:  BLX             rand
4ED846:  UXTH            R0, R0
4ED848:  VLDR            S2, =0.000015259
4ED84C:  VMOV            S0, R0
4ED850:  VCVT.F32.S32    S0, S0
4ED854:  VMUL.F32        S0, S0, S2
4ED858:  VMUL.F32        S0, S16, S0
4ED85C:  VCVT.S32.F32    S0, S0
4ED860:  VMOV            R0, S0
4ED864:  ADDW            R5, R0, #0xBB8
4ED868:  MOVS            R0, #dword_34; this
4ED86A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4ED86E:  MOV             R4, R0
4ED870:  LDR             R0, =(aSunbathe - 0x4ED87A); "sunbathe"
4ED872:  MOVS            R3, #0
4ED874:  MOVS            R1, #1
4ED876:  ADD             R0, PC; "sunbathe"
4ED878:  MOVT            R3, #0xC080
4ED87C:  MOV.W           R2, #0x1A2
4ED880:  STRD.W          R3, R5, [SP,#0x30+var_30]; float
4ED884:  STRD.W          R2, R0, [SP,#0x30+var_28]; int
4ED888:  MOV             R0, R4; int
4ED88A:  STR             R1, [SP,#0x30+var_20]; int
4ED88C:  MOVS            R1, #0x2F ; '/'; int
4ED88E:  MOV             R2, R6; int
4ED890:  MOV.W           R3, #0x40800000; int
4ED894:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
4ED898:  MOV             R0, R4; jumptable 004ED61E cases 419-427
4ED89A:  ADD             SP, SP, #0x18
4ED89C:  VPOP            {D8}
4ED8A0:  POP.W           {R11}
4ED8A4:  POP             {R4-R7,PC}
