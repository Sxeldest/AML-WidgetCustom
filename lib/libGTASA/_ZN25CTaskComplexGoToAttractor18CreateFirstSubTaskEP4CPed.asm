; =========================================================
; Game Engine Function: _ZN25CTaskComplexGoToAttractor18CreateFirstSubTaskEP4CPed
; Address            : 0x5245E4 - 0x52476E
; =========================================================

5245E4:  PUSH            {R4-R7,LR}
5245E6:  ADD             R7, SP, #0xC
5245E8:  PUSH.W          {R8,R9,R11}
5245EC:  SUB             SP, SP, #8
5245EE:  MOV             R4, R0
5245F0:  MOV             R5, R1
5245F2:  LDR             R0, [R4,#0xC]
5245F4:  LDR.W           R9, [R4,#0x28]
5245F8:  LDR             R1, [R0]
5245FA:  LDR             R1, [R1]
5245FC:  BLX             R1
5245FE:  MOV             R8, R0
524600:  LDRB.W          R0, [R5,#0x48E]
524604:  LSLS            R0, R0, #0x1A
524606:  BMI.W           loc_524716
52460A:  MOVS            R0, #dword_40; this
52460C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524610:  MOV             R5, R0
524612:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
524616:  MOVS            R0, #word_28; this
524618:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
52461C:  MOV             R6, R0
52461E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
524622:  LDR             R0, =(_ZTV34CTaskComplexGoToPointAndStandStill_ptr - 0x524636)
524624:  CMP.W           R8, #4
524628:  IT EQ
52462A:  MOVEQ.W         R9, #6
52462E:  ADD.W           R8, R4, #0x10
524632:  ADD             R0, PC; _ZTV34CTaskComplexGoToPointAndStandStill_ptr
524634:  STR.W           R9, [R6,#0xC]
524638:  LDR             R0, [R0]; `vtable for'CTaskComplexGoToPointAndStandStill ...
52463A:  ADDS            R0, #8
52463C:  STR             R0, [R6]
52463E:  LDRB.W          R0, [R6,#0x24]
524642:  VLDR            S0, [R6,#0x10]
524646:  BIC.W           R0, R0, #0x1B
52464A:  STRB.W          R0, [R6,#0x24]
52464E:  VLDR            S2, [R4,#0x10]
524652:  VCMP.F32        S0, S2
524656:  VMRS            APSR_nzcv, FPSCR
52465A:  BNE             loc_524692
52465C:  VLDR            S0, [R4,#0x14]
524660:  VLDR            S2, [R6,#0x14]
524664:  VCMP.F32        S2, S0
524668:  VMRS            APSR_nzcv, FPSCR
52466C:  BNE             loc_524692
52466E:  VLDR            S0, [R4,#0x18]
524672:  VLDR            S2, [R6,#0x18]
524676:  VCMP.F32        S2, S0
52467A:  VMRS            APSR_nzcv, FPSCR
52467E:  BNE             loc_524692
524680:  VMOV.F32        S0, #2.0
524684:  VLDR            S2, [R6,#0x20]
524688:  VCMP.F32        S2, S0
52468C:  VMRS            APSR_nzcv, FPSCR
524690:  BEQ             loc_5246B8
524692:  ADD.W           R1, R6, #0x10
524696:  VLDR            D16, [R8]
52469A:  LDR.W           R2, [R8,#8]
52469E:  ORR.W           R0, R0, #4
5246A2:  STR             R2, [R1,#8]
5246A4:  MOV.W           R2, #0x3F000000
5246A8:  VSTR            D16, [R1]
5246AC:  MOV.W           R1, #0x40000000
5246B0:  STRD.W          R2, R1, [R6,#0x1C]
5246B4:  STRB.W          R0, [R6,#0x24]
5246B8:  MOV             R0, R5; this
5246BA:  MOV             R1, R6; CTask *
5246BC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
5246C0:  MOVS            R0, #dword_80; this
5246C2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5246C6:  MOVS            R1, #0; bool
5246C8:  LDR.W           R9, [R4,#0x1C]
5246CC:  MOV             R6, R0
5246CE:  MOVS            R4, #0
5246D0:  BLX             j__ZN15CTaskSimpleAnimC2Eb; CTaskSimpleAnim::CTaskSimpleAnim(bool)
5246D4:  LDR             R0, =(_ZTV23CTaskSimpleSlideToCoord_ptr - 0x5246DE)
5246D6:  MOV.W           R2, #0x3F000000
5246DA:  ADD             R0, PC; _ZTV23CTaskSimpleSlideToCoord_ptr
5246DC:  LDR             R0, [R0]; `vtable for'CTaskSimpleSlideToCoord ...
5246DE:  ADDS            R0, #8
5246E0:  STR             R0, [R6]
5246E2:  STRH.W          R4, [R6,#0x4C]
5246E6:  STRD.W          R4, R4, [R6,#0x44]
5246EA:  LDRB.W          R1, [R6,#0x78]
5246EE:  LDR.W           R0, [R8,#8]
5246F2:  VLDR            D16, [R8]
5246F6:  STRD.W          R0, R9, [R6,#0x6C]
5246FA:  AND.W           R0, R1, #0xFC
5246FE:  ORR.W           R0, R0, #1
524702:  STR             R2, [R6,#0x74]
524704:  VSTR            D16, [R6,#0x64]
524708:  MOV             R1, R6; CTask *
52470A:  STRB.W          R0, [R6,#0x78]
52470E:  MOV             R0, R5; this
524710:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
524714:  B               loc_524764
524716:  ADD.W           R0, R4, #0x10; this
52471A:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
52471E:  LDRD.W          R2, R1, [R4,#0x10]
524722:  LDR             R3, [R5,#0x14]
524724:  LDR             R0, [R4,#0x18]
524726:  CBZ             R3, loc_524734
524728:  STR             R2, [R3,#0x30]
52472A:  LDR             R2, [R5,#0x14]
52472C:  STR             R1, [R2,#0x34]
52472E:  LDR             R1, [R5,#0x14]
524730:  ADDS            R1, #0x38 ; '8'
524732:  B               loc_52473C
524734:  STRD.W          R2, R1, [R5,#4]
524738:  ADD.W           R1, R5, #0xC; unsigned int
52473C:  STR             R0, [R1]
52473E:  LDR             R0, [R4,#0x1C]
524740:  STR.W           R0, [R5,#0x560]
524744:  LDR             R0, [R4,#0x1C]
524746:  STR.W           R0, [R5,#0x55C]
52474A:  MOVS            R0, #dword_20; this
52474C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
524750:  MOV             R5, R0
524752:  MOV.W           R0, #0x41000000
524756:  STR             R0, [SP,#0x20+var_20]; float
524758:  MOV             R0, R5; this
52475A:  MOVS            R1, #0; int
52475C:  MOVS            R2, #0; bool
52475E:  MOVS            R3, #0; bool
524760:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
524764:  MOV             R0, R5
524766:  ADD             SP, SP, #8
524768:  POP.W           {R8,R9,R11}
52476C:  POP             {R4-R7,PC}
