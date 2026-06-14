; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerChat13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x535420 - 0x535454
; =========================================================

535420:  PUSH            {R4,R5,R7,LR}
535422:  ADD             R7, SP, #8
535424:  MOV             R5, R0
535426:  LDR             R0, [R5,#8]
535428:  LDR             R4, [R0]
53542A:  LDR             R4, [R4,#0x1C]
53542C:  BLX             R4
53542E:  CMP             R0, #1
535430:  ITT NE
535432:  MOVNE           R0, #0
535434:  POPNE           {R4,R5,R7,PC}
535436:  LDRB.W          R0, [R5,#0x72]
53543A:  CMP             R0, #0
53543C:  ITT NE
53543E:  LDRBNE.W        R0, [R5,#0x74]; this
535442:  CMPNE           R0, #0
535444:  BEQ             loc_535450
535446:  BLX             j__ZN23CAEPedSpeechAudioEntity22ReleasePedConversationEv; CAEPedSpeechAudioEntity::ReleasePedConversation(void)
53544A:  MOVS            R0, #0
53544C:  STRB.W          R0, [R5,#0x74]
535450:  MOVS            R0, #1
535452:  POP             {R4,R5,R7,PC}
