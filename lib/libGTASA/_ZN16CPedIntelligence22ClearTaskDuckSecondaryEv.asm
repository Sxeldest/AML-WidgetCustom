; =========================================================
; Game Engine Function: _ZN16CPedIntelligence22ClearTaskDuckSecondaryEv
; Address            : 0x4C0838 - 0x4C08EA
; =========================================================

4C0838:  PUSH            {R4-R7,LR}
4C083A:  ADD             R7, SP, #0xC
4C083C:  PUSH.W          {R8}
4C0840:  MOV             R4, R0
4C0842:  ADDS            R5, R4, #4
4C0844:  MOVS            R1, #1; int
4C0846:  MOV             R0, R5; this
4C0848:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C084C:  CMP             R0, #0
4C084E:  BEQ             loc_4C08E4
4C0850:  MOV             R0, R5; this
4C0852:  MOVS            R1, #1; int
4C0854:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0858:  LDR             R2, [R0]
4C085A:  MOVS            R3, #0
4C085C:  LDR             R1, [R4]
4C085E:  MOV.W           R8, #0
4C0862:  LDR             R6, [R2,#0x1C]
4C0864:  MOVS            R2, #0
4C0866:  BLX             R6
4C0868:  LDR             R0, [R4]
4C086A:  LDR.W           R1, [R0,#0x444]
4C086E:  CBZ             R1, loc_4C0876
4C0870:  STR.W           R8, [R1,#0x14]
4C0874:  B               loc_4C087C
4C0876:  MOVS            R1, #1
4C0878:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
4C087C:  MOV             R0, R5; this
4C087E:  MOVS            R1, #0; int
4C0880:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0884:  CBZ             R0, loc_4C08E4
4C0886:  MOV             R0, R5; this
4C0888:  MOVS            R1, #0; int
4C088A:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C088E:  LDR             R1, [R0]
4C0890:  LDR             R1, [R1,#0x14]
4C0892:  BLX             R1
4C0894:  MOVW            R1, #0x3F9
4C0898:  CMP             R0, R1
4C089A:  BNE             loc_4C08E4
4C089C:  MOV             R0, R5; this
4C089E:  MOVS            R1, #0; int
4C08A0:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C08A4:  CBZ             R0, loc_4C08E4
4C08A6:  MOV             R0, R5; this
4C08A8:  MOVS            R1, #0; int
4C08AA:  MOVS            R6, #0
4C08AC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C08B0:  CBZ             R0, loc_4C08D4
4C08B2:  MOV             R0, R5; this
4C08B4:  MOVS            R1, #0; int
4C08B6:  MOVS            R6, #0
4C08B8:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C08BC:  LDR             R1, [R0]
4C08BE:  LDR             R1, [R1,#0x14]
4C08C0:  BLX             R1
4C08C2:  MOVW            R1, #0x3F9
4C08C6:  CMP             R0, R1
4C08C8:  BNE             loc_4C08D4
4C08CA:  MOV             R0, R5; this
4C08CC:  MOVS            R1, #0; int
4C08CE:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C08D2:  MOV             R6, R0
4C08D4:  LDR             R1, [R4]; CPed *
4C08D6:  MOV             R0, R6; this
4C08D8:  POP.W           {R8}
4C08DC:  POP.W           {R4-R7,LR}
4C08E0:  B.W             sub_19D59C
4C08E4:  POP.W           {R8}
4C08E8:  POP             {R4-R7,PC}
