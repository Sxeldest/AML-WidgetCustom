; =========================================================
; Game Engine Function: _ZN18CGroupEventHandler22ComputeResponseSeenCopERK6CEventP9CPedGroupP4CPed
; Address            : 0x4B54B0 - 0x4B552A
; =========================================================

4B54B0:  PUSH            {R4-R7,LR}
4B54B2:  ADD             R7, SP, #0xC
4B54B4:  PUSH.W          {R11}; unsigned __int8
4B54B8:  MOV             R6, R1
4B54BA:  LDRSH.W         R1, [R0,#0xA]
4B54BE:  LDR             R4, [R0,#0x10]
4B54C0:  MOVW            R0, #0x5EB
4B54C4:  CMP             R1, R0
4B54C6:  BEQ             loc_4B5508
4B54C8:  MOVW            R0, #0x5E1
4B54CC:  CMP             R1, R0
4B54CE:  BEQ             loc_4B54FA
4B54D0:  MOVW            R0, #0x5DE
4B54D4:  CMP             R1, R0
4B54D6:  BNE             loc_4B5510
4B54D8:  MOV             R0, R6; this
4B54DA:  MOV             R1, R4; CPedGroup *
4B54DC:  BLX             j__ZN18CGroupEventHandler21IsKillTaskAppropriateEP9CPedGroupP4CPed; CGroupEventHandler::IsKillTaskAppropriate(CPedGroup *,CPed *)
4B54E0:  CMP             R0, #1
4B54E2:  BNE             loc_4B54FA
4B54E4:  MOVS            R0, #dword_14; this
4B54E6:  LDRB.W          R6, [R6,#0x2D0]
4B54EA:  BLX             j__ZN14CTaskAllocatornwEj; CTaskAllocator::operator new(uint)
4B54EE:  MOV             R5, R0
4B54F0:  MOV             R1, R4; CPed *
4B54F2:  CBZ             R6, loc_4B551A
4B54F4:  BLX             j__ZN30CTaskAllocatorKillThreatsBasicC2EP4CPed; CTaskAllocatorKillThreatsBasic::CTaskAllocatorKillThreatsBasic(CPed *)
4B54F8:  B               loc_4B5512
4B54FA:  MOV             R0, R6; this
4B54FC:  MOV             R1, R4; CPedGroup *
4B54FE:  MOVS            R3, #0; CPed *
4B5500:  MOVS            R5, #0
4B5502:  BLX             j__ZN18CGroupEventHandler22ComputeFleePedResponseEP9CPedGroupP4CPedS3_h; CGroupEventHandler::ComputeFleePedResponse(CPedGroup *,CPed *,CPed *,uchar)
4B5506:  B               loc_4B5512
4B5508:  MOV             R0, R6; this
4B550A:  MOV             R1, R4; CPedGroup *
4B550C:  BLX             j__ZN18CGroupEventHandler25ComputeHandSignalResponseEP9CPedGroupP4CPedS3_; CGroupEventHandler::ComputeHandSignalResponse(CPedGroup *,CPed *,CPed *)
4B5510:  MOVS            R5, #0
4B5512:  MOV             R0, R5
4B5514:  POP.W           {R11}
4B5518:  POP             {R4-R7,PC}
4B551A:  BLX             j__ZN30CTaskAllocatorKillThreatsBasicC2EP4CPed_0; CTaskAllocatorKillThreatsBasic::CTaskAllocatorKillThreatsBasic(CPed *)
4B551E:  LDR             R0, =(_ZTV41CTaskAllocatorKillThreatsBasicRandomGroup_ptr - 0x4B5524)
4B5520:  ADD             R0, PC; _ZTV41CTaskAllocatorKillThreatsBasicRandomGroup_ptr
4B5522:  LDR             R0, [R0]; `vtable for'CTaskAllocatorKillThreatsBasicRandomGroup ...
4B5524:  ADDS            R0, #8
4B5526:  STR             R0, [R5]
4B5528:  B               loc_4B5512
