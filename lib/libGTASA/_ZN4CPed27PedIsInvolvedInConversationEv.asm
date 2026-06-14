; =========================================================
; Game Engine Function: _ZN4CPed27PedIsInvolvedInConversationEv
; Address            : 0x302E30 - 0x302E44
; =========================================================

302E30:  LDR             R1, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302E36)
302E32:  ADD             R1, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302E34:  LDR             R1, [R1]; CPedToPlayerConversations::m_pPed ...
302E36:  LDR             R2, [R1]; CPedToPlayerConversations::m_pPed
302E38:  MOVS            R1, #0
302E3A:  CMP             R2, R0
302E3C:  IT EQ
302E3E:  MOVEQ           R1, #1
302E40:  MOV             R0, R1
302E42:  BX              LR
