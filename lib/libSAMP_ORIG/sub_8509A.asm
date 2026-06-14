; =========================================================
; Game Engine Function: sub_8509A
; Address            : 0x8509A - 0x850DC
; =========================================================

8509A:  PUSH            {R7,LR}
8509C:  MOV             R7, SP
8509E:  MOV             R12, R0
850A0:  LDR.W           R3, [R12,#0x50]!
850A4:  CBZ             R3, locret_850D0
850A6:  SUB.W           R0, R12, #4
850AA:  MOV             LR, R12
850AC:  LDR             R2, [R3,#0x10]
850AE:  CMP             R2, R1
850B0:  MOV             R2, R3
850B2:  IT CC
850B4:  ADDCC           R2, #4
850B6:  LDR             R2, [R2]
850B8:  IT CS
850BA:  MOVCS           LR, R3
850BC:  CMP             R2, #0
850BE:  MOV             R3, R2
850C0:  BNE             loc_850AC
850C2:  CMP             LR, R12
850C4:  IT EQ
850C6:  POPEQ           {R7,PC}
850C8:  LDR.W           R2, [LR,#0x10]
850CC:  CMP             R2, R1
850CE:  BLS             loc_850D2
850D0:  POP             {R7,PC}
850D2:  MOV             R1, LR
850D4:  POP.W           {R7,LR}
850D8:  B.W             sub_85418
