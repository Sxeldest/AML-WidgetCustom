; =========================================================
; Game Engine Function: sub_1413D6
; Address            : 0x1413D6 - 0x1413FC
; =========================================================

1413D6:  CBZ             R1, locret_1413FA
1413D8:  PUSH            {R4,R6,R7,LR}
1413DA:  ADD             R7, SP, #8
1413DC:  MOV             R4, R0
1413DE:  LDR             R0, [R0,#0x1C]
1413E0:  CBZ             R0, loc_1413F0
1413E2:  BL              sub_1048BC
1413E6:  LDR             R0, [R4,#0x1C]
1413E8:  LDR.W           R1, [R4,#0x71]
1413EC:  BL              sub_103E90
1413F0:  MOVS            R0, #1
1413F2:  STRB.W          R0, [R4,#0x21]
1413F6:  POP.W           {R4,R6,R7,LR}
1413FA:  BX              LR
