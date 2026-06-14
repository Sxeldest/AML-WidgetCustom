; =========================================================
; Game Engine Function: _ZNK16CPedIntelligence15GetTaskFightingEv
; Address            : 0x4C0530 - 0x4C0566
; =========================================================

4C0530:  PUSH            {R4,R5,R7,LR}
4C0532:  ADD             R7, SP, #8
4C0534:  ADDS            R5, R0, #4
4C0536:  MOVS            R1, #0; int
4C0538:  MOVS            R4, #0
4C053A:  MOV             R0, R5; this
4C053C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0540:  CBZ             R0, loc_4C0562
4C0542:  MOV             R0, R5; this
4C0544:  MOVS            R1, #0; int
4C0546:  MOVS            R4, #0
4C0548:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C054C:  LDR             R1, [R0]
4C054E:  LDR             R1, [R1,#0x14]
4C0550:  BLX             R1
4C0552:  CMP.W           R0, #0x3F8
4C0556:  BNE             loc_4C0562
4C0558:  MOV             R0, R5; this
4C055A:  MOVS            R1, #0; int
4C055C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4C0560:  MOV             R4, R0
4C0562:  MOV             R0, R4
4C0564:  POP             {R4,R5,R7,PC}
