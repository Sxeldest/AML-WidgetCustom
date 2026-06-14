; =========================================================
; Game Engine Function: _Z12GetNumLevelsjj
; Address            : 0x1B379C - 0x1B37E6
; =========================================================

1B379C:  PUSH            {R7,LR}
1B379E:  MOV             R7, SP
1B37A0:  MOV             LR, R0
1B37A2:  CMP.W           LR, #1
1B37A6:  IT EQ
1B37A8:  CMPEQ           R1, #1
1B37AA:  BEQ             loc_1B37E2
1B37AC:  MOVS            R0, #1
1B37AE:  MOV.W           R12, #0
1B37B2:  B               loc_1B37BE
1B37B4:  CMP             R3, #1
1B37B6:  MOV             R1, R3
1B37B8:  MOV             LR, R2
1B37BA:  IT EQ
1B37BC:  POPEQ           {R7,PC}
1B37BE:  LSRS            R3, R1, #1
1B37C0:  CMP.W           R12, R1,LSR#1
1B37C4:  IT EQ
1B37C6:  MOVEQ           R3, #1
1B37C8:  MOV.W           R2, LR,LSR#1
1B37CC:  CMP.W           R12, LR,LSR#1
1B37D0:  ADD.W           R0, R0, #1
1B37D4:  IT EQ
1B37D6:  MOVEQ           R2, #1
1B37D8:  MOV             R1, R3
1B37DA:  CMP             R2, #1
1B37DC:  MOV             LR, R2
1B37DE:  BEQ             loc_1B37B4
1B37E0:  B               loc_1B37BE
1B37E2:  MOVS            R0, #1
1B37E4:  POP             {R7,PC}
