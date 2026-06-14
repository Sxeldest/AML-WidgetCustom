; =========================================================
; Game Engine Function: _ZNK15CEventAreaCodes17TakesPriorityOverERK6CEvent
; Address            : 0x377BB2 - 0x377BE6
; =========================================================

377BB2:  PUSH            {R4,R5,R7,LR}
377BB4:  ADD             R7, SP, #8
377BB6:  MOV             R4, R1
377BB8:  MOV             R5, R0
377BBA:  MOV             R0, R4; this
377BBC:  BLX             j__ZN13CEventHandler16IsTemporaryEventERK6CEvent; CEventHandler::IsTemporaryEvent(CEvent const&)
377BC0:  CMP             R0, #0
377BC2:  ITT NE
377BC4:  MOVNE           R0, #1
377BC6:  POPNE           {R4,R5,R7,PC}
377BC8:  LDR             R0, [R5]
377BCA:  LDR             R1, [R0,#0xC]
377BCC:  MOV             R0, R5
377BCE:  BLX             R1
377BD0:  MOV             R5, R0
377BD2:  LDR             R0, [R4]
377BD4:  LDR             R1, [R0,#0xC]
377BD6:  MOV             R0, R4
377BD8:  BLX             R1
377BDA:  MOV             R1, R0
377BDC:  MOVS            R0, #0
377BDE:  CMP             R5, R1
377BE0:  IT GE
377BE2:  MOVGE           R0, #1
377BE4:  POP             {R4,R5,R7,PC}
