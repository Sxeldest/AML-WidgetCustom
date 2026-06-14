; =========================================================
; Game Engine Function: sub_20E568
; Address            : 0x20E568 - 0x20E598
; =========================================================

20E568:  PUSH            {R4,R5,R7,LR}
20E56A:  ADD             R7, SP, #8
20E56C:  MOV             R4, R1
20E56E:  MOV             R5, R0
20E570:  LDRD.W          R1, R2, [R0],#0x10
20E574:  ADDS            R3, R4, #4
20E576:  BL              sub_20E5B6
20E57A:  LDR             R1, [R4,#4]
20E57C:  LDR             R0, [R5]
20E57E:  STR             R1, [R5]
20E580:  STR             R0, [R4,#4]
20E582:  LDR             R1, [R4,#8]
20E584:  LDR             R0, [R5,#4]
20E586:  STR             R1, [R5,#4]
20E588:  STR             R0, [R4,#8]
20E58A:  LDR             R1, [R4,#0xC]
20E58C:  LDR             R0, [R5,#8]
20E58E:  STR             R1, [R5,#8]
20E590:  STR             R0, [R4,#0xC]
20E592:  LDR             R0, [R4,#4]
20E594:  STR             R0, [R4]
20E596:  POP             {R4,R5,R7,PC}
