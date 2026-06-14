; =========================================================
; Game Engine Function: sub_20E390
; Address            : 0x20E390 - 0x20E3B4
; =========================================================

20E390:  PUSH            {R4,R6,R7,LR}
20E392:  ADD             R7, SP, #8
20E394:  LDR             R1, [R0]
20E396:  CBZ             R1, locret_20E3B2
20E398:  MOV             R4, R0
20E39A:  STR             R1, [R0,#4]
20E39C:  LDR             R0, [R0,#8]
20E39E:  SUBS            R0, R0, R1
20E3A0:  ASRS            R2, R0, #2
20E3A2:  ADD.W           R0, R4, #0x10
20E3A6:  BL              sub_20E22A
20E3AA:  MOVS            R0, #0
20E3AC:  STRD.W          R0, R0, [R4]
20E3B0:  STR             R0, [R4,#8]
20E3B2:  POP             {R4,R6,R7,PC}
