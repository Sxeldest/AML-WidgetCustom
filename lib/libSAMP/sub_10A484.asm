; =========================================================
; Game Engine Function: sub_10A484
; Address            : 0x10A484 - 0x10A4A2
; =========================================================

10A484:  PUSH            {R4,R6,R7,LR}
10A486:  ADD             R7, SP, #8
10A488:  MOV             R4, R0
10A48A:  LDR             R0, [R0,#0xC]
10A48C:  CBZ             R0, loc_10A49E
10A48E:  LDR             R0, [R4,#8]
10A490:  BL              sub_108354
10A494:  CBZ             R0, loc_10A49E
10A496:  LDR             R0, [R4,#0xC]
10A498:  LDRB.W          R0, [R0,#0x48C]
10A49C:  POP             {R4,R6,R7,PC}
10A49E:  MOVS            R0, #0
10A4A0:  POP             {R4,R6,R7,PC}
