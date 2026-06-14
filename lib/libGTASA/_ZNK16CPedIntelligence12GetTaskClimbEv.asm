; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence12GetTaskClimbEv
; Address            : 0x4BA60A - 0x4BA62E
; =========================================================

4BA60A:  PUSH            {R4,R6,R7,LR}
4BA60C:  ADD             R7, SP, #8
4BA60E:  ADDS            R0, #4; this
4BA610:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4BA614:  MOV             R4, R0
4BA616:  CBZ             R4, loc_4BA62A
4BA618:  LDR             R0, [R4]
4BA61A:  LDR             R1, [R0,#0x14]
4BA61C:  MOV             R0, R4
4BA61E:  BLX             R1
4BA620:  CMP             R0, #0xFE
4BA622:  IT NE
4BA624:  MOVNE           R4, #0
4BA626:  MOV             R0, R4
4BA628:  POP             {R4,R6,R7,PC}
4BA62A:  MOVS            R0, #0
4BA62C:  POP             {R4,R6,R7,PC}
