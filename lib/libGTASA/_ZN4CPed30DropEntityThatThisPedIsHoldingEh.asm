; =========================================================
; Game Engine Function: _ZN4CPed30DropEntityThatThisPedIsHoldingEh
; Address            : 0x4A5082 - 0x4A5108
; =========================================================

4A5082:  PUSH            {R4-R7,LR}
4A5084:  ADD             R7, SP, #0xC
4A5086:  PUSH.W          {R11}
4A508A:  MOV             R5, R0
4A508C:  MOV             R4, R1
4A508E:  LDR.W           R0, [R5,#0x440]
4A5092:  MOVW            R1, #0x133; int
4A5096:  ADDS            R0, #4; this
4A5098:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A509C:  CBNZ            R0, loc_4A50BE
4A509E:  LDR.W           R0, [R5,#0x440]
4A50A2:  MOV.W           R1, #0x134; int
4A50A6:  ADDS            R0, #4; this
4A50A8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A50AC:  CBNZ            R0, loc_4A50BE
4A50AE:  LDR.W           R0, [R5,#0x440]
4A50B2:  MOVW            R1, #0x135; int
4A50B6:  ADDS            R0, #4; this
4A50B8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A50BC:  CBZ             R0, loc_4A5102
4A50BE:  MOV             R1, R5; CPed *
4A50C0:  MOVS            R2, #1; bool
4A50C2:  LDR             R6, [R0,#8]
4A50C4:  BLX             j__ZN21CTaskSimpleHoldEntity10DropEntityEP4CPedb; CTaskSimpleHoldEntity::DropEntity(CPed *,bool)
4A50C8:  CMP             R4, #0
4A50CA:  IT NE
4A50CC:  CMPNE           R6, #0
4A50CE:  BEQ             loc_4A5102
4A50D0:  LDRB.W          R0, [R6,#0x3A]
4A50D4:  AND.W           R0, R0, #7
4A50D8:  CMP             R0, #4
4A50DA:  ITT EQ
4A50DC:  LDRBEQ.W        R0, [R6,#0x140]
4A50E0:  CMPEQ           R0, #2
4A50E2:  BEQ             loc_4A5102
4A50E4:  LDR             R0, [R6]
4A50E6:  LDR             R1, [R0,#0x24]
4A50E8:  MOV             R0, R6
4A50EA:  BLX             R1
4A50EC:  MOV             R0, R6; this
4A50EE:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
4A50F2:  LDR             R0, [R6]
4A50F4:  LDR             R1, [R0,#4]
4A50F6:  MOV             R0, R6
4A50F8:  POP.W           {R11}
4A50FC:  POP.W           {R4-R7,LR}
4A5100:  BX              R1
4A5102:  POP.W           {R11}
4A5106:  POP             {R4-R7,PC}
