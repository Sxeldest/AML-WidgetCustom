; =========================================================
; Game Engine Function: sub_17D542
; Address            : 0x17D542 - 0x17D55E
; =========================================================

17D542:  PUSH            {R4,R6,R7,LR}
17D544:  ADD             R7, SP, #8
17D546:  MOV             R4, R0
17D548:  LDRB            R0, [R0,#0x10]
17D54A:  CBZ             R0, loc_17D55A
17D54C:  LDR             R0, [R4,#4]
17D54E:  CMP.W           R0, #0x800
17D552:  ITT GT
17D554:  LDRGT           R0, [R4,#0xC]; ptr
17D556:  BLXGT           free
17D55A:  MOV             R0, R4
17D55C:  POP             {R4,R6,R7,PC}
