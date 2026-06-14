; =========================================================
; Game Engine Function: _ZN14CConversations24RemoveConversationForPedEP4CPed
; Address            : 0x30163C - 0x30169E
; =========================================================

30163C:  PUSH            {R4-R7,LR}
30163E:  ADD             R7, SP, #0xC
301640:  PUSH.W          {R8-R11}
301644:  SUB             SP, SP, #4
301646:  MOV             R11, R0
301648:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x301654)
30164A:  MOV.W           R8, #0
30164E:  MOVS            R4, #0
301650:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301652:  LDR             R6, [R0]; CConversations::m_aConversations ...
301654:  LDR             R0, =(_ZN14CConversations16m_aConversationsE_ptr - 0x30165A)
301656:  ADD             R0, PC; _ZN14CConversations16m_aConversationsE_ptr
301658:  LDR             R5, [R0]; CConversations::m_aConversations ...
30165A:  LDR             R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x301660)
30165C:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
30165E:  LDR.W           R9, [R0]; CConversations::m_aNodes ...
301662:  ADD.W           R10, R6, R4
301666:  LDR.W           R0, [R10,#8]
30166A:  CMP             R0, R11
30166C:  BNE             loc_30168E
30166E:  LDR             R0, [R5,R4]
301670:  ADD.W           R0, R0, R0,LSL#1
301674:  ADD.W           R0, R9, R0,LSL#3; this
301678:  BLX             j__ZN17CConversationNode16ClearRecursivelyEv; CConversationNode::ClearRecursively(void)
30167C:  ADDS            R0, R5, R4
30167E:  MOV.W           R1, #0xFFFFFFFF
301682:  STR             R1, [R5,R4]
301684:  STR             R1, [R0,#4]
301686:  STR.W           R8, [R10,#8]
30168A:  STRD.W          R8, R8, [R0,#0xC]
30168E:  ADDS            R4, #0x1C
301690:  CMP.W           R4, #0x188
301694:  BNE             loc_301662
301696:  ADD             SP, SP, #4
301698:  POP.W           {R8-R11}
30169C:  POP             {R4-R7,PC}
