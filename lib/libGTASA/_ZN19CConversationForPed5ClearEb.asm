; =========================================================
; Game Engine Function: _ZN19CConversationForPed5ClearEb
; Address            : 0x3005B0 - 0x3005DE
; =========================================================

3005B0:  PUSH            {R4,R6,R7,LR}
3005B2:  ADD             R7, SP, #8
3005B4:  MOV             R4, R0
3005B6:  CBNZ            R1, loc_3005CC
3005B8:  LDR             R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x3005C0)
3005BA:  LDR             R1, [R4]
3005BC:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
3005BE:  LDR             R0, [R0]; CConversations::m_aNodes ...
3005C0:  ADD.W           R1, R1, R1,LSL#1
3005C4:  ADD.W           R0, R0, R1,LSL#3; this
3005C8:  BLX             j__ZN17CConversationNode16ClearRecursivelyEv; CConversationNode::ClearRecursively(void)
3005CC:  MOV.W           R0, #0xFFFFFFFF
3005D0:  MOVS            R1, #0
3005D2:  STRD.W          R0, R0, [R4]
3005D6:  STRD.W          R1, R1, [R4,#8]
3005DA:  STR             R1, [R4,#0x10]
3005DC:  POP             {R4,R6,R7,PC}
