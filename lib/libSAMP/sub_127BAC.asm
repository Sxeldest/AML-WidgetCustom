; =========================================================
; Game Engine Function: sub_127BAC
; Address            : 0x127BAC - 0x127BE0
; =========================================================

127BAC:  PUSH            {R4-R7,LR}
127BAE:  ADD             R7, SP, #0xC
127BB0:  PUSH.W          {R11}
127BB4:  MOV             R4, R0
127BB6:  BL              sub_163768
127BBA:  LDRH            R6, [R4,#4]
127BBC:  MOV             R5, R0
127BBE:  BL              sub_163768
127BC2:  LDR.W           R1, [R5,R6,LSL#2]
127BC6:  LDR.W           R2, [R0,#0x81C]
127BCA:  STR.W           R2, [R5,R6,LSL#2]
127BCE:  STR.W           R1, [R0,#0x81C]
127BD2:  LDR             R0, [R4]
127BD4:  LDRH            R1, [R4,#4]
127BD6:  STRH            R1, [R0]
127BD8:  MOV             R0, R4
127BDA:  POP.W           {R11}
127BDE:  POP             {R4-R7,PC}
