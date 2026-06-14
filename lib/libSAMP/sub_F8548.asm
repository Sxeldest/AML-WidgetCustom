; =========================================================
; Game Engine Function: sub_F8548
; Address            : 0xF8548 - 0xF8578
; =========================================================

F8548:  PUSH            {R7,LR}
F854A:  MOV             R7, SP
F854C:  CBZ             R0, loc_F856E
F854E:  BL              sub_16368C
F8552:  CBZ             R0, loc_F856E
F8554:  LDR             R2, =(unk_245630 - 0xF8560)
F8556:  MOVS            R1, #0
F8558:  MOVW            R12, #0x714
F855C:  ADD             R2, PC; unk_245630
F855E:  ADD.W           R3, R2, R1,LSL#2
F8562:  LDR             R3, [R3,#4]
F8564:  CMP             R3, R0
F8566:  BEQ             loc_F8574
F8568:  ADDS            R1, #1
F856A:  CMP             R1, R12
F856C:  BNE             loc_F855E
F856E:  MOV.W           R0, #0xFFFFFFFF
F8572:  POP             {R7,PC}
F8574:  ADDS            R0, R1, #1
F8576:  POP             {R7,PC}
