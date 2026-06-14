; =========================================================
; Game Engine Function: sub_1608E0
; Address            : 0x1608E0 - 0x160930
; =========================================================

1608E0:  PUSH            {R4,R6,R7,LR}
1608E2:  ADD             R7, SP, #8
1608E4:  LDRD.W          R12, R2, [R0]
1608E8:  LDR             R3, [R1,#4]
1608EA:  CMP             R2, R12
1608EC:  BEQ             loc_160914
1608EE:  MOV.W           LR, #0
1608F2:  LDR.W           R4, [R2,#-8]!
1608F6:  STR.W           R4, [R3,#-8]
1608FA:  CMP             R2, R12
1608FC:  LDR             R4, [R2,#4]
1608FE:  STR.W           R4, [R3,#-4]
160902:  STRD.W          LR, LR, [R2]
160906:  LDR             R3, [R1,#4]
160908:  SUB.W           R3, R3, #8
16090C:  STR             R3, [R1,#4]
16090E:  BNE             loc_1608F2
160910:  LDR.W           R12, [R0]
160914:  STR             R3, [R0]
160916:  STR.W           R12, [R1,#4]
16091A:  LDR             R2, [R1,#8]
16091C:  LDR             R3, [R0,#4]
16091E:  STR             R2, [R0,#4]
160920:  STR             R3, [R1,#8]
160922:  LDR             R2, [R1,#0xC]
160924:  LDR             R3, [R0,#8]
160926:  STR             R2, [R0,#8]
160928:  LDR             R0, [R1,#4]
16092A:  STR             R3, [R1,#0xC]
16092C:  STR             R0, [R1]
16092E:  POP             {R4,R6,R7,PC}
