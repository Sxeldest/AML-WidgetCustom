; =========================================================
; Game Engine Function: _ZNK19CEventScriptCommand17TakesPriorityOverERK6CEvent
; Address            : 0x376612 - 0x37665C
; =========================================================

376612:  PUSH            {R4,R5,R7,LR}
376614:  ADD             R7, SP, #8
376616:  MOV             R5, R0
376618:  MOV             R4, R1
37661A:  LDRB            R0, [R5,#0x14]
37661C:  CBZ             R0, loc_37663E
37661E:  LDR             R0, [R4]
376620:  LDR             R1, [R0,#8]
376622:  MOV             R0, R4
376624:  BLX             R1
376626:  CMP             R0, #0xA
376628:  BEQ             loc_37663A
37662A:  LDRB            R0, [R5,#0x14]
37662C:  CBZ             R0, loc_37663E
37662E:  LDR             R0, [R4]
376630:  LDR             R1, [R0,#8]
376632:  MOV             R0, R4
376634:  BLX             R1
376636:  CMP             R0, #9
376638:  BNE             loc_37663E
37663A:  MOVS            R0, #1
37663C:  POP             {R4,R5,R7,PC}
37663E:  LDR             R0, [R5]
376640:  LDR             R1, [R0,#0xC]
376642:  MOV             R0, R5
376644:  BLX             R1
376646:  MOV             R5, R0
376648:  LDR             R0, [R4]
37664A:  LDR             R1, [R0,#0xC]
37664C:  MOV             R0, R4
37664E:  BLX             R1
376650:  MOV             R1, R0
376652:  MOVS            R0, #0
376654:  CMP             R5, R1
376656:  IT GE
376658:  MOVGE           R0, #1
37665A:  POP             {R4,R5,R7,PC}
