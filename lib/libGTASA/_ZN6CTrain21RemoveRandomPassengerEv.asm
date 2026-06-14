; =========================================================
; Game Engine Function: _ZN6CTrain21RemoveRandomPassengerEv
; Address            : 0x57E72C - 0x57E896
; =========================================================

57E72C:  PUSH            {R4-R7,LR}
57E72E:  ADD             R7, SP, #0xC
57E730:  PUSH.W          {R11}
57E734:  VPUSH           {D8}; bool
57E738:  SUB             SP, SP, #8
57E73A:  MOV             R4, R0
57E73C:  MOV.W           R0, #0xFFFFFFFF; int
57E740:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
57E744:  LDR.W           R1, [R0,#0x590]
57E748:  CMP             R1, R4
57E74A:  BEQ.W           loc_57E88A
57E74E:  LDR.W           R0, [R0,#0x440]
57E752:  LDR             R5, [R0,#0x10]
57E754:  CBZ             R5, loc_57E77C
57E756:  LDR             R0, [R5]
57E758:  LDR             R1, [R0,#0x14]
57E75A:  MOV             R0, R5
57E75C:  BLX             R1
57E75E:  MOVW            R1, #0x2BD
57E762:  CMP             R0, R1
57E764:  BEQ             loc_57E774
57E766:  LDR             R0, [R5]
57E768:  LDR             R1, [R0,#0x14]
57E76A:  MOV             R0, R5
57E76C:  BLX             R1
57E76E:  CMP.W           R0, #0x2BC
57E772:  BNE             loc_57E77C
57E774:  LDR             R0, [R5,#0xC]
57E776:  CMP             R0, R4
57E778:  BEQ.W           loc_57E88A
57E77C:  MOV.W           R0, #0xFFFFFFFF; int
57E780:  LDRH.W          R5, [R4,#0x5CC]
57E784:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
57E788:  LDRB.W          R1, [R0,#0x485]
57E78C:  AND.W           R6, R5, #0x40 ; '@'
57E790:  LSLS            R1, R1, #0x1F
57E792:  BEQ             loc_57E79C
57E794:  LDR.W           R1, [R0,#0x590]
57E798:  CMP             R1, R4
57E79A:  BEQ             loc_57E878
57E79C:  LDRB.W          R0, [R4,#0x5DF]
57E7A0:  LSLS            R0, R0, #0x1C
57E7A2:  BEQ             loc_57E88A
57E7A4:  LDR.W           R0, [R4,#0x5E0]; this
57E7A8:  ADD.W           R5, R4, #0x5E0
57E7AC:  CBZ             R0, loc_57E7C0
57E7AE:  LDRB.W          R1, [R0,#0x485]
57E7B2:  LSLS            R1, R1, #0x1F
57E7B4:  BNE             loc_57E88A
57E7B6:  MOV             R1, R5; CEntity **
57E7B8:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
57E7BC:  MOVS            R0, #0
57E7BE:  STR             R0, [R5]
57E7C0:  BLX             rand
57E7C4:  UXTH            R0, R0
57E7C6:  VLDR            S2, =0.000015259
57E7CA:  VMOV            S0, R0
57E7CE:  VMOV.F32        S4, #12.0
57E7D2:  VCVT.F32.S32    S0, S0
57E7D6:  VMUL.F32        S0, S0, S2
57E7DA:  VMUL.F32        S16, S0, S4
57E7DE:  BLX             rand
57E7E2:  MOVS            R1, #0
57E7E4:  MOVS            R3, #0; int
57E7E6:  STRD.W          R1, R1, [SP,#0x20+var_20]; CPopulation *
57E7EA:  VCVT.S32.F32    S0, S16
57E7EE:  MOVW            R1, #0xFFFC
57E7F2:  ANDS            R0, R1
57E7F4:  MOVS            R1, #0
57E7F6:  VMOV            R2, S0
57E7FA:  CMP             R2, #0xC
57E7FC:  IT EQ
57E7FE:  MOVEQ           R2, #0xB
57E800:  CMP             R0, #0x64 ; 'd'
57E802:  IT CC
57E804:  MOVCC           R2, #0x19; bool
57E806:  CMP             R6, #0
57E808:  IT EQ
57E80A:  MOVEQ           R1, #(stderr+1); CVehicle *
57E80C:  MOV             R0, R4; this
57E80E:  BLX             j__ZN11CPopulation11AddPedInCarEP8CVehiclebiibb; CPopulation::AddPedInCar(CVehicle *,bool,int,int,bool,bool)
57E812:  MOV             R6, R0
57E814:  CBZ             R6, loc_57E88A
57E816:  LDR.W           R0, [R6,#0x490]
57E81A:  ORR.W           R0, R0, #0x40000
57E81E:  STR.W           R0, [R6,#0x490]
57E822:  LDRB.W          R0, [R4,#0x5DF]
57E826:  STR.W           R6, [R4,#0x5E0]
57E82A:  AND.W           R1, R0, #0xF0
57E82E:  ADDS            R0, #0xF
57E830:  AND.W           R0, R0, #0xF
57E834:  ORRS            R0, R1
57E836:  STRB.W          R0, [R4,#0x5DF]
57E83A:  MOV             R0, R6; this
57E83C:  MOV             R1, R5; CEntity **
57E83E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
57E842:  MOVS            R0, #dword_1C; this
57E844:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
57E848:  MOV             R5, R0
57E84A:  MOVS            R0, #1
57E84C:  STR             R0, [SP,#0x20+var_20]; bool
57E84E:  MOV             R0, R5; this
57E850:  MOV             R1, R4; CVehicle *
57E852:  MOVS            R2, #0; int
57E854:  MOVS            R3, #0; int
57E856:  BLX             j__ZN29CTaskComplexLeaveCarAndWanderC2EP8CVehicleiib; CTaskComplexLeaveCarAndWander::CTaskComplexLeaveCarAndWander(CVehicle *,int,int,bool)
57E85A:  LDR.W           R0, [R6,#0x440]
57E85E:  MOV             R1, R5
57E860:  MOVS            R2, #3
57E862:  MOVS            R3, #0
57E864:  ADDS            R0, #4
57E866:  ADD             SP, SP, #8
57E868:  VPOP            {D8}
57E86C:  POP.W           {R11}
57E870:  POP.W           {R4-R7,LR}
57E874:  B.W             j_j__ZN12CTaskManager7SetTaskEP5CTaskib; j_CTaskManager::SetTask(CTask *,int,bool)
57E878:  LDR.W           R1, [R4,#0x464]
57E87C:  CBZ             R6, loc_57E884
57E87E:  CMP             R1, R0
57E880:  BNE             loc_57E79C
57E882:  B               loc_57E88A
57E884:  CMP             R1, R0
57E886:  BEQ.W           loc_57E79C
57E88A:  ADD             SP, SP, #8
57E88C:  VPOP            {D8}
57E890:  POP.W           {R11}
57E894:  POP             {R4-R7,PC}
