; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimed10CreateTaskEv
; Address            : 0x493738 - 0x493794
; =========================================================

493738:  PUSH            {R4,R5,R7,LR}
49373A:  ADD             R7, SP, #8
49373C:  SUB             SP, SP, #0x10
49373E:  LDR             R0, =(UseDataFence_ptr - 0x493744)
493740:  ADD             R0, PC; UseDataFence_ptr
493742:  LDR             R0, [R0]; UseDataFence
493744:  LDRB            R4, [R0]
493746:  CBZ             R4, loc_49375E
493748:  LDR             R0, =(UseDataFence_ptr - 0x493750)
49374A:  MOVS            R1, #(stderr+2); void *
49374C:  ADD             R0, PC; UseDataFence_ptr
49374E:  LDR             R5, [R0]; UseDataFence
493750:  MOVS            R0, #0
493752:  STRB            R0, [R5]
493754:  SUB.W           R0, R7, #-var_A; this
493758:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49375C:  STRB            R4, [R5]
49375E:  ADD             R0, SP, #0x18+var_10; this
493760:  MOVS            R1, #byte_4; void *
493762:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493766:  LDR             R0, [SP,#0x18+var_10]; this
493768:  MOVS            R5, #0
49376A:  ADDS            R1, R0, #1; unsigned int
49376C:  BEQ             loc_493776
49376E:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493772:  MOV             R4, R0
493774:  B               loc_493778
493776:  MOVS            R4, #0
493778:  MOVS            R0, #word_2C; this
49377A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49377E:  LDR             R1, =(_ZN36CTaskComplexEnterCarAsPassengerTimed8ms_iTimeE_ptr - 0x493788)
493780:  MOVS            R2, #0; int
493782:  STR             R5, [SP,#0x18+var_18]; bool
493784:  ADD             R1, PC; _ZN36CTaskComplexEnterCarAsPassengerTimed8ms_iTimeE_ptr
493786:  LDR             R1, [R1]; CTaskComplexEnterCarAsPassengerTimed::ms_iTime ...
493788:  LDR             R3, [R1]; int
49378A:  MOV             R1, R4; CVehicle *
49378C:  BLX             j__ZN36CTaskComplexEnterCarAsPassengerTimedC2EP8CVehicleiib; CTaskComplexEnterCarAsPassengerTimed::CTaskComplexEnterCarAsPassengerTimed(CVehicle *,int,int,bool)
493790:  ADD             SP, SP, #0x10
493792:  POP             {R4,R5,R7,PC}
