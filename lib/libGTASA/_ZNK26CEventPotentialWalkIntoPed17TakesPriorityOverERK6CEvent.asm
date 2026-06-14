; =========================================================
; Game Engine Function: _ZNK26CEventPotentialWalkIntoPed17TakesPriorityOverERK6CEvent
; Address            : 0x37447E - 0x3744B2
; =========================================================

37447E:  PUSH            {R4,R5,R7,LR}
374480:  ADD             R7, SP, #8
374482:  MOV             R4, R1
374484:  MOV             R5, R0
374486:  MOV             R0, R4; this
374488:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
37448C:  CMP             R0, #0
37448E:  ITT NE
374490:  MOVNE           R0, #1
374492:  POPNE           {R4,R5,R7,PC}
374494:  LDR             R0, [R5]
374496:  LDR             R1, [R0,#0xC]
374498:  MOV             R0, R5
37449A:  BLX             R1
37449C:  MOV             R5, R0
37449E:  LDR             R0, [R4]
3744A0:  LDR             R1, [R0,#0xC]
3744A2:  MOV             R0, R4
3744A4:  BLX             R1
3744A6:  MOV             R1, R0
3744A8:  MOVS            R0, #0
3744AA:  CMP             R5, R1
3744AC:  IT GE
3744AE:  MOVGE           R0, #1
3744B0:  POP             {R4,R5,R7,PC}
