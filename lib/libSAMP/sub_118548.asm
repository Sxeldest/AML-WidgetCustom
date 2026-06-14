; =========================================================
; Game Engine Function: sub_118548
; Address            : 0x118548 - 0x118578
; =========================================================

118548:  PUSH            {R4,R6,R7,LR}
11854A:  ADD             R7, SP, #8
11854C:  LDR             R0, [R1]
11854E:  MOV             R4, R3
118550:  CBZ             R0, loc_11855A
118552:  LDR             R0, [R0]
118554:  CBZ             R0, loc_11855A
118556:  MOVS            R0, #1
118558:  POP             {R4,R6,R7,PC}
11855A:  MOV             R0, R1
11855C:  MOV             R1, R2
11855E:  MOV             R2, R4
118560:  BL              sub_163144
118564:  LDR             R1, =(aAxl - 0x118570); "AXL" ...
118566:  MOVS            R0, #5; prio
118568:  LDR             R2, =(aCredandbluespd - 0x118572); "CRedAndBlueSpd: Lost texture %s" ...
11856A:  MOV             R3, R4
11856C:  ADD             R1, PC; "AXL"
11856E:  ADD             R2, PC; "CRedAndBlueSpd: Lost texture %s"
118570:  BLX             __android_log_print
118574:  MOVS            R0, #0
118576:  POP             {R4,R6,R7,PC}
