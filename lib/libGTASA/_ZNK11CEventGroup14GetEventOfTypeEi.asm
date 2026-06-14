; =========================================================
; Game Engine Function: _ZNK11CEventGroup14GetEventOfTypeEi
; Address            : 0x36F6E4 - 0x36F726
; =========================================================

36F6E4:  PUSH            {R4-R7,LR}
36F6E6:  ADD             R7, SP, #0xC
36F6E8:  PUSH.W          {R8}
36F6EC:  MOV             R4, R0
36F6EE:  MOV             R8, R1
36F6F0:  LDR             R0, [R4,#8]
36F6F2:  CMP             R0, #1
36F6F4:  BLT             loc_36F712
36F6F6:  ADD.W           R5, R4, #0xC
36F6FA:  MOVS            R6, #0
36F6FC:  LDR.W           R0, [R5,R6,LSL#2]
36F700:  LDR             R1, [R0]
36F702:  LDR             R1, [R1,#8]
36F704:  BLX             R1
36F706:  CMP             R0, R8
36F708:  BEQ             loc_36F71A
36F70A:  LDR             R0, [R4,#8]
36F70C:  ADDS            R6, #1
36F70E:  CMP             R6, R0
36F710:  BLT             loc_36F6FC
36F712:  MOVS            R0, #0
36F714:  POP.W           {R8}
36F718:  POP             {R4-R7,PC}
36F71A:  ADD.W           R0, R4, R6,LSL#2
36F71E:  LDR             R0, [R0,#0xC]
36F720:  POP.W           {R8}
36F724:  POP             {R4-R7,PC}
