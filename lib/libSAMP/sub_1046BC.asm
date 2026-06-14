; =========================================================
; Game Engine Function: sub_1046BC
; Address            : 0x1046BC - 0x104700
; =========================================================

1046BC:  PUSH            {R4,R5,R7,LR}
1046BE:  ADD             R7, SP, #8
1046C0:  MOV             R4, R0
1046C2:  LDR             R0, [R0,#0x5C]
1046C4:  CBZ             R0, locret_1046FE
1046C6:  LDR             R0, [R4,#8]
1046C8:  BL              sub_1082F4
1046CC:  CBZ             R0, locret_1046FE
1046CE:  LDR             R0, [R4,#0x5C]
1046D0:  LDR.W           R0, [R0,#0x440]
1046D4:  ADDS            R0, #4
1046D6:  BL              sub_163684
1046DA:  CBZ             R0, locret_1046FE
1046DC:  MOV             R5, R0
1046DE:  BL              sub_163664
1046E2:  CBZ             R0, locret_1046FE
1046E4:  LDR             R0, [R5]
1046E6:  LDR             R1, [R0]
1046E8:  MOV             R0, R5
1046EA:  BLX             R1
1046EC:  LDR             R0, [R4,#0x5C]
1046EE:  MOVS            R1, #0
1046F0:  LDR.W           R0, [R0,#0x440]
1046F4:  ADDS            R0, #4
1046F6:  POP.W           {R4,R5,R7,LR}
1046FA:  B.W             sub_163688
1046FE:  POP             {R4,R5,R7,PC}
