; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler22ComputeResponseSexyPedERK6CEventP9CPedGroupP4CPed
; Address            : 0x4B5614 - 0x4B577C
; =========================================================

4B5614:  PUSH            {R4-R7,LR}
4B5616:  ADD             R7, SP, #0xC
4B5618:  PUSH.W          {R8}
4B561C:  SUB             SP, SP, #8
4B561E:  LDR             R4, [R0,#0x10]
4B5620:  MOV             R5, R1
4B5622:  CMP             R4, #0
4B5624:  BEQ.W           loc_4B5772
4B5628:  LDR             R1, [R5,#0xC]
4B562A:  CMP             R1, R4
4B562C:  ITT NE
4B562E:  LDRNE           R1, [R5,#0x10]
4B5630:  CMPNE           R1, R4
4B5632:  BEQ.W           loc_4B5772
4B5636:  LDR             R1, [R5,#0x14]
4B5638:  CMP             R1, R4
4B563A:  ITT NE
4B563C:  LDRNE           R1, [R5,#0x18]
4B563E:  CMPNE           R1, R4
4B5640:  BEQ.W           loc_4B5772
4B5644:  LDR             R1, [R5,#0x1C]
4B5646:  CMP             R1, R4
4B5648:  ITT NE
4B564A:  LDRNE           R1, [R5,#0x20]
4B564C:  CMPNE           R1, R4
4B564E:  BEQ.W           loc_4B5772
4B5652:  LDR             R1, [R5,#0x24]
4B5654:  CMP             R1, R4
4B5656:  ITT NE
4B5658:  LDRNE           R1, [R5,#0x28]
4B565A:  CMPNE           R1, R4
4B565C:  BEQ.W           loc_4B5772
4B5660:  LDRSH.W         R8, [R0,#0xA]
4B5664:  MOV.W           R0, #0xFFFFFFFF; int
4B5668:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4B566C:  LDR.W           R0, [R0,#0x444]
4B5670:  MOV.W           R6, #0x2D4
4B5674:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B567C)
4B5676:  LDR             R0, [R0,#0x38]
4B5678:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B567A:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B567C:  MLA.W           R0, R0, R6, R1
4B5680:  CMP             R0, R5
4B5682:  BEQ             loc_4B5772
4B5684:  MOV.W           R0, #0xFFFFFFFF; int
4B5688:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4B568C:  LDR.W           R0, [R0,#0x444]
4B5690:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B5696)
4B5692:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B5694:  LDR             R0, [R0,#0x38]
4B5696:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B5698:  MLA.W           R1, R0, R6, R1
4B569C:  LDR             R1, [R1,#0xC]
4B569E:  CMP             R1, R4
4B56A0:  BEQ             loc_4B5772
4B56A2:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B56AC)
4B56A4:  MOV.W           R1, #0x2D4
4B56A8:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B56AA:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B56AC:  MLA.W           R2, R0, R1, R2
4B56B0:  LDR             R2, [R2,#0x10]
4B56B2:  CMP             R2, R4
4B56B4:  BEQ             loc_4B5772
4B56B6:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B56BC)
4B56B8:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B56BA:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B56BC:  MLA.W           R1, R0, R1, R2
4B56C0:  LDR             R1, [R1,#0x14]
4B56C2:  CMP             R1, R4
4B56C4:  BEQ             loc_4B5772
4B56C6:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B56D0)
4B56C8:  MOV.W           R1, #0x2D4
4B56CC:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B56CE:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B56D0:  MLA.W           R2, R0, R1, R2
4B56D4:  LDR             R2, [R2,#0x18]
4B56D6:  CMP             R2, R4
4B56D8:  BEQ             loc_4B5772
4B56DA:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B56E0)
4B56DC:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B56DE:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B56E0:  MLA.W           R1, R0, R1, R2
4B56E4:  LDR             R1, [R1,#0x1C]
4B56E6:  CMP             R1, R4
4B56E8:  BEQ             loc_4B5772
4B56EA:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B56F4)
4B56EC:  MOV.W           R1, #0x2D4
4B56F0:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B56F2:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B56F4:  MLA.W           R2, R0, R1, R2
4B56F8:  LDR             R2, [R2,#0x20]
4B56FA:  CMP             R2, R4
4B56FC:  BEQ             loc_4B5772
4B56FE:  LDR             R2, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B5704)
4B5700:  ADD             R2, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B5702:  LDR             R2, [R2]; CPedGroups::ms_groups ...
4B5704:  MLA.W           R1, R0, R1, R2
4B5708:  LDR             R1, [R1,#0x24]
4B570A:  CMP             R1, R4
4B570C:  BEQ             loc_4B5772
4B570E:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x4B5718)
4B5710:  MOV.W           R2, #(elf_hash_bucket+0x1D8); CPed *
4B5714:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
4B5716:  LDR             R1, [R1]; CPedGroups::ms_groups ...
4B5718:  MLA.W           R0, R0, R2, R1
4B571C:  LDR             R0, [R0,#0x28]
4B571E:  CMP             R0, R4
4B5720:  BEQ             loc_4B5772
4B5722:  MOVW            R0, #0x5E4
4B5726:  CMP             R8, R0
4B5728:  BEQ             loc_4B576A
4B572A:  CMP.W           R8, #0x5E0
4B572E:  BNE             loc_4B5772
4B5730:  BLX             rand
4B5734:  UXTH            R0, R0
4B5736:  VLDR            S2, =0.000015259
4B573A:  VMOV            S0, R0
4B573E:  MOV.W           R0, #0x3E8
4B5742:  MOV             R1, R4; CPedGroup *
4B5744:  VCVT.F32.S32    S0, S0
4B5748:  VMUL.F32        S0, S0, S2
4B574C:  VLDR            S2, =2000.0
4B5750:  VMUL.F32        S0, S0, S2
4B5754:  VCVT.S32.F32    S0, S0
4B5758:  STR             R0, [SP,#0x18+var_18]; int
4B575A:  VMOV            R0, S0
4B575E:  ADDW            R3, R0, #0xBB8; CPed *
4B5762:  MOV             R0, R5; this
4B5764:  BLX             j__ZN18CGroupEventHandler20ComputeStareResponseEP9CPedGroupP4CPedS3_ii; CGroupEventHandler::ComputeStareResponse(CPedGroup *,CPed *,CPed *,int,int)
4B5768:  B               loc_4B5772
4B576A:  MOV             R0, R5; this
4B576C:  MOV             R1, R4; CPedGroup *
4B576E:  BLX             j__ZN18CGroupEventHandler28ComputeHassleSexyPedResponseEP9CPedGroupP4CPedS3_; CGroupEventHandler::ComputeHassleSexyPedResponse(CPedGroup *,CPed *,CPed *)
4B5772:  MOVS            R0, #0
4B5774:  ADD             SP, SP, #8
4B5776:  POP.W           {R8}
4B577A:  POP             {R4-R7,PC}
