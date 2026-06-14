; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler25ComputeResponseGunAimedAtERK6CEventP9CPedGroupP4CPed
; Address            : 0x4B57A8 - 0x4B5880
; =========================================================

4B57A8:  PUSH            {R4-R7,LR}
4B57AA:  ADD             R7, SP, #0xC
4B57AC:  PUSH.W          {R8}; unsigned __int8
4B57B0:  MOV             R6, R0
4B57B2:  MOV             R5, R1
4B57B4:  LDR             R0, [R6]
4B57B6:  LDR             R1, [R0,#0x2C]
4B57B8:  MOV             R0, R6
4B57BA:  BLX             R1
4B57BC:  MOV             R4, R0
4B57BE:  CMP             R4, #0
4B57C0:  BEQ             loc_4B5866
4B57C2:  LDRB.W          R0, [R4,#0x3A]
4B57C6:  AND.W           R0, R0, #7
4B57CA:  CMP             R0, #3
4B57CC:  BNE             loc_4B5866
4B57CE:  LDRB.W          R0, [R5,#0x2D0]
4B57D2:  CBNZ            R0, loc_4B5812
4B57D4:  MOV             R0, R4; this
4B57D6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4B57DA:  CMP             R0, #1
4B57DC:  BNE             loc_4B5812
4B57DE:  LDR.W           R8, [R5,#0x28]
4B57E2:  CMP.W           R8, #0
4B57E6:  BEQ             loc_4B5812
4B57E8:  LDRSB.W         R0, [R8,#0x71C]
4B57EC:  RSB.W           R0, R0, R0,LSL#3
4B57F0:  ADD.W           R0, R8, R0,LSL#2
4B57F4:  ADDW            R0, R0, #0x5A4; this
4B57F8:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
4B57FC:  CBNZ            R0, loc_4B5812
4B57FE:  LDR.W           R0, [R8,#0x440]; this
4B5802:  MOV             R1, R4; CPed *
4B5804:  BLX             j__ZNK16CPedIntelligence14IsFriendlyWithERK4CPed; CPedIntelligence::IsFriendlyWith(CPed const&)
4B5808:  CMP             R0, #0
4B580A:  ITT EQ
4B580C:  MOVWEQ          R0, #0x5DE
4B5810:  STRHEQ          R0, [R6,#0xA]
4B5812:  LDRSH.W         R0, [R6,#0xA]
4B5816:  MOVW            R1, #0x5E6
4B581A:  CMP             R0, R1
4B581C:  BEQ             loc_4B585E
4B581E:  MOVW            R1, #0x5E1
4B5822:  CMP             R0, R1
4B5824:  BEQ             loc_4B5850
4B5826:  MOVW            R1, #0x5DE
4B582A:  CMP             R0, R1
4B582C:  BNE             loc_4B5866
4B582E:  MOV             R0, R5; this
4B5830:  MOV             R1, R4; CPedGroup *
4B5832:  BLX             j__ZN18CGroupEventHandler21IsKillTaskAppropriateEP9CPedGroupP4CPed; CGroupEventHandler::IsKillTaskAppropriate(CPedGroup *,CPed *)
4B5836:  CMP             R0, #1
4B5838:  BNE             loc_4B5850
4B583A:  MOVS            R0, #dword_14; this
4B583C:  LDRB.W          R5, [R5,#0x2D0]
4B5840:  BLX             j__ZN14CTaskAllocatornwEj; CTaskAllocator::operator new(uint)
4B5844:  MOV             R6, R0
4B5846:  MOV             R1, R4; CPed *
4B5848:  CBZ             R5, loc_4B5870
4B584A:  BLX             j__ZN30CTaskAllocatorKillThreatsBasicC2EP4CPed; CTaskAllocatorKillThreatsBasic::CTaskAllocatorKillThreatsBasic(CPed *)
4B584E:  B               loc_4B5868
4B5850:  MOV             R0, R5; this
4B5852:  MOV             R1, R4; CPedGroup *
4B5854:  MOVS            R3, #0; CPed *
4B5856:  MOVS            R6, #0
4B5858:  BLX             j__ZN18CGroupEventHandler22ComputeFleePedResponseEP9CPedGroupP4CPedS3_h; CGroupEventHandler::ComputeFleePedResponse(CPedGroup *,CPed *,CPed *,uchar)
4B585C:  B               loc_4B5868
4B585E:  MOV             R0, R6; this
4B5860:  MOV             R1, R5; CEvent *
4B5862:  BLX             j__ZN18CGroupEventHandler22ComputeMemberResponsesERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeMemberResponses(CEvent const&,CPedGroup *,CPed *)
4B5866:  MOVS            R6, #0
4B5868:  MOV             R0, R6
4B586A:  POP.W           {R8}
4B586E:  POP             {R4-R7,PC}
4B5870:  BLX             j__ZN30CTaskAllocatorKillThreatsBasicC2EP4CPed_0; CTaskAllocatorKillThreatsBasic::CTaskAllocatorKillThreatsBasic(CPed *)
4B5874:  LDR             R0, =(_ZTV41CTaskAllocatorKillThreatsBasicRandomGroup_ptr - 0x4B587A)
4B5876:  ADD             R0, PC; _ZTV41CTaskAllocatorKillThreatsBasicRandomGroup_ptr
4B5878:  LDR             R0, [R0]; `vtable for'CTaskAllocatorKillThreatsBasicRandomGroup ...
4B587A:  ADDS            R0, #8
4B587C:  STR             R0, [R6]
4B587E:  B               loc_4B5868
