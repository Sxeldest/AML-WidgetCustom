; =========================================================
; Game Engine Function: _ZN13CEventHandler36ComputePotentialWalkIntoFireResponseEP6CEventP5CTaskS3_
; Address            : 0x3837D4 - 0x38388E
; =========================================================

3837D4:  PUSH            {R4-R7,LR}
3837D6:  ADD             R7, SP, #0xC
3837D8:  PUSH.W          {R8}
3837DC:  VPUSH           {D8}
3837E0:  SUB             SP, SP, #8
3837E2:  MOV             R6, R3
3837E4:  MOV             R5, R1
3837E6:  MOV             R4, R0
3837E8:  CMP             R6, #0
3837EA:  BEQ             loc_383882
3837EC:  MOV             R0, R6; this
3837EE:  VLDR            S16, [R5,#0x20]
3837F2:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
3837F6:  CMP             R0, #0
3837F8:  BEQ             loc_383882
3837FA:  LDRSH.W         R0, [R5,#0xA]
3837FE:  ADD.W           R8, R5, #0x10
383802:  CMP.W           R0, #0x38C
383806:  BGE             loc_383830
383808:  CMP             R0, #0xC8
38380A:  BEQ             loc_38385C
38380C:  MOVW            R1, #0x202; unsigned int
383810:  CMP             R0, R1
383812:  BNE             loc_383882
383814:  MOVS            R0, #dword_38; this
383816:  LDR             R5, [R5,#0x24]
383818:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38381C:  VMOV            R3, S16; float
383820:  ADD.W           R1, R6, #0xC
383824:  STR             R1, [SP,#0x20+var_20]; CVector *
383826:  MOV             R1, R5; int
383828:  MOV             R2, R8; CVector *
38382A:  BLX             j__ZN25CTaskComplexWalkRoundFireC2EiRK7CVectorfS2_; CTaskComplexWalkRoundFire::CTaskComplexWalkRoundFire(int,CVector const&,float,CVector const&)
38382E:  B               loc_383880
383830:  BEQ             loc_383860
383832:  MOVW            R1, #0x38E; unsigned int
383836:  CMP             R0, R1
383838:  BNE             loc_383882
38383A:  MOVS            R0, #dword_44; this
38383C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383840:  LDR             R1, =(_ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr - 0x383848)
383842:  LDR             R2, =(_ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr - 0x38384A)
383844:  ADD             R1, PC; _ZN26CTaskComplexSmartFleePoint16ms_fSafeDistanceE_ptr
383846:  ADD             R2, PC; _ZN26CTaskComplexSmartFleePoint12ms_iFleeTimeE_ptr
383848:  LDR             R1, [R1]; CTaskComplexSmartFleePoint::ms_fSafeDistance ...
38384A:  LDR             R2, [R2]; CTaskComplexSmartFleePoint::ms_iFleeTime ...
38384C:  LDR             R3, [R1]; float
38384E:  LDR             R1, [R2]; CTaskComplexSmartFleePoint::ms_iFleeTime
383850:  MOVS            R2, #0; bool
383852:  STR             R1, [SP,#0x20+var_20]; int
383854:  MOV             R1, R8; CVector *
383856:  BLX             j__ZN26CTaskComplexSmartFleePointC2ERK7CVectorbfi; CTaskComplexSmartFleePoint::CTaskComplexSmartFleePoint(CVector const&,bool,float,int)
38385A:  B               loc_383880
38385C:  MOVS            R0, #0
38385E:  B               loc_383880
383860:  MOVS            R0, #off_3C; this
383862:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
383866:  LDR             R1, =(_ZN21CTaskComplexFleePoint16ms_fSafeDistanceE_ptr - 0x38386E)
383868:  LDR             R2, =(_ZN21CTaskComplexFleePoint12ms_iFleeTimeE_ptr - 0x383870)
38386A:  ADD             R1, PC; _ZN21CTaskComplexFleePoint16ms_fSafeDistanceE_ptr
38386C:  ADD             R2, PC; _ZN21CTaskComplexFleePoint12ms_iFleeTimeE_ptr
38386E:  LDR             R1, [R1]; CTaskComplexFleePoint::ms_fSafeDistance ...
383870:  LDR             R2, [R2]; CTaskComplexFleePoint::ms_iFleeTime ...
383872:  LDR             R3, [R1]; float
383874:  LDR             R1, [R2]; CTaskComplexFleePoint::ms_iFleeTime
383876:  MOVS            R2, #0; bool
383878:  STR             R1, [SP,#0x20+var_20]; int
38387A:  MOV             R1, R8; CVector *
38387C:  BLX             j__ZN21CTaskComplexFleePointC2ERK7CVectorbfi; CTaskComplexFleePoint::CTaskComplexFleePoint(CVector const&,bool,float,int)
383880:  STR             R0, [R4,#0x24]
383882:  ADD             SP, SP, #8
383884:  VPOP            {D8}
383888:  POP.W           {R8}
38388C:  POP             {R4-R7,PC}
