; =========================================================
; Game Engine Function: _ZN17CConversationNode16ClearRecursivelyEv
; Address            : 0x300558 - 0x3005A6
; =========================================================

300558:  PUSH            {R4,R5,R7,LR}
30055A:  ADD             R7, SP, #8
30055C:  MOV             R4, R0
30055E:  MOV.W           R5, #0xFFFFFFFF
300562:  LDRSH.W         R0, [R4,#8]
300566:  CMP             R0, #0
300568:  BLT             loc_30057C
30056A:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300574)
30056C:  ADD.W           R0, R0, R0,LSL#1
300570:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300572:  LDR             R1, [R1]; CConversations::m_aNodes ...
300574:  ADD.W           R0, R1, R0,LSL#3; this
300578:  BLX             j__ZN17CConversationNode16ClearRecursivelyEv; CConversationNode::ClearRecursively(void)
30057C:  LDRSH.W         R0, [R4,#0xA]
300580:  CMP             R0, R5
300582:  BLE             loc_300596
300584:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x30058E)
300586:  ADD.W           R0, R0, R0,LSL#1
30058A:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
30058C:  LDR             R1, [R1]; CConversations::m_aNodes ...
30058E:  ADD.W           R0, R1, R0,LSL#3; this
300592:  BLX             j__ZN17CConversationNode16ClearRecursivelyEv; CConversationNode::ClearRecursively(void)
300596:  MOVS            R0, #0
300598:  STRH            R5, [R4,#0xA]
30059A:  STRB            R0, [R4]
30059C:  STRH            R5, [R4,#8]
30059E:  STRD.W          R0, R0, [R4,#0xC]
3005A2:  STR             R0, [R4,#0x14]
3005A4:  POP             {R4,R5,R7,PC}
