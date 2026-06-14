; =========================================================
; Game Engine Function: sub_1005C6
; Address            : 0x1005C6 - 0x1005E4
; =========================================================

1005C6:  PUSH            {R4,R6,R7,LR}
1005C8:  ADD             R7, SP, #8
1005CA:  MOV             R4, R0
1005CC:  LDRB            R0, [R0,#0x10]
1005CE:  CBZ             R0, loc_1005D4
1005D0:  MOVS            R0, #0
1005D2:  POP             {R4,R6,R7,PC}
1005D4:  MOVS            R0, #1
1005D6:  STRB            R0, [R4,#0x10]
1005D8:  LDR             R0, [R4,#0xC]
1005DA:  BL              sub_10069E
1005DE:  MOVS            R1, #0
1005E0:  STRB            R1, [R4,#0x10]
1005E2:  POP             {R4,R6,R7,PC}
