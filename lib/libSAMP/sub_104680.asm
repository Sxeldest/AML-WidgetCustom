; =========================================================
; Game Engine Function: sub_104680
; Address            : 0x104680 - 0x1046BC
; =========================================================

104680:  PUSH            {R4,R6,R7,LR}
104682:  ADD             R7, SP, #8
104684:  MOV             R4, R0
104686:  LDR             R0, [R0,#0x5C]
104688:  CBZ             R0, loc_1046B4
10468A:  LDR             R0, [R4,#8]
10468C:  BL              sub_1082F4
104690:  CBZ             R0, loc_1046B4
104692:  MOV             R0, R4
104694:  BL              sub_104648
104698:  CMP             R0, #0x10
10469A:  BCC             loc_1046B4
10469C:  CMP             R0, #0x2E ; '.'
10469E:  BEQ             loc_1046B4
1046A0:  LDR             R0, [R4,#0x5C]
1046A2:  LDRB.W          R1, [R0,#0x71C]
1046A6:  RSB.W           R1, R1, R1,LSL#3
1046AA:  ADD.W           R0, R0, R1,LSL#2
1046AE:  LDR.W           R0, [R0,#0x5B0]
1046B2:  CBZ             R0, loc_1046B8
1046B4:  MOVS            R0, #1
1046B6:  POP             {R4,R6,R7,PC}
1046B8:  MOVS            R0, #0
1046BA:  POP             {R4,R6,R7,PC}
