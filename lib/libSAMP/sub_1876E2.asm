; =========================================================
; Game Engine Function: sub_1876E2
; Address            : 0x1876E2 - 0x187734
; =========================================================

1876E2:  PUSH            {R7,LR}
1876E4:  MOV             R7, SP
1876E6:  LDR.W           R2, [R0,#0x2E0]
1876EA:  CMP             R1, #0x1E
1876EC:  LDR.W           R12, [R0,#0x698]
1876F0:  MOV             R3, R1
1876F2:  LDR.W           LR, [R0,#0x69C]
1876F6:  IT LS
1876F8:  MOVLS           R3, #0x1E
1876FA:  CMP             R2, R1
1876FC:  IT CC
1876FE:  MOVCC.W         R3, #0x1F4
187702:  ADD.W           R1, LR, R12
187706:  MOV.W           R2, #0x3E8
18770A:  CMP.W           R3, R1,LSL#1
18770E:  IT CC
187710:  LSLCC           R3, R1, #1
187712:  ADD.W           R12, R3, R3,LSL#1
187716:  STR.W           R3, [R0,#0x2D8]
18771A:  CMP.W           R12, #0x1E
18771E:  UMULL.W         R1, R2, R12, R2
187722:  ITT CC
187724:  MOVCC           R2, #0
187726:  MOVWCC          R1, #0x7530
18772A:  STR.W           R1, [R0,#0x678]
18772E:  STR.W           R2, [R0,#0x67C]
187732:  POP             {R7,PC}
