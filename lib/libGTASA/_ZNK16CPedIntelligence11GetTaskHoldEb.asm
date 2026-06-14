; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence11GetTaskHoldEb
; Address            : 0x4C05D6 - 0x4C063E
; =========================================================

4C05D6:  PUSH            {R4,R5,R7,LR}
4C05D8:  ADD             R7, SP, #8
4C05DA:  ADDS            R4, R0, #4
4C05DC:  MOV             R5, R1
4C05DE:  MOVS            R1, #4; int
4C05E0:  MOV             R0, R4; this
4C05E2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C05E6:  CBZ             R0, loc_4C0608
4C05E8:  MOV             R0, R4; this
4C05EA:  MOVS            R1, #4; int
4C05EC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C05F0:  LDR             R1, [R0]
4C05F2:  LDR             R1, [R1,#0x14]
4C05F4:  BLX             R1
4C05F6:  MOVW            R1, #0x133
4C05FA:  CMP             R0, R1
4C05FC:  BNE             loc_4C0608
4C05FE:  MOV             R0, R4; this
4C0600:  MOVS            R1, #4; int
4C0602:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0606:  POP             {R4,R5,R7,PC}
4C0608:  CBNZ            R5, loc_4C0638
4C060A:  MOV             R0, R4; this
4C060C:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
4C0610:  MOV             R4, R0
4C0612:  CBZ             R4, loc_4C0638
4C0614:  LDR             R0, [R4]
4C0616:  LDR             R1, [R0,#0x14]
4C0618:  MOV             R0, R4
4C061A:  BLX             R1
4C061C:  CMP.W           R0, #0x134
4C0620:  BEQ             loc_4C0634
4C0622:  LDR             R0, [R4]
4C0624:  LDR             R1, [R0,#0x14]
4C0626:  MOV             R0, R4
4C0628:  BLX             R1
4C062A:  MOVW            R1, #0x135
4C062E:  CMP             R0, R1
4C0630:  IT NE
4C0632:  MOVNE           R4, #0
4C0634:  MOV             R0, R4
4C0636:  POP             {R4,R5,R7,PC}
4C0638:  MOVS            R4, #0
4C063A:  MOV             R0, R4
4C063C:  POP             {R4,R5,R7,PC}
