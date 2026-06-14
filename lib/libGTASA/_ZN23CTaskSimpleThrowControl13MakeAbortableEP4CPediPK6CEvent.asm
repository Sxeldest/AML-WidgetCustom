; =========================================================
; Game Engine Function: _ZN23CTaskSimpleThrowControl13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4DEEDC - 0x4DEF1E
; =========================================================

4DEEDC:  PUSH            {R4-R7,LR}
4DEEDE:  ADD             R7, SP, #0xC
4DEEE0:  PUSH.W          {R11}
4DEEE4:  MOV             R6, R1
4DEEE6:  MOV             R4, R3
4DEEE8:  LDR.W           R0, [R6,#0x440]; this
4DEEEC:  MOV             R5, R2
4DEEEE:  BLX             j__ZNK16CPedIntelligence12GetTaskThrowEv; CPedIntelligence::GetTaskThrow(void)
4DEEF2:  CBZ             R0, loc_4DEF16
4DEEF4:  LDR.W           R0, [R6,#0x440]
4DEEF8:  MOVS            R1, #0; int
4DEEFA:  ADDS            R0, #4; this
4DEEFC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4DEF00:  LDR             R1, [R0]
4DEF02:  MOV             R2, R5
4DEF04:  MOV             R3, R4
4DEF06:  LDR.W           R12, [R1,#0x1C]
4DEF0A:  MOV             R1, R6
4DEF0C:  POP.W           {R11}
4DEF10:  POP.W           {R4-R7,LR}
4DEF14:  BX              R12
4DEF16:  MOVS            R0, #1
4DEF18:  POP.W           {R11}
4DEF1C:  POP             {R4-R7,PC}
