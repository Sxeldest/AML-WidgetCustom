; =========================================================
; Game Engine Function: _ZN25CPedToPlayerConversations15EndConversationEv
; Address            : 0x302D94 - 0x302E10
; =========================================================

302D94:  PUSH            {R4,R6,R7,LR}
302D96:  ADD             R7, SP, #8
302D98:  MOV.W           R0, #0xFFFFFFFF; int
302D9C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
302DA0:  MOV             R4, R0
302DA2:  LDR             R0, =(_ZN25CPedToPlayerConversations7m_StateE_ptr - 0x302DAA)
302DA4:  MOVS            R1, #0
302DA6:  ADD             R0, PC; _ZN25CPedToPlayerConversations7m_StateE_ptr
302DA8:  LDR             R0, [R0]; this
302DAA:  STR             R1, [R0]; CPedToPlayerConversations::m_State
302DAC:  BLX             j__ZN23CAEPedSpeechAudioEntity25ReleasePlayerConversationEv; CAEPedSpeechAudioEntity::ReleasePlayerConversation(void)
302DB0:  LDR             R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302DB6)
302DB2:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302DB4:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302DB6:  LDR             R0, [R0]; this
302DB8:  CMP             R0, #0
302DBA:  IT NE
302DBC:  BLXNE           j__ZN4CPed15EnablePedSpeechEv; CPed::EnablePedSpeech(void)
302DC0:  LDR             R0, =(g_ikChainMan_ptr - 0x302DC8)
302DC2:  MOV             R1, R4; CPed *
302DC4:  ADD             R0, PC; g_ikChainMan_ptr
302DC6:  LDR             R0, [R0]; g_ikChainMan ; this
302DC8:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
302DCC:  CBZ             R0, loc_302DDC
302DCE:  LDR             R0, =(g_ikChainMan_ptr - 0x302DD8)
302DD0:  MOV             R1, R4; CPed *
302DD2:  MOVS            R2, #0xFA; int
302DD4:  ADD             R0, PC; g_ikChainMan_ptr
302DD6:  LDR             R0, [R0]; g_ikChainMan ; this
302DD8:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
302DDC:  LDR             R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302DE2)
302DDE:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302DE0:  LDR             R0, [R0]; CPedToPlayerConversations::m_pPed ...
302DE2:  LDR             R1, [R0]; CPed *
302DE4:  CMP             R1, #0
302DE6:  IT EQ
302DE8:  POPEQ           {R4,R6,R7,PC}
302DEA:  LDR             R0, =(g_ikChainMan_ptr - 0x302DF0)
302DEC:  ADD             R0, PC; g_ikChainMan_ptr
302DEE:  LDR             R0, [R0]; g_ikChainMan ; this
302DF0:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
302DF4:  CBZ             R0, locret_302E0E
302DF6:  LDR             R0, =(_ZN25CPedToPlayerConversations6m_pPedE_ptr - 0x302DFE)
302DF8:  LDR             R1, =(g_ikChainMan_ptr - 0x302E00)
302DFA:  ADD             R0, PC; _ZN25CPedToPlayerConversations6m_pPedE_ptr
302DFC:  ADD             R1, PC; g_ikChainMan_ptr
302DFE:  LDR             R2, [R0]; CPedToPlayerConversations::m_pPed ...
302E00:  LDR             R0, [R1]; g_ikChainMan ; this
302E02:  LDR             R1, [R2]; CPed *
302E04:  MOVS            R2, #0xFA; int
302E06:  POP.W           {R4,R6,R7,LR}
302E0A:  B.W             sub_1A0F0C
302E0E:  POP             {R4,R6,R7,PC}
