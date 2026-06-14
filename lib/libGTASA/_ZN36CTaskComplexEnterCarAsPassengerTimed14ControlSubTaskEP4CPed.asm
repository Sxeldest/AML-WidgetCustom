; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimed14ControlSubTaskEP4CPed
; Address            : 0x4F77E0 - 0x4F787E
; =========================================================

4F77E0:  PUSH            {R4,R5,R7,LR}
4F77E2:  ADD             R7, SP, #8
4F77E4:  MOV             R4, R0
4F77E6:  MOV             R5, R1
4F77E8:  LDR             R0, [R4,#0xC]
4F77EA:  CBZ             R0, loc_4F780C
4F77EC:  LDRB.W          R0, [R4,#0x28]
4F77F0:  CBZ             R0, loc_4F7840
4F77F2:  LDRB.W          R0, [R4,#0x29]
4F77F6:  CBZ             R0, loc_4F7810
4F77F8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F7800)
4F77FA:  MOVS            R1, #0
4F77FC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F77FE:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F7800:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F7802:  STRB.W          R1, [R4,#0x29]
4F7806:  STR             R0, [R4,#0x20]
4F7808:  MOV             R1, R0
4F780A:  B               loc_4F781A
4F780C:  MOVS            R0, #0
4F780E:  POP             {R4,R5,R7,PC}
4F7810:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F7818)
4F7812:  LDR             R1, [R4,#0x20]
4F7814:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F7816:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4F7818:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4F781A:  LDR             R2, [R4,#0x24]
4F781C:  ADD             R1, R2
4F781E:  CMP             R1, R0
4F7820:  BHI             loc_4F7840
4F7822:  LDR             R0, [R4,#8]
4F7824:  MOVS            R2, #1
4F7826:  MOVS            R3, #0
4F7828:  LDR             R1, [R0]
4F782A:  LDR.W           R12, [R1,#0x1C]
4F782E:  MOV             R1, R5
4F7830:  BLX             R12
4F7832:  CMP             R0, #1
4F7834:  ITT EQ
4F7836:  LDRBEQ.W        R0, [R5,#0x485]
4F783A:  MOVSEQ.W        R0, R0,LSL#31
4F783E:  BEQ             loc_4F7844
4F7840:  LDR             R0, [R4,#8]
4F7842:  POP             {R4,R5,R7,PC}
4F7844:  LDR             R1, [R4,#0x14]; CVehicle *
4F7846:  LDR             R5, [R4,#0xC]
4F7848:  CBNZ            R1, loc_4F7856
4F784A:  LDRB.W          R0, [R5,#0x488]
4F784E:  LDRB.W          R2, [R5,#0x48C]; int
4F7852:  CMP             R0, R2
4F7854:  BCC             loc_4F7868
4F7856:  MOV             R0, R5; this
4F7858:  BLX             j__ZN13CCarEnterExit32ComputePassengerIndexFromCarDoorERK8CVehiclei; CCarEnterExit::ComputePassengerIndexFromCarDoor(CVehicle const&,int)
4F785C:  ADD.W           R0, R5, R0,LSL#2
4F7860:  LDR.W           R0, [R0,#0x468]
4F7864:  CMP             R0, #0
4F7866:  BNE             loc_4F7840
4F7868:  MOVS            R0, #dword_20; this
4F786A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4F786E:  LDR             R1, [R4,#0xC]; CVehicle *
4F7870:  MOVS            R3, #0; CTaskUtilityLineUpPedWithCar *
4F7872:  LDR             R2, [R4,#0x14]; int
4F7874:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4F7878:  MOVS            R1, #1
4F787A:  STRB            R1, [R0,#0x1C]
4F787C:  POP             {R4,R5,R7,PC}
