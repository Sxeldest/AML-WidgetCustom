; =========================================================
; Game Engine Function: _ZN25CPedToPlayerConversations5ClearEv
; Address            : 0x301AB4 - 0x301AE8
; =========================================================

301AB4:  LDR             R0, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x301ABA)
301AB6:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
301AB8:  LDR             R0, [R0]; CPedToPlayerConversations::m_State ...
301ABA:  LDR             R0, [R0]; this
301ABC:  CBZ             R0, loc_301AD4
301ABE:  PUSH            {R7,LR}
301AC0:  MOV             R7, SP
301AC2:  BLX             j__ZN23CAEPedSpeechAudioEntity25ReleasePlayerConversationEv; CAEPedSpeechAudioEntity::ReleasePlayerConversation(void)
301AC6:  LDR             R0, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x301ACE)
301AC8:  MOVS            R1, #0
301ACA:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
301ACC:  LDR             R0, [R0]; CPedToPlayerConversations::m_State ...
301ACE:  STR             R1, [R0]; CPedToPlayerConversations::m_State
301AD0:  POP.W           {R7,LR}
301AD4:  LDR             R0, =(_ZN25CPedToPlayerConversations30m_TimeOfLastPlayerConversationE_ptr - 0x301ADE)
301AD6:  MOVS            R2, #0
301AD8:  LDR             R1, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x301AE0)
301ADA:  ADD             R0, PC; _ZN25CPedToPlayerConversations30m_TimeOfLastPlayerConversationE_ptr
301ADC:  ADD             R1, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
301ADE:  LDR             R0, [R0]; CPedToPlayerConversations::m_TimeOfLastPlayerConversation ...
301AE0:  LDR             R1, [R1]; CPedToPlayerConversations::m_pPed ...
301AE2:  STR             R2, [R0]; CPedToPlayerConversations::m_TimeOfLastPlayerConversation
301AE4:  STR             R2, [R1]; CPedToPlayerConversations::m_pPed
301AE6:  BX              LR
