; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence13GetTaskUseGunEv
; Address            : 0x4C0566 - 0x4C059E
; =========================================================

4C0566:  PUSH            {R4,R5,R7,LR}
4C0568:  ADD             R7, SP, #8
4C056A:  ADDS            R5, R0, #4
4C056C:  MOVS            R1, #0; int
4C056E:  MOVS            R4, #0
4C0570:  MOV             R0, R5; this
4C0572:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0576:  CBZ             R0, loc_4C059A
4C0578:  MOV             R0, R5; this
4C057A:  MOVS            R1, #0; int
4C057C:  MOVS            R4, #0
4C057E:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0582:  LDR             R1, [R0]
4C0584:  LDR             R1, [R1,#0x14]
4C0586:  BLX             R1
4C0588:  MOVW            R1, #0x3F9
4C058C:  CMP             R0, R1
4C058E:  BNE             loc_4C059A
4C0590:  MOV             R0, R5; this
4C0592:  MOVS            R1, #0; int
4C0594:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0598:  MOV             R4, R0
4C059A:  MOV             R0, R4
4C059C:  POP             {R4,R5,R7,PC}
