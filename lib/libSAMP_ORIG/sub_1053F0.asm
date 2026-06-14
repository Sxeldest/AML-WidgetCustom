; =========================================================
; Game Engine Function: sub_1053F0
; Address            : 0x1053F0 - 0x105430
; =========================================================

1053F0:  PUSH            {R4-R7,LR}
1053F2:  ADD             R7, SP, #0xC
1053F4:  PUSH.W          {R11}
1053F8:  MOV             R5, R0
1053FA:  LDR             R0, [R0,#8]
1053FC:  MOV             R4, R1
1053FE:  LDR             R1, [R0]
105400:  LDR             R2, [R1,#0x10]
105402:  MOV             R1, R4
105404:  BLX             R2
105406:  LDR             R1, =(aAbi - 0x105410); "[abi:" ...
105408:  MOV             R0, R4
10540A:  LDR             R6, =(sub_FFB40+1 - 0x105414)
10540C:  ADD             R1, PC; "[abi:"
10540E:  ADDS            R2, R1, #5
105410:  ADD             R6, PC; sub_FFB40
105412:  BLX             R6; sub_FFB40
105414:  LDRD.W          R1, R2, [R5,#0xC]
105418:  MOV             R0, R4
10541A:  BLX             R6; sub_FFB40
10541C:  LDR             R1, =(asc_4D740 - 0x105426); "]" ...
10541E:  MOV             R0, R4
105420:  MOV             R3, R6
105422:  ADD             R1, PC; "]"
105424:  ADDS            R2, R1, #1
105426:  POP.W           {R11}
10542A:  POP.W           {R4-R7,LR}
10542E:  BX              R3; sub_FFB40
