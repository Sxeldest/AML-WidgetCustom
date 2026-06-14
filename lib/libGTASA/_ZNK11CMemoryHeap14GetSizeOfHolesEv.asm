; =========================================================
; Game Engine Function: _ZNK11CMemoryHeap14GetSizeOfHolesEv
; Address            : 0x5D2774 - 0x5D27D8
; =========================================================

5D2774:  PUSH            {R7,LR}
5D2776:  MOV             R7, SP
5D2778:  MOV             R12, R0
5D277A:  ADD.W           LR, R12, #0x20 ; ' '
5D277E:  LDR.W           R3, [R12,#0x18]
5D2782:  MOVS            R0, #0
5D2784:  CMP             R3, LR
5D2786:  ITT NE
5D2788:  LDRNE           R2, [R3,#0x10]
5D278A:  CMPNE           R2, LR
5D278C:  BEQ             loc_5D27A2
5D278E:  MOVS            R0, #0
5D2790:  MOV             R1, R2
5D2792:  LDR             R2, [R3]
5D2794:  CMP             R1, LR
5D2796:  ADD             R0, R2
5D2798:  BEQ             loc_5D27A2
5D279A:  LDR             R2, [R1,#0x10]
5D279C:  MOV             R3, R1
5D279E:  CMP             R2, LR
5D27A0:  BNE             loc_5D2790
5D27A2:  LDR.W           R12, [R12,#0x38]
5D27A6:  CMP.W           R12, #0
5D27AA:  IT EQ
5D27AC:  POPEQ           {R7,PC}
5D27AE:  MOV.W           LR, #0
5D27B2:  RSB.W           R1, LR, LR,LSL#4
5D27B6:  ADD.W           R1, R12, R1,LSL#2
5D27BA:  LDR             R3, [R1,#0x10]
5D27BC:  ADDS            R1, #0x18
5D27BE:  CMP             R3, R1
5D27C0:  BEQ             loc_5D27CC
5D27C2:  LDR             R2, [R3]
5D27C4:  LDR             R3, [R3,#0x10]
5D27C6:  ADD             R0, R2
5D27C8:  CMP             R3, R1
5D27CA:  BNE             loc_5D27C2
5D27CC:  ADD.W           LR, LR, #1
5D27D0:  CMP.W           LR, #0x40 ; '@'
5D27D4:  BNE             loc_5D27B2
5D27D6:  POP             {R7,PC}
