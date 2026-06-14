; =========================================================
; Game Engine Function: sub_107BB8
; Address            : 0x107BB8 - 0x107BEC
; =========================================================

107BB8:  PUSH            {R4-R7,LR}
107BBA:  ADD             R7, SP, #0xC
107BBC:  PUSH.W          {R11}
107BC0:  LDR             R4, [R0,#4]
107BC2:  CBZ             R2, loc_107BD0
107BC4:  ASRS            R5, R4, #8
107BC6:  LSLS            R6, R4, #0x1F
107BC8:  ITT NE
107BCA:  LDRNE           R6, [R2]
107BCC:  LDRNE           R5, [R6,R5]
107BCE:  B               loc_107BD2
107BD0:  MOVS            R5, #0
107BD2:  LSLS            R4, R4, #0x1E
107BD4:  IT PL
107BD6:  MOVPL           R3, #2
107BD8:  LDR             R0, [R0]
107BDA:  ADD             R2, R5
107BDC:  LDR             R4, [R0]
107BDE:  LDR.W           R12, [R4,#0x1C]
107BE2:  POP.W           {R11}
107BE6:  POP.W           {R4-R7,LR}
107BEA:  BX              R12
