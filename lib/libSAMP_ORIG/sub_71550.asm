; =========================================================
; Game Engine Function: sub_71550
; Address            : 0x71550 - 0x7157C
; =========================================================

71550:  PUSH            {R4-R7,LR}
71552:  ADD             R7, SP, #0xC
71554:  PUSH.W          {R11}
71558:  LDR             R6, [R0,#4]
7155A:  MOV             R0, R3
7155C:  MOV             R4, R2
7155E:  MOV             R5, R1
71560:  BL              sub_88A34
71564:  MOV             R3, R0; int
71566:  LDR             R0, [R7,#arg_0]
71568:  STR             R0, [R7,#arg_0]
7156A:  MOV             R0, R6; int
7156C:  MOV             R1, R5; int
7156E:  MOV             R2, R4; int
71570:  POP.W           {R11}
71574:  POP.W           {R4-R7,LR}
71578:  B.W             sub_9D43C
