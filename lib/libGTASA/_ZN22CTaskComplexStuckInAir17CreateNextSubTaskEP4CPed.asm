; =========================================================
; Game Engine Function: _ZN22CTaskComplexStuckInAir17CreateNextSubTaskEP4CPed
; Address            : 0x53255C - 0x5325DC
; =========================================================

53255C:  PUSH            {R4,R6,R7,LR}
53255E:  ADD             R7, SP, #8
532560:  LDR             R0, [R0,#8]
532562:  MOV             R4, R1
532564:  LDR             R1, [R0]
532566:  LDR             R1, [R1,#0x14]
532568:  BLX             R1
53256A:  CMP             R0, #0xD2
53256C:  BGT             loc_53257A
53256E:  CMP             R0, #0xCB
532570:  BEQ             loc_532598
532572:  CMP             R0, #0xD0
532574:  BEQ             loc_532584
532576:  MOVS            R0, #0
532578:  POP             {R4,R6,R7,PC}
53257A:  CMP             R0, #0xD3
53257C:  BEQ             loc_5325B0
53257E:  CMP.W           R0, #0x38C
532582:  BNE             loc_532576
532584:  LDR.W           R0, [R4,#0x440]
532588:  MOVS            R1, #0xCB
53258A:  LDRH.W          R0, [R0,#0x276]
53258E:  CMP             R0, #0
532590:  IT EQ
532592:  MOVWEQ          R1, #0x516
532596:  B               loc_5325D4
532598:  LDR.W           R0, [R4,#0x440]
53259C:  LDRH.W          R0, [R0,#0x276]
5325A0:  CBZ             R0, loc_5325BE
5325A2:  LDR.W           R0, [R4,#0x444]
5325A6:  MOVS            R1, #0xCB
5325A8:  CMP             R0, #0
5325AA:  IT EQ
5325AC:  MOVEQ           R1, #0xD3
5325AE:  B               loc_5325D4
5325B0:  LDR.W           R0, [R4,#0x440]
5325B4:  LDRH.W          R0, [R0,#0x276]
5325B8:  CBZ             R0, loc_5325C4
5325BA:  MOVS            R1, #0xCB
5325BC:  B               loc_5325D4
5325BE:  MOVW            R1, #0x516
5325C2:  B               loc_5325D4
5325C4:  LDR.W           R0, [R4,#0x444]; this
5325C8:  MOVW            R1, #0x516
5325CC:  CMP             R0, #0
5325CE:  IT EQ
5325D0:  MOVEQ.W         R1, #0x38C; int
5325D4:  MOV             R2, R4; CPed *
5325D6:  POP.W           {R4,R6,R7,LR}
5325DA:  B               _ZN22CTaskComplexStuckInAir13CreateSubTaskEiP4CPed; CTaskComplexStuckInAir::CreateSubTask(int,CPed *)
