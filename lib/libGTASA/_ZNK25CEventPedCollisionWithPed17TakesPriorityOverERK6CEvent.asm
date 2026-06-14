; =========================================================
; Game Engine Function: _ZNK25CEventPedCollisionWithPed17TakesPriorityOverERK6CEvent
; Address            : 0x371350 - 0x371384
; =========================================================

371350:  PUSH            {R4,R5,R7,LR}
371352:  ADD             R7, SP, #8
371354:  MOV             R4, R1
371356:  MOV             R5, R0
371358:  MOV             R0, R4; this
37135A:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
37135E:  CMP             R0, #0
371360:  ITT NE
371362:  MOVNE           R0, #1
371364:  POPNE           {R4,R5,R7,PC}
371366:  LDR             R0, [R5]
371368:  LDR             R1, [R0,#0xC]
37136A:  MOV             R0, R5
37136C:  BLX             R1
37136E:  MOV             R5, R0
371370:  LDR             R0, [R4]
371372:  LDR             R1, [R0,#0xC]
371374:  MOV             R0, R4
371376:  BLX             R1
371378:  MOV             R1, R0
37137A:  MOVS            R0, #0
37137C:  CMP             R5, R1
37137E:  IT GE
371380:  MOVGE           R0, #1
371382:  POP             {R4,R5,R7,PC}
