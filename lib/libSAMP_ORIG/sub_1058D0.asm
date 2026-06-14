; =========================================================
; Game Engine Function: sub_1058D0
; Address            : 0x1058D0 - 0x10590C
; =========================================================

1058D0:  PUSH            {R4-R7,LR}
1058D2:  ADD             R7, SP, #0xC
1058D4:  PUSH.W          {R11}
1058D8:  MOV             R5, R0
1058DA:  LDR             R0, [R0,#8]
1058DC:  MOV             R4, R1
1058DE:  BL              sub_FE074
1058E2:  LDR             R1, =(asc_4D9FF - 0x1058EC); " (" ...
1058E4:  MOV             R0, R4
1058E6:  LDR             R6, =(sub_FFB40+1 - 0x1058F0)
1058E8:  ADD             R1, PC; " ("
1058EA:  ADDS            R2, R1, #2
1058EC:  ADD             R6, PC; sub_FFB40
1058EE:  BLX             R6; sub_FFB40
1058F0:  LDRD.W          R1, R2, [R5,#0xC]
1058F4:  MOV             R0, R4
1058F6:  BLX             R6; sub_FFB40
1058F8:  LDR             R1, =(asc_50037 - 0x105902); ")" ...
1058FA:  MOV             R0, R4
1058FC:  MOV             R3, R6
1058FE:  ADD             R1, PC; ")"
105900:  ADDS            R2, R1, #1
105902:  POP.W           {R11}
105906:  POP.W           {R4-R7,LR}
10590A:  BX              R3; sub_FFB40
