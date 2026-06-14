; =========================================================
; Game Engine Function: sub_14F44C
; Address            : 0x14F44C - 0x14F47C
; =========================================================

14F44C:  PUSH            {R4-R7,LR}
14F44E:  ADD             R7, SP, #0xC
14F450:  PUSH.W          {R11}
14F454:  MOV             R4, R0
14F456:  MOV.W           R0, #0x2400
14F45A:  LDR             R5, [R4,R0]
14F45C:  ADD.W           R0, R4, #0x2400
14F460:  LDR             R6, [R0,#4]
14F462:  CMP             R5, R6
14F464:  BEQ             loc_14F476
14F466:  LDRH            R0, [R5]
14F468:  LDR.W           R0, [R4,R0,LSL#2]; s
14F46C:  CBZ             R0, loc_14F472
14F46E:  BL              sub_107E7A
14F472:  ADDS            R5, #2
14F474:  B               loc_14F462
14F476:  POP.W           {R11}
14F47A:  POP             {R4-R7,PC}
