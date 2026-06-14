; =========================================================
; Game Engine Function: sub_14F5FC
; Address            : 0x14F5FC - 0x14F62C
; =========================================================

14F5FC:  PUSH            {R4-R7,LR}
14F5FE:  ADD             R7, SP, #0xC
14F600:  PUSH.W          {R11}
14F604:  MOV             R4, R0
14F606:  MOV.W           R0, #0x2400
14F60A:  LDR             R5, [R4,R0]
14F60C:  ADD.W           R0, R4, #0x2400
14F610:  LDR             R6, [R0,#4]
14F612:  CMP             R5, R6
14F614:  BEQ             loc_14F626
14F616:  LDRH            R0, [R5]
14F618:  LDR.W           R0, [R4,R0,LSL#2]
14F61C:  CBZ             R0, loc_14F622
14F61E:  BL              sub_1081C8
14F622:  ADDS            R5, #2
14F624:  B               loc_14F612
14F626:  POP.W           {R11}
14F62A:  POP             {R4-R7,PC}
