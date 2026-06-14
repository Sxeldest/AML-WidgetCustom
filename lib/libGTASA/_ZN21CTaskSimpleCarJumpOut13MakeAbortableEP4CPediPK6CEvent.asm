; =========================================================
; Game Engine Function: _ZN21CTaskSimpleCarJumpOut13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x503650 - 0x5036BC
; =========================================================

503650:  PUSH            {R4-R7,LR}
503652:  ADD             R7, SP, #0xC
503654:  PUSH.W          {R11}
503658:  MOV             R6, R3
50365A:  MOV             R5, R1
50365C:  MOV             R4, R0
50365E:  CMP             R2, #2
503660:  BNE             loc_503678
503662:  LDR             R0, [R4,#0xC]
503664:  CMP             R0, #0
503666:  ITTT NE
503668:  MOVNE           R1, #0
50366A:  MOVTNE          R1, #0xC47A
50366E:  STRNE           R1, [R0,#0x1C]
503670:  MOVS            R0, #1
503672:  POP.W           {R11}
503676:  POP             {R4-R7,PC}
503678:  MOVS            R0, #0
50367A:  CMP             R2, #1
50367C:  BNE             loc_5036AE
50367E:  CBZ             R6, loc_5036AE
503680:  LDR             R0, [R6]
503682:  LDR             R1, [R0,#8]
503684:  MOV             R0, R6
503686:  BLX             R1
503688:  CMP             R0, #0x21 ; '!'
50368A:  BEQ             loc_503698
50368C:  LDR             R0, [R6]
50368E:  LDR             R1, [R0,#8]
503690:  MOV             R0, R6
503692:  BLX             R1
503694:  CMP             R0, #0x42 ; 'B'
503696:  BNE             loc_5036B4
503698:  LDR             R0, [R4,#0xC]
50369A:  CBZ             R0, loc_5036B4
50369C:  LDRB.W          R1, [R5,#0x485]
5036A0:  LSLS            R1, R1, #0x1F
5036A2:  BNE             loc_5036B4
5036A4:  MOV.W           R1, #0xC0000000
5036A8:  STR             R1, [R0,#0x1C]
5036AA:  MOVS            R0, #1
5036AC:  STRB            R0, [R4,#8]
5036AE:  POP.W           {R11}
5036B2:  POP             {R4-R7,PC}
5036B4:  MOVS            R0, #0
5036B6:  POP.W           {R11}
5036BA:  POP             {R4-R7,PC}
