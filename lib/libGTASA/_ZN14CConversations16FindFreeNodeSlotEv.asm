; =========================================================
; Game Engine Function: _ZN14CConversations16FindFreeNodeSlotEv
; Address            : 0x301270 - 0x30129C
; =========================================================

301270:  LDR             R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x301276)
301272:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
301274:  LDR             R0, [R0]; CConversations::m_aNodes ...
301276:  ADDS            R1, R0, #1
301278:  MOVS            R0, #0
30127A:  B               loc_30128C
30127C:  ADDS            R2, R0, #1
30127E:  CMP             R0, #0x31 ; '1'
301280:  ADD.W           R1, R1, #0x18
301284:  MOV             R0, R2
301286:  ITT GE
301288:  MOVGE           R0, #0
30128A:  BXGE            LR
30128C:  LDRB.W          R2, [R1,#-1]; CConversations::m_aNodes
301290:  CMP             R2, #0
301292:  BNE             loc_30127C
301294:  MOVS            R2, #0x58 ; 'X'
301296:  STRH.W          R2, [R1,#-1]; CConversations::m_aNodes
30129A:  BX              LR
