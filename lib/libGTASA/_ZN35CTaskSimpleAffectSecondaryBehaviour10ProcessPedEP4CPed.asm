; =========================================================
; Game Engine Function: _ZN35CTaskSimpleAffectSecondaryBehaviour10ProcessPedEP4CPed
; Address            : 0x541260 - 0x5412C6
; =========================================================

541260:  PUSH            {R4-R7,LR}
541262:  ADD             R7, SP, #0xC
541264:  PUSH.W          {R11}
541268:  MOV             R4, R1
54126A:  MOV             R5, R0
54126C:  LDR.W           R0, [R4,#0x440]
541270:  LDR             R1, [R5,#0xC]; int
541272:  ADDS            R0, #4; this
541274:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
541278:  LDRB            R1, [R5,#8]
54127A:  CBZ             R1, loc_5412AA
54127C:  CBZ             R0, loc_541292
54127E:  LDR             R1, [R0]
541280:  MOVS            R2, #1
541282:  MOVS            R3, #0
541284:  MOVS            R6, #0
541286:  LDR.W           R12, [R1,#0x1C]
54128A:  MOV             R1, R4
54128C:  BLX             R12
54128E:  CMP             R0, #1
541290:  BNE             loc_5412BE
541292:  LDR             R0, [R5,#0x10]
541294:  LDR.W           R4, [R4,#0x440]
541298:  LDR             R1, [R0]
54129A:  LDR             R1, [R1,#8]
54129C:  BLX             R1
54129E:  LDR             R2, [R5,#0xC]; int
5412A0:  MOV             R1, R0; CTask *
5412A2:  ADDS            R0, R4, #4; this
5412A4:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
5412A8:  B               loc_5412BC
5412AA:  CBZ             R0, loc_5412BC
5412AC:  LDR             R1, [R0]
5412AE:  MOVS            R2, #0
5412B0:  MOVS            R3, #0
5412B2:  MOVS            R6, #0
5412B4:  LDR             R5, [R1,#0x1C]
5412B6:  MOV             R1, R4
5412B8:  BLX             R5
5412BA:  B               loc_5412BE
5412BC:  MOVS            R6, #1
5412BE:  MOV             R0, R6
5412C0:  POP.W           {R11}
5412C4:  POP             {R4-R7,PC}
