; =========================================================
; Game Engine Function: sub_11C550
; Address            : 0x11C550 - 0x11C57A
; =========================================================

11C550:  PUSH            {R4,R6,R7,LR}
11C552:  ADD             R7, SP, #8
11C554:  MOV             R4, R0
11C556:  MOVS            R0, #0
11C558:  STRD.W          R0, R0, [R3]
11C55C:  STR             R1, [R3,#8]
11C55E:  STR             R3, [R2]
11C560:  LDR             R0, [R4]
11C562:  LDR             R0, [R0]
11C564:  CBZ             R0, loc_11C56A
11C566:  STR             R0, [R4]
11C568:  LDR             R3, [R2]
11C56A:  LDR             R0, [R4,#4]
11C56C:  MOV             R1, R3
11C56E:  BL              sub_EA2D2
11C572:  LDR             R0, [R4,#8]
11C574:  ADDS            R0, #1
11C576:  STR             R0, [R4,#8]
11C578:  POP             {R4,R6,R7,PC}
