; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence25IsPedGoingSomewhereOnFootEv
; Address            : 0x4C1478 - 0x4C1496
; =========================================================

4C1478:  PUSH            {R7,LR}
4C147A:  MOV             R7, SP
4C147C:  ADDS            R0, #4; this
4C147E:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4C1482:  CMP             R0, #0
4C1484:  ITT EQ
4C1486:  MOVEQ           R0, #0; this
4C1488:  POPEQ           {R7,PC}
4C148A:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
4C148E:  CMP             R0, #0
4C1490:  IT NE
4C1492:  MOVNE           R0, #1
4C1494:  POP             {R7,PC}
