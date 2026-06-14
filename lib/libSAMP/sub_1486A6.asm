; =========================================================
; Game Engine Function: sub_1486A6
; Address            : 0x1486A6 - 0x1486DA
; =========================================================

1486A6:  PUSH            {R4-R7,LR}
1486A8:  ADD             R7, SP, #0xC
1486AA:  PUSH.W          {R11}
1486AE:  MOVW            R6, #0xFC18
1486B2:  ADD.W           R4, R0, #0x3EC
1486B6:  MOVS            R5, #0
1486B8:  MOVT            R6, #0xFFFF
1486BC:  LDR.W           R0, [R4,R5,LSL#2]
1486C0:  CBZ             R0, loc_1486CC
1486C2:  ADDS            R1, R4, R5
1486C4:  LDRB            R1, [R1,R6]
1486C6:  CBZ             R1, loc_1486CC
1486C8:  BL              sub_1024BC
1486CC:  ADDS            R5, #1
1486CE:  CMP.W           R5, #0x3E8
1486D2:  BNE             loc_1486BC
1486D4:  POP.W           {R11}
1486D8:  POP             {R4-R7,PC}
