; =========================================================
; Game Engine Function: _ZN15CTaskComplexDie18CreateFirstSubTaskEP4CPed
; Address            : 0x4EB6F0 - 0x4EB88C
; =========================================================

4EB6F0:  PUSH            {R4-R7,LR}
4EB6F2:  ADD             R7, SP, #0xC
4EB6F4:  PUSH.W          {R8}
4EB6F8:  SUB             SP, SP, #0x18
4EB6FA:  MOV             R5, R1
4EB6FC:  MOV             R4, R0
4EB6FE:  BLX             j__ZNK15CTaskComplexDie14SayDeathSampleEP4CPed; CTaskComplexDie::SayDeathSample(CPed *)
4EB702:  LDR             R0, [R4,#0xC]
4EB704:  ADDW            R6, R5, #0x484
4EB708:  CMP             R0, #0x35 ; '5'
4EB70A:  BNE             loc_4EB732
4EB70C:  LDR             R1, [R6,#0xC]
4EB70E:  MOV.W           R2, #0x100
4EB712:  LDR             R0, [R6]
4EB714:  AND.W           R1, R1, #0x80; unsigned int
4EB718:  BIC.W           R0, R2, R0
4EB71C:  ORRS            R0, R1
4EB71E:  BNE             loc_4EB732
4EB720:  LDR.W           R0, [R5,#0x590]
4EB724:  CMP             R0, #0
4EB726:  BEQ             loc_4EB7F6
4EB728:  LDR.W           R0, [R0,#0x5A4]
4EB72C:  SUBS            R0, #3
4EB72E:  CMP             R0, #2
4EB730:  BCS             loc_4EB7F6
4EB732:  MOV             R0, R5; CPed *
4EB734:  MOVS            R1, #0x36 ; '6'
4EB736:  BLX             j__ZN4CPed11SetPedStateE9ePedState; CPed::SetPedState(ePedState)
4EB73A:  LDR.W           R0, [R5,#0x440]; this
4EB73E:  MOVS            R1, #0; bool
4EB740:  MOVS            R2, #1; bool
4EB742:  MOV.W           R8, #0
4EB746:  BLX             j__ZN16CPedIntelligence10ClearTasksEbb; CPedIntelligence::ClearTasks(bool,bool)
4EB74A:  LDRB            R0, [R6,#1]
4EB74C:  LSLS            R0, R0, #0x1F
4EB74E:  BNE             loc_4EB790
4EB750:  LDR             R0, [R4,#0xC]
4EB752:  CMP             R0, #0x35 ; '5'
4EB754:  BNE             loc_4EB7B2
4EB756:  MOVS            R0, #word_2C; this
4EB758:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB75C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EB760:  LDR             R1, =(_ZTV16CTaskSimpleDrown_ptr - 0x4EB772)
4EB762:  MOVS            R2, #0x8C
4EB764:  MOVS            R3, #0
4EB766:  MOV.W           R6, #0x40800000
4EB76A:  STRD.W          R3, R2, [R0,#8]
4EB76E:  ADD             R1, PC; _ZTV16CTaskSimpleDrown_ptr
4EB770:  STRD.W          R3, R3, [R0,#0x10]
4EB774:  STRD.W          R6, R3, [R0,#0x18]
4EB778:  STR             R3, [R0,#0x24]
4EB77A:  MOVS            R3, #1
4EB77C:  LDRB.W          R2, [R0,#0x20]
4EB780:  STRB.W          R3, [R0,#0x28]
4EB784:  AND.W           R2, R2, #0xFC
4EB788:  LDR             R1, [R1]; `vtable for'CTaskSimpleDrown ...
4EB78A:  STRB.W          R2, [R0,#0x20]
4EB78E:  B               loc_4EB7AC
4EB790:  MOVS            R0, #dword_1C; this
4EB792:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB796:  LDR             R4, [R4,#0xC]
4EB798:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4EB79C:  LDR             R1, =(_ZTV20CTaskComplexDieInCar_ptr - 0x4EB7A4)
4EB79E:  STR             R4, [R0,#0xC]
4EB7A0:  ADD             R1, PC; _ZTV20CTaskComplexDieInCar_ptr
4EB7A2:  STRH.W          R8, [R0,#0x18]
4EB7A6:  STRD.W          R8, R8, [R0,#0x10]
4EB7AA:  LDR             R1, [R1]; `vtable for'CTaskComplexDieInCar ...
4EB7AC:  ADDS            R1, #8
4EB7AE:  STR             R1, [R0]
4EB7B0:  B               loc_4EB884
4EB7B2:  LDRB.W          R0, [R4,#0x20]
4EB7B6:  LSLS            R0, R0, #0x1E
4EB7B8:  BMI             loc_4EB812
4EB7BA:  MOVS            R0, #word_28; this
4EB7BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB7C0:  ADD.W           R8, R4, #0x10
4EB7C4:  LDM.W           R8, {R5,R6,R8}
4EB7C8:  LDR             R4, [R4,#0x1C]
4EB7CA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EB7CE:  LDR             R1, =(_ZTV14CTaskSimpleDie_ptr - 0x4EB7DA)
4EB7D0:  MOVS            R2, #0
4EB7D2:  STRD.W          R5, R6, [R0,#8]
4EB7D6:  ADD             R1, PC; _ZTV14CTaskSimpleDie_ptr
4EB7D8:  STRD.W          R2, R2, [R0,#0x10]
4EB7DC:  STRD.W          R8, R4, [R0,#0x18]
4EB7E0:  LDR             R1, [R1]; `vtable for'CTaskSimpleDie ...
4EB7E2:  STR             R2, [R0,#0x24]
4EB7E4:  LDRB.W          R2, [R0,#0x20]
4EB7E8:  ADDS            R1, #8
4EB7EA:  STR             R1, [R0]
4EB7EC:  AND.W           R1, R2, #0xFC
4EB7F0:  STRB.W          R1, [R0,#0x20]
4EB7F4:  B               loc_4EB884
4EB7F6:  MOVS            R0, #dword_34; this
4EB7F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB7FC:  LDR.W           R1, [R5,#0x590]; CVehicle *
4EB800:  MOVS            R2, #1
4EB802:  MOVS            R3, #0
4EB804:  STRD.W          R3, R2, [SP,#0x28+var_28]; bool
4EB808:  MOVS            R2, #0; int
4EB80A:  MOVS            R3, #0; int
4EB80C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
4EB810:  B               loc_4EB884
4EB812:  LDR             R1, [R4,#0x24]; unsigned int
4EB814:  CMP             R1, #3; switch 4 cases
4EB816:  BHI             def_4EB81A; jumptable 004EB81A default case
4EB818:  LDR             R0, [R5,#0x14]
4EB81A:  TBB.W           [PC,R1]; switch jump
4EB81E:  DCB 2; jump table for switch statement
4EB81F:  DCB 6
4EB820:  DCB 0xD
4EB821:  DCB 0x20
4EB822:  VLDR            D16, [R0,#0x10]; jumptable 004EB81A case 0
4EB826:  LDR             R0, [R0,#0x18]
4EB828:  B               loc_4EB864
4EB82A:  VLDR            S0, [R0]; jumptable 004EB81A case 1
4EB82E:  VLDR            S2, [R0,#4]
4EB832:  VLDR            S4, [R0,#8]
4EB836:  B               loc_4EB844
4EB838:  VLDR            S0, [R0,#0x10]; jumptable 004EB81A case 2
4EB83C:  VLDR            S2, [R0,#0x14]
4EB840:  VLDR            S4, [R0,#0x18]
4EB844:  VNEG.F32        S2, S2
4EB848:  VNEG.F32        S0, S0
4EB84C:  VNEG.F32        S4, S4
4EB850:  VSTR            S2, [SP,#0x28+var_20+4]
4EB854:  VSTR            S0, [SP,#0x28+var_20]
4EB858:  VSTR            S4, [SP,#0x28+var_18]
4EB85C:  B               def_4EB81A; jumptable 004EB81A default case
4EB85E:  VLDR            D16, [R0]; jumptable 004EB81A case 3
4EB862:  LDR             R0, [R0,#8]
4EB864:  STR             R0, [SP,#0x28+var_18]
4EB866:  VSTR            D16, [SP,#0x28+var_20]
4EB86A:  MOVS            R0, #dword_24; jumptable 004EB81A default case
4EB86C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EB870:  LDRB.W          R2, [R4,#0x20]
4EB874:  MOVS            R3, #0
4EB876:  LDR             R1, [R4,#0x24]; int
4EB878:  STR             R3, [SP,#0x28+var_28]; bool
4EB87A:  UBFX.W          R3, R2, #2, #1; bool
4EB87E:  ADD             R2, SP, #0x28+var_20; CVector *
4EB880:  BLX             j__ZN23CTaskComplexFallToDeathC2EiRK7CVectorbb; CTaskComplexFallToDeath::CTaskComplexFallToDeath(int,CVector const&,bool,bool)
4EB884:  ADD             SP, SP, #0x18
4EB886:  POP.W           {R8}
4EB88A:  POP             {R4-R7,PC}
