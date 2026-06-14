; =========================================================
; Game Engine Function: _ZN14CConversations26StartSettingUpConversationEP4CPed
; Address            : 0x300DDC - 0x300E02
; =========================================================

300DDC:  PUSH            {R7,LR}
300DDE:  MOV             R7, SP
300DE0:  LDR             R1, =(_ZN14CConversations27m_pSettingUpConversationPedE_ptr - 0x300DE6)
300DE2:  ADD             R1, PC; _ZN14CConversations27m_pSettingUpConversationPedE_ptr
300DE4:  LDR             R1, [R1]; CEntity **
300DE6:  STR             R0, [R1]; CConversations::m_pSettingUpConversationPed
300DE8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
300DEC:  LDR             R0, =(_ZN14CConversations24m_bSettingUpConversationE_ptr - 0x300DF6)
300DEE:  MOVS            R2, #1
300DF0:  LDR             R1, =(_ZN14CConversations31m_SettingUpConversationNumNodesE_ptr - 0x300DF8)
300DF2:  ADD             R0, PC; _ZN14CConversations24m_bSettingUpConversationE_ptr
300DF4:  ADD             R1, PC; _ZN14CConversations31m_SettingUpConversationNumNodesE_ptr
300DF6:  LDR             R0, [R0]; CConversations::m_bSettingUpConversation ...
300DF8:  LDR             R1, [R1]; CConversations::m_SettingUpConversationNumNodes ...
300DFA:  STRB            R2, [R0]; CConversations::m_bSettingUpConversation
300DFC:  MOVS            R0, #0
300DFE:  STR             R0, [R1]; CConversations::m_SettingUpConversationNumNodes
300E00:  POP             {R7,PC}
