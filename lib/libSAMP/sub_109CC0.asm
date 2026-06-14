; =========================================================
; Game Engine Function: sub_109CC0
; Address            : 0x109CC0 - 0x109D28
; =========================================================

109CC0:  PUSH            {R4,R5,R7,LR}
109CC2:  ADD             R7, SP, #8
109CC4:  MOV             R5, R0
109CC6:  LDR             R0, [R0,#0xC]
109CC8:  CBZ             R0, locret_109D26
109CCA:  MOV             R4, R1
109CCC:  BL              sub_10837C
109CD0:  CMP             R0, #1
109CD2:  BNE             loc_109D02
109CD4:  LDR             R0, [R5,#0xC]
109CD6:  AND.W           R1, R4, #1
109CDA:  STRB.W          R1, [R0,#0x5C0]
109CDE:  UBFX.W          R1, R4, #1, #1
109CE2:  LDR             R0, [R5,#0xC]
109CE4:  STRB.W          R1, [R0,#0x5BF]
109CE8:  UBFX.W          R1, R4, #2, #1
109CEC:  LDR             R0, [R5,#0xC]
109CEE:  STRB.W          R1, [R0,#0x5BE]
109CF2:  LSLS            R1, R4, #0x1C
109CF4:  LDR             R0, [R5,#0xC]
109CF6:  ITE MI
109CF8:  MOVMI           R1, #1
109CFA:  MOVPL           R1, #0
109CFC:  STRB.W          R1, [R0,#0x5BD]
109D00:  POP             {R4,R5,R7,PC}
109D02:  LDR             R0, [R5,#0xC]
109D04:  CBZ             R0, locret_109D26
109D06:  BL              sub_10837C
109D0A:  CMP             R0, #2
109D0C:  BNE             locret_109D26
109D0E:  LDR             R0, [R5,#0xC]
109D10:  AND.W           R1, R4, #1
109D14:  STRB.W          R1, [R0,#0x671]
109D18:  LSLS            R1, R4, #0x1E
109D1A:  LDR             R0, [R5,#0xC]
109D1C:  ITE PL
109D1E:  MOVPL           R1, #0
109D20:  MOVMI           R1, #1
109D22:  STRB.W          R1, [R0,#0x670]
109D26:  POP             {R4,R5,R7,PC}
