; =========================================================
; Game Engine Function: _ZN18CTaskComplexOnFire14ControlSubTaskEP4CPed
; Address            : 0x4EF6BC - 0x4EF80C
; =========================================================

4EF6BC:  PUSH            {R4-R7,LR}
4EF6BE:  ADD             R7, SP, #0xC
4EF6C0:  PUSH.W          {R8}
4EF6C4:  SUB             SP, SP, #0x30
4EF6C6:  MOV             R5, R1
4EF6C8:  MOV             R6, R0
4EF6CA:  LDRB.W          R0, [R5,#0x45]
4EF6CE:  LDR             R4, [R6,#8]
4EF6D0:  LSLS            R0, R0, #0x1F
4EF6D2:  MOV             R0, R4
4EF6D4:  BEQ             loc_4EF6E6
4EF6D6:  LDR.W           R1, [R5,#0x738]
4EF6DA:  MOV             R0, R4
4EF6DC:  CBZ             R1, loc_4EF6E6
4EF6DE:  MOV             R0, R1; this
4EF6E0:  BLX             j__ZN5CFire10ExtinguishEv; CFire::Extinguish(void)
4EF6E4:  LDR             R0, [R6,#8]
4EF6E6:  LDR             R1, [R0]
4EF6E8:  LDR             R1, [R1,#0x14]
4EF6EA:  BLX             R1
4EF6EC:  MOVW            R1, #0x38F
4EF6F0:  CMP             R0, R1
4EF6F2:  BNE.W           loc_4EF802
4EF6F6:  LDR.W           R0, [R5,#0x738]; this
4EF6FA:  CMP             R0, #0
4EF6FC:  BEQ             loc_4EF7EE
4EF6FE:  BLX             j__ZN13CLocalisation10PedsOnFireEv; CLocalisation::PedsOnFire(void)
4EF702:  CBZ             R0, loc_4EF720
4EF704:  MOVW            R3, #0xCCCD
4EF708:  MOVS            R0, #0
4EF70A:  STRD.W          R0, R0, [SP,#0x40+var_40]; unsigned __int8
4EF70E:  MOVT            R3, #0x3DCC; float
4EF712:  STR             R0, [SP,#0x40+var_38]; unsigned __int8
4EF714:  MOV             R0, R5; this
4EF716:  MOV.W           R1, #0x15A; unsigned __int16
4EF71A:  MOVS            R2, #0; unsigned int
4EF71C:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
4EF720:  MOVS            R0, #0
4EF722:  STRD.W          R0, R0, [SP,#0x40+var_30]
4EF726:  STR             R0, [SP,#0x40+var_28]
4EF728:  LDRB.W          R0, [R5,#0x46]
4EF72C:  LSLS            R0, R0, #0x1C
4EF72E:  BMI             loc_4EF802
4EF730:  LDR.W           R1, [R5,#0x738]
4EF734:  ADDW            R3, R5, #0x73C
4EF738:  LDR             R2, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x4EF752)
4EF73A:  ADD.W           R8, SP, #0x40+var_24
4EF73E:  CMP             R1, #0
4EF740:  VLDR            S0, =500.0
4EF744:  ITE NE
4EF746:  LDRNE           R1, [R1,#0x14]
4EF748:  MOVEQ           R1, #0
4EF74A:  VLDR            S2, [R3]
4EF74E:  ADD             R2, PC; _ZN6CTimer12ms_fTimeStepE_ptr
4EF750:  MOVS            R0, #0
4EF752:  VMUL.F32        S0, S2, S0
4EF756:  MOVS            R3, #3
4EF758:  LDR             R2, [R2]; CTimer::ms_fTimeStep ...
4EF75A:  VLDR            S2, [R2]
4EF75E:  STRD.W          R3, R0, [SP,#0x40+var_40]
4EF762:  MOV             R0, R8
4EF764:  MOVS            R3, #0x25 ; '%'
4EF766:  VMUL.F32        S0, S0, S2
4EF76A:  VLDR            S2, =1000.0
4EF76E:  VDIV.F32        S0, S0, S2
4EF772:  VMOV            R2, S0
4EF776:  BLX             j__ZN28CPedDamageResponseCalculatorC2EPK7CEntityf11eWeaponType14ePedPieceTypesb; CPedDamageResponseCalculator::CPedDamageResponseCalculator(CEntity const*,float,eWeaponType,ePedPieceTypes,bool)
4EF77A:  ADD             R2, SP, #0x40+var_30
4EF77C:  MOV             R1, R5; this
4EF77E:  MOVS            R3, #0
4EF780:  BLX             j__ZN28CPedDamageResponseCalculator21ComputeDamageResponseEP4CPedR18CPedDamageResponseb; CPedDamageResponseCalculator::ComputeDamageResponse(CPed *,CPedDamageResponse &,bool)
4EF784:  MOV             R0, R8; this
4EF786:  BLX             j__ZN28CPedDamageResponseCalculatorD2Ev; CPedDamageResponseCalculator::~CPedDamageResponseCalculator()
4EF78A:  LDRB.W          R0, [SP,#0x40+var_28]
4EF78E:  CBZ             R0, loc_4EF802
4EF790:  LDR             R0, [R6,#8]
4EF792:  MOVS            R2, #1
4EF794:  MOVS            R3, #0
4EF796:  MOV.W           R8, #0
4EF79A:  LDR             R1, [R0]
4EF79C:  LDR             R6, [R1,#0x1C]
4EF79E:  MOV             R1, R5
4EF7A0:  BLX             R6
4EF7A2:  CMP             R0, #1
4EF7A4:  BNE             loc_4EF802
4EF7A6:  MOVS            R0, #word_28; this
4EF7A8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EF7AC:  MOV             R4, R0
4EF7AE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EF7B2:  LDR             R0, =(_ZTV15CTaskComplexDie_ptr - 0x4EF7C0)
4EF7B4:  MOVS            R1, #0xF
4EF7B6:  STRD.W          R8, R8, [R4,#0xC]
4EF7BA:  MOVS            R2, #0x12
4EF7BC:  ADD             R0, PC; _ZTV15CTaskComplexDie_ptr
4EF7BE:  STR             R1, [R4,#0x14]
4EF7C0:  MOV.W           R1, #0x40800000
4EF7C4:  MOVS            R3, #0
4EF7C6:  LDR             R0, [R0]; `vtable for'CTaskComplexDie ...
4EF7C8:  STRD.W          R1, R8, [R4,#0x18]
4EF7CC:  STR.W           R8, [R4,#0x24]
4EF7D0:  ADDS            R0, #8
4EF7D2:  LDRB.W          R1, [R4,#0x20]
4EF7D6:  STR             R0, [R4]
4EF7D8:  AND.W           R0, R1, #0xF8
4EF7DC:  STRB.W          R0, [R4,#0x20]
4EF7E0:  LDR.W           R0, [R5,#0x738]
4EF7E4:  LDR             R1, [R0,#0x14]; this
4EF7E6:  MOV             R0, R5; int
4EF7E8:  BLX             j__ZN13CEventHandler12RegisterKillEPK4CPedPK7CEntity11eWeaponTypeb; CEventHandler::RegisterKill(CPed const*,CEntity const*,eWeaponType,bool)
4EF7EC:  B               loc_4EF802
4EF7EE:  LDR             R0, [R6,#8]
4EF7F0:  MOVS            R2, #1
4EF7F2:  MOVS            R3, #0
4EF7F4:  LDR             R1, [R0]
4EF7F6:  LDR             R6, [R1,#0x1C]
4EF7F8:  MOV             R1, R5
4EF7FA:  BLX             R6
4EF7FC:  CMP             R0, #0
4EF7FE:  IT NE
4EF800:  MOVNE           R4, #0
4EF802:  MOV             R0, R4
4EF804:  ADD             SP, SP, #0x30 ; '0'
4EF806:  POP.W           {R8}
4EF80A:  POP             {R4-R7,PC}
