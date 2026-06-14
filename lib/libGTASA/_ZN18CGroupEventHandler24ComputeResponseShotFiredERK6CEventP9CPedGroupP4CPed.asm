; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler24ComputeResponseShotFiredERK6CEventP9CPedGroupP4CPed
; Address            : 0x4B5884 - 0x4B590A
; =========================================================

4B5884:  PUSH            {R4-R7,LR}
4B5886:  ADD             R7, SP, #0xC
4B5888:  PUSH.W          {R11}; unsigned __int8
4B588C:  LDR             R5, [R0,#0x10]
4B588E:  MOV             R6, R1
4B5890:  CBZ             R5, loc_4B58F0
4B5892:  LDRB.W          R1, [R5,#0x3A]
4B5896:  AND.W           R1, R1, #7
4B589A:  CMP             R1, #3
4B589C:  BNE             loc_4B58F0
4B589E:  LDRSH.W         R1, [R0,#0xA]
4B58A2:  MOVW            R2, #(elf_hash_bucket+0x4EA); CPedGroup *
4B58A6:  CMP             R1, R2
4B58A8:  BEQ             loc_4B58EA
4B58AA:  MOVW            R0, #0x5E1
4B58AE:  CMP             R1, R0
4B58B0:  BEQ             loc_4B58DC
4B58B2:  MOVW            R0, #0x5DE
4B58B6:  CMP             R1, R0
4B58B8:  BNE             loc_4B58F0
4B58BA:  MOV             R0, R6; this
4B58BC:  MOV             R1, R5; CPedGroup *
4B58BE:  BLX             j__ZN18CGroupEventHandler21IsKillTaskAppropriateEP9CPedGroupP4CPed; CGroupEventHandler::IsKillTaskAppropriate(CPedGroup *,CPed *)
4B58C2:  CMP             R0, #1
4B58C4:  BNE             loc_4B58DC
4B58C6:  MOVS            R0, #dword_14; this
4B58C8:  LDRB.W          R6, [R6,#0x2D0]
4B58CC:  BLX             j__ZN14CTaskAllocatornwEj; CTaskAllocator::operator new(uint)
4B58D0:  MOV             R4, R0
4B58D2:  MOV             R1, R5; CPed *
4B58D4:  CBZ             R6, loc_4B58FA
4B58D6:  BLX             j__ZN30CTaskAllocatorKillThreatsBasicC2EP4CPed; CTaskAllocatorKillThreatsBasic::CTaskAllocatorKillThreatsBasic(CPed *)
4B58DA:  B               loc_4B58F2
4B58DC:  MOV             R0, R6; this
4B58DE:  MOV             R1, R5; CPedGroup *
4B58E0:  MOVS            R3, #0; CPed *
4B58E2:  MOVS            R4, #0
4B58E4:  BLX             j__ZN18CGroupEventHandler22ComputeFleePedResponseEP9CPedGroupP4CPedS3_h; CGroupEventHandler::ComputeFleePedResponse(CPedGroup *,CPed *,CPed *,uchar)
4B58E8:  B               loc_4B58F2
4B58EA:  MOV             R1, R6; CEvent *
4B58EC:  BLX             j__ZN18CGroupEventHandler22ComputeMemberResponsesERK6CEventP9CPedGroupP4CPed; CGroupEventHandler::ComputeMemberResponses(CEvent const&,CPedGroup *,CPed *)
4B58F0:  MOVS            R4, #0
4B58F2:  MOV             R0, R4
4B58F4:  POP.W           {R11}
4B58F8:  POP             {R4-R7,PC}
4B58FA:  BLX             j__ZN30CTaskAllocatorKillThreatsBasicC2EP4CPed_0; CTaskAllocatorKillThreatsBasic::CTaskAllocatorKillThreatsBasic(CPed *)
4B58FE:  LDR             R0, =(_ZTV41CTaskAllocatorKillThreatsBasicRandomGroup_ptr - 0x4B5904)
4B5900:  ADD             R0, PC; _ZTV41CTaskAllocatorKillThreatsBasicRandomGroup_ptr
4B5902:  LDR             R0, [R0]; `vtable for'CTaskAllocatorKillThreatsBasicRandomGroup ...
4B5904:  ADDS            R0, #8
4B5906:  STR             R0, [R4]
4B5908:  B               loc_4B58F2
