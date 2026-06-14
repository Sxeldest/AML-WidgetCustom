; =========================================================
; Game Engine Function: sub_11D6EC
; Address            : 0x11D6EC - 0x11D734
; =========================================================

11D6EC:  PUSH            {R4,R5,R7,LR}
11D6EE:  ADD             R7, SP, #8
11D6F0:  MOV             R4, R0
11D6F2:  LDR             R0, [R0,#0x10]
11D6F4:  MOV             R5, R1
11D6F6:  MOVS            R1, #0
11D6F8:  CMP             R4, R0
11D6FA:  STR             R1, [R4,#0x10]
11D6FC:  BEQ             loc_11D704
11D6FE:  CBZ             R0, loc_11D70E
11D700:  MOVS            R1, #5
11D702:  B               loc_11D706
11D704:  MOVS            R1, #4
11D706:  LDR             R2, [R0]
11D708:  LDR.W           R1, [R2,R1,LSL#2]
11D70C:  BLX             R1
11D70E:  LDR             R0, [R5,#0x10]
11D710:  CBZ             R0, loc_11D71E
11D712:  CMP             R5, R0
11D714:  BEQ             loc_11D724
11D716:  STR             R0, [R4,#0x10]
11D718:  MOVS            R0, #0
11D71A:  STR             R0, [R5,#0x10]
11D71C:  B               loc_11D730
11D71E:  MOVS            R0, #0
11D720:  STR             R0, [R4,#0x10]
11D722:  B               loc_11D730
11D724:  STR             R4, [R4,#0x10]
11D726:  LDR             R0, [R5,#0x10]
11D728:  LDR             R1, [R0]
11D72A:  LDR             R2, [R1,#0xC]
11D72C:  MOV             R1, R4
11D72E:  BLX             R2
11D730:  MOV             R0, R4
11D732:  POP             {R4,R5,R7,PC}
