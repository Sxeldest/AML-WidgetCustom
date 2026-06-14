; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence14FindTaskByTypeEi
; Address            : 0x4BFF10 - 0x4BFF50
; =========================================================

4BFF10:  PUSH            {R4,R5,R7,LR}
4BFF12:  ADD             R7, SP, #8
4BFF14:  ADDS            R5, R0, #4
4BFF16:  MOV             R4, R1
4BFF18:  MOVS            R1, #4; int
4BFF1A:  MOV             R2, R4; int
4BFF1C:  MOV             R0, R5; this
4BFF1E:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4BFF22:  CBNZ            R0, locret_4BFF40
4BFF24:  MOV             R0, R5; this
4BFF26:  MOVS            R1, #3; int
4BFF28:  MOV             R2, R4; int
4BFF2A:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4BFF2E:  CMP             R0, #0
4BFF30:  IT NE
4BFF32:  POPNE           {R4,R5,R7,PC}
4BFF34:  MOV             R0, R5; this
4BFF36:  MOVS            R1, #1; int
4BFF38:  MOV             R2, R4; int
4BFF3A:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
4BFF3E:  CBZ             R0, loc_4BFF42
4BFF40:  POP             {R4,R5,R7,PC}
4BFF42:  MOV             R0, R5; this
4BFF44:  MOVS            R1, #2; int
4BFF46:  MOV             R2, R4; int
4BFF48:  POP.W           {R4,R5,R7,LR}
4BFF4C:  B.W             sub_18C5F8
