; =========================================================
; Game Engine Function: _ZN4CPed34CanThrowEntityThatThisPedIsHoldingEv
; Address            : 0x4A7E92 - 0x4A7ED2
; =========================================================

4A7E92:  PUSH            {R4,R6,R7,LR}
4A7E94:  ADD             R7, SP, #8
4A7E96:  MOV             R4, R0
4A7E98:  MOVW            R1, #0x133; int
4A7E9C:  LDR.W           R0, [R4,#0x440]
4A7EA0:  ADDS            R0, #4; this
4A7EA2:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A7EA6:  CBNZ            R0, loc_4A7EC8
4A7EA8:  LDR.W           R0, [R4,#0x440]
4A7EAC:  MOV.W           R1, #0x134; int
4A7EB0:  ADDS            R0, #4; this
4A7EB2:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A7EB6:  CBNZ            R0, loc_4A7EC8
4A7EB8:  LDR.W           R0, [R4,#0x440]
4A7EBC:  MOVW            R1, #0x135; int
4A7EC0:  ADDS            R0, #4; this
4A7EC2:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4A7EC6:  CBZ             R0, loc_4A7ECE
4A7EC8:  BLX             j__ZN21CTaskSimpleHoldEntity14CanThrowEntityEv; CTaskSimpleHoldEntity::CanThrowEntity(void)
4A7ECC:  POP             {R4,R6,R7,PC}
4A7ECE:  MOVS            R0, #0
4A7ED0:  POP             {R4,R6,R7,PC}
