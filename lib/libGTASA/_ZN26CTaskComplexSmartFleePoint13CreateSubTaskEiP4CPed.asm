; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePoint13CreateSubTaskEiP4CPed
; Address            : 0x513710 - 0x513818
; =========================================================

513710:  PUSH            {R4-R7,LR}
513712:  ADD             R7, SP, #0xC
513714:  PUSH.W          {R11}
513718:  SUB             SP, SP, #8; float
51371A:  MOV             R5, R0
51371C:  MOVW            R0, #0x2C9
513720:  MOVS            R4, #0
513722:  CMP             R1, R0
513724:  BGT             loc_51377C
513726:  CMP             R1, #0xCB
513728:  BEQ             loc_5137A6
51372A:  CMP             R1, #0xF4
51372C:  ITTT EQ
51372E:  LDREQ           R0, [R5,#0x30]
513730:  MOVEQ           R4, #0
513732:  CMPEQ           R0, #6
513734:  BNE             loc_51380E
513736:  MOVS            R0, #dword_40; this
513738:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51373C:  MOV             R5, R0
51373E:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
513742:  MOVS            R0, #dword_20; this
513744:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513748:  MOVS            R1, #0
51374A:  MOVS            R2, #0xA5
51374C:  MOV.W           R3, #0x40800000
513750:  MOV             R6, R0
513752:  STR             R4, [SP,#0x18+var_18]
513754:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
513758:  MOV             R0, R5; this
51375A:  MOV             R1, R6; CTask *
51375C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
513760:  MOVS            R0, #dword_1C; this
513762:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513766:  MOV.W           R1, #0x7D0; int
51376A:  MOV             R4, R0
51376C:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
513770:  MOV             R0, R5; this
513772:  MOV             R1, R4; CTask *
513774:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
513778:  MOV             R4, R5
51377A:  B               loc_51380E
51377C:  CMP.W           R1, #0x390
513780:  BEQ             loc_5137E0
513782:  MOVW            R0, #0x2CA
513786:  CMP             R1, R0
513788:  BNE             loc_51380E
51378A:  MOVS            R0, #dword_14; this
51378C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513790:  MOV             R4, R0
513792:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
513796:  LDR             R0, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x5137A4)
513798:  MOVS            R1, #0
51379A:  STR             R1, [R4,#0xC]
51379C:  MOV.W           R1, #0x100
5137A0:  ADD             R0, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
5137A2:  STRH            R1, [R4,#0x10]
5137A4:  B               loc_513808
5137A6:  LDR.W           R0, [R2,#0x440]
5137AA:  LDR             R4, [R0,#0x14]
5137AC:  CBZ             R4, loc_5137C4
5137AE:  LDR             R0, [R4]
5137B0:  LDR             R1, [R0,#0x14]
5137B2:  MOV             R0, R4
5137B4:  BLX             R1
5137B6:  CMP.W           R0, #0x390
5137BA:  BNE             loc_5137C4
5137BC:  LDR             R1, [R5,#8]; CTaskComplexWander *
5137BE:  MOV             R0, R4; this
5137C0:  BLX             j__ZN18CTaskComplexWander12ContinueFromERKS_; CTaskComplexWander::ContinueFrom(CTaskComplexWander const&)
5137C4:  MOVS            R0, #dword_20; this
5137C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5137CA:  MOV             R4, R0
5137CC:  MOV.W           R0, #0x41000000
5137D0:  STR             R0, [SP,#0x18+var_18]; float
5137D2:  MOV             R0, R4; this
5137D4:  MOVS            R1, #0; int
5137D6:  MOVS            R2, #0; bool
5137D8:  MOVS            R3, #0; bool
5137DA:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
5137DE:  B               loc_51380E
5137E0:  MOVS            R0, #word_28; this
5137E2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5137E6:  MOV             R4, R0
5137E8:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x5137F2)
5137EA:  LDR             R1, [R5,#0x30]; int
5137EC:  MOVS            R3, #0; bool
5137EE:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
5137F0:  LDRB.W          R2, [R5,#0x40]; unsigned __int8
5137F4:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
5137F6:  VLDR            S0, [R0]
5137FA:  MOV             R0, R4; this
5137FC:  VSTR            S0, [SP,#0x18+var_18]
513800:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
513804:  LDR             R0, =(_ZTV22CTaskComplexWanderFlee_ptr - 0x51380A)
513806:  ADD             R0, PC; _ZTV22CTaskComplexWanderFlee_ptr
513808:  LDR             R0, [R0]; `vtable for'CTaskComplexLeaveAnyCar
51380A:  ADDS            R0, #8
51380C:  STR             R0, [R4]
51380E:  MOV             R0, R4
513810:  ADD             SP, SP, #8
513812:  POP.W           {R11}
513816:  POP             {R4-R7,PC}
