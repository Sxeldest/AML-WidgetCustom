; =========================================================
; Game Engine Function: sub_109BC8
; Address            : 0x109BC8 - 0x109C00
; =========================================================

109BC8:  PUSH            {R4-R7,LR}
109BCA:  ADD             R7, SP, #0xC
109BCC:  PUSH.W          {R11}
109BD0:  MOV             R6, R0
109BD2:  LDR             R0, [R0,#0xC]
109BD4:  MOV             R5, R2
109BD6:  MOV             R4, R1
109BD8:  CBZ             R0, loc_109BEC
109BDA:  LDR             R0, [R6,#8]
109BDC:  BL              sub_108354
109BE0:  CBZ             R0, loc_109BEC
109BE2:  LDR             R0, [R6,#0xC]
109BE4:  STRB.W          R5, [R0,#0x439]
109BE8:  STRB.W          R4, [R0,#0x438]
109BEC:  MOVS            R0, #1
109BEE:  STRB.W          R5, [R6,#0x26]
109BF2:  STRB.W          R0, [R6,#0x27]
109BF6:  STRB.W          R4, [R6,#0x25]
109BFA:  POP.W           {R11}
109BFE:  POP             {R4-R7,PC}
