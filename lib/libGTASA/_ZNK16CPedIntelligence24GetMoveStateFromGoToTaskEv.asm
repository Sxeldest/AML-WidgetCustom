; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence24GetMoveStateFromGoToTaskEv
; Address            : 0x4BBE08 - 0x4BBE28
; =========================================================

4BBE08:  PUSH            {R4,R6,R7,LR}
4BBE0A:  ADD             R7, SP, #8
4BBE0C:  ADDS            R0, #4; this
4BBE0E:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BBE12:  MOV             R4, R0
4BBE14:  CBZ             R4, loc_4BBE24
4BBE16:  MOV             R0, R4; this
4BBE18:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4BBE1C:  CMP             R0, #0
4BBE1E:  ITT NE
4BBE20:  LDRNE           R0, [R4,#8]
4BBE22:  POPNE           {R4,R6,R7,PC}
4BBE24:  MOVS            R0, #1
4BBE26:  POP             {R4,R6,R7,PC}
