; =========================================================
; Game Engine Function: sub_FB50C
; Address            : 0xFB50C - 0xFB5A6
; =========================================================

FB50C:  PUSH            {R4-R7,LR}
FB50E:  ADD             R7, SP, #0xC
FB510:  PUSH.W          {R8}
FB514:  MOVW            R8, #0xFFFF
FB518:  CBZ             R0, loc_FB56A
FB51A:  MOV             R5, R0
FB51C:  LDR             R0, =(off_23496C - 0xFB526)
FB51E:  MOV             R1, R5
FB520:  MOVS            R2, #0
FB522:  ADD             R0, PC; off_23496C
FB524:  LDR             R0, [R0]; dword_23DEF4
FB526:  LDR             R0, [R0]
FB528:  LDR.W           R0, [R0,#0x3B0]
FB52C:  LDRD.W          R4, R6, [R0]
FB530:  MOV             R0, R4
FB532:  BL              sub_148F74
FB536:  CMP             R0, R8
FB538:  BNE             loc_FB56E
FB53A:  MOVW            R0, #0xEA60
FB53E:  ADDS            R1, R6, R0
FB540:  LDRD.W          R0, R1, [R1]
FB544:  CMP             R0, R1
FB546:  BEQ             loc_FB560
FB548:  MOV.W           R2, #0x1F40
FB54C:  LDR             R3, [R0]
FB54E:  ADD.W           R3, R6, R3,LSL#2
FB552:  LDR             R3, [R3,R2]
FB554:  CMP             R3, R5
FB556:  BEQ             loc_FB560
FB558:  ADDS            R0, #4
FB55A:  CMP             R0, R1
FB55C:  BNE             loc_FB54C
FB55E:  B               loc_FB56A
FB560:  CMP             R0, R1
FB562:  ITT NE
FB564:  LDRHNE          R0, [R0]
FB566:  CMPNE           R0, R8
FB568:  BNE             loc_FB574
FB56A:  MOVW            R0, #0xFFFF
FB56E:  POP.W           {R8}
FB572:  POP             {R4-R7,PC}
FB574:  MOVW            R3, #0xF050
FB578:  ADDW            R2, R4, #0xFB4
FB57C:  MOVS            R1, #0
FB57E:  MOVT            R3, #0xFFFF
FB582:  LDRB            R6, [R2,R1]
FB584:  CBZ             R6, loc_FB598
FB586:  ADD.W           R6, R2, R1,LSL#2
FB58A:  LDR             R6, [R6,R3]
FB58C:  CBZ             R6, loc_FB598
FB58E:  LDR             R6, [R6]
FB590:  CBZ             R6, loc_FB598
FB592:  LDRH            R6, [R6,#0x16]
FB594:  CMP             R6, R0
FB596:  BEQ             loc_FB5A2
FB598:  ADDS            R1, #1
FB59A:  CMP.W           R1, #0x3EC
FB59E:  BNE             loc_FB582
FB5A0:  B               loc_FB56A
FB5A2:  UXTH            R0, R1
FB5A4:  B               loc_FB56E
