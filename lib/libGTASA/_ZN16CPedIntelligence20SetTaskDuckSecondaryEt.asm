; =========================================================
; Game Engine Function: _ZN16CPedIntelligence20SetTaskDuckSecondaryEt
; Address            : 0x4C0740 - 0x4C0838
; =========================================================

4C0740:  PUSH            {R4-R7,LR}
4C0742:  ADD             R7, SP, #0xC
4C0744:  PUSH.W          {R8}
4C0748:  MOV             R8, R0
4C074A:  ADD.W           R5, R8, #4
4C074E:  MOV             R6, R1
4C0750:  MOVS            R1, #1; int
4C0752:  MOV             R0, R5; this
4C0754:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0758:  CBZ             R0, loc_4C07A0
4C075A:  MOV             R0, R5; this
4C075C:  MOVS            R1, #1; int
4C075E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0762:  LDR             R1, [R0]
4C0764:  LDR             R1, [R1,#0x14]
4C0766:  BLX             R1
4C0768:  MOVW            R1, #0x19F
4C076C:  CMP             R0, R1
4C076E:  BNE             loc_4C07A0
4C0770:  MOV             R0, R5; this
4C0772:  MOVS            R1, #1; int
4C0774:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0778:  CBZ             R0, loc_4C07A0
4C077A:  MOV             R0, R5; this
4C077C:  MOVS            R1, #1; int
4C077E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0782:  MOV             R0, R5; this
4C0784:  MOVS            R1, #1; int
4C0786:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C078A:  LDR             R1, [R0]
4C078C:  LDR             R1, [R1,#0x14]
4C078E:  BLX             R1
4C0790:  MOV             R0, R5; this
4C0792:  MOVS            R1, #1; int
4C0794:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0798:  LDRB.W          R0, [R0,#0x24]
4C079C:  CMP             R0, #4
4C079E:  BEQ             loc_4C0832
4C07A0:  MOVS            R0, #word_28; this
4C07A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4C07A6:  MOVS            R1, #2; unsigned __int8
4C07A8:  MOV             R2, R6; unsigned __int16
4C07AA:  MOV.W           R3, #0xFFFFFFFF; __int16
4C07AE:  MOV             R4, R0
4C07B0:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
4C07B4:  MOV             R0, R5; this
4C07B6:  MOV             R1, R4; CTask *
4C07B8:  MOVS            R2, #1; int
4C07BA:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
4C07BE:  MOV             R0, R5; this
4C07C0:  MOVS            R1, #0; int
4C07C2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C07C6:  CBZ             R0, loc_4C0820
4C07C8:  MOV             R0, R5; this
4C07CA:  MOVS            R1, #0; int
4C07CC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C07D0:  LDR             R1, [R0]
4C07D2:  LDR             R1, [R1,#0x14]
4C07D4:  BLX             R1
4C07D6:  MOVW            R1, #0x3F9
4C07DA:  CMP             R0, R1
4C07DC:  BNE             loc_4C0820
4C07DE:  MOV             R0, R5; this
4C07E0:  MOVS            R1, #0; int
4C07E2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C07E6:  CBZ             R0, loc_4C0820
4C07E8:  MOV             R0, R5; this
4C07EA:  MOVS            R1, #0; int
4C07EC:  MOVS            R6, #0
4C07EE:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C07F2:  CBZ             R0, loc_4C0816
4C07F4:  MOV             R0, R5; this
4C07F6:  MOVS            R1, #0; int
4C07F8:  MOVS            R6, #0
4C07FA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C07FE:  LDR             R1, [R0]
4C0800:  LDR             R1, [R1,#0x14]
4C0802:  BLX             R1
4C0804:  MOVW            R1, #0x3F9
4C0808:  CMP             R0, R1
4C080A:  BNE             loc_4C0816
4C080C:  MOV             R0, R5; this
4C080E:  MOVS            R1, #0; int
4C0810:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0814:  MOV             R6, R0
4C0816:  LDR.W           R1, [R8]; CPed *
4C081A:  MOV             R0, R6; this
4C081C:  BLX             j__ZN17CTaskSimpleUseGun9ClearAnimEP4CPed; CTaskSimpleUseGun::ClearAnim(CPed *)
4C0820:  MOV             R0, R5; this
4C0822:  MOVS            R1, #1; int
4C0824:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0828:  LDR             R2, [R0]
4C082A:  LDR.W           R1, [R8]
4C082E:  LDR             R2, [R2,#0x24]
4C0830:  BLX             R2
4C0832:  POP.W           {R8}
4C0836:  POP             {R4-R7,PC}
