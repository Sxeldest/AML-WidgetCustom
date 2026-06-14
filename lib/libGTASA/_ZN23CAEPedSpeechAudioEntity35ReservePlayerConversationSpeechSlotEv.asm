; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity35ReservePlayerConversationSpeechSlotEv
; Address            : 0x39BBE4 - 0x39BC60
; =========================================================

39BBE4:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BBEA)
39BBE6:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BBE8:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BBEA:  LDRH            R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots
39BBEC:  CBZ             R0, loc_39BC24
39BBEE:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BBF4)
39BBF0:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BBF2:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BBF4:  LDRH            R0, [R0,#(word_944E0C - 0x944DF0)]
39BBF6:  CBZ             R0, loc_39BC28
39BBF8:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BBFE)
39BBFA:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BBFC:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BBFE:  LDRH            R0, [R0,#(word_944E28 - 0x944DF0)]
39BC00:  CBZ             R0, loc_39BC2C
39BC02:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BC08)
39BC04:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BC06:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BC08:  LDRH.W          R0, [R0,#(word_944E44 - 0x944DF0)]
39BC0C:  CBZ             R0, loc_39BC30
39BC0E:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BC14)
39BC10:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BC12:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BC14:  LDRH.W          R0, [R0,#(word_944E60 - 0x944DF0)]
39BC18:  CMP             R0, #0
39BC1A:  ITT NE
39BC1C:  MOVNE           R0, #0
39BC1E:  BXNE            LR
39BC20:  MOVS            R1, #4
39BC22:  B               loc_39BC32
39BC24:  MOVS            R1, #0
39BC26:  B               loc_39BC32
39BC28:  MOVS            R1, #1
39BC2A:  B               loc_39BC32
39BC2C:  MOVS            R1, #2
39BC2E:  B               loc_39BC32
39BC30:  MOVS            R1, #3
39BC32:  PUSH            {R7,LR}
39BC34:  MOV             R7, SP
39BC36:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BC46)
39BC38:  UXTH            R3, R1
39BC3A:  LDR.W           R12, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39BC4C)
39BC3E:  RSB.W           R3, R3, R3,LSL#3
39BC42:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BC44:  MOV.W           LR, #4
39BC48:  ADD             R12, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39BC4A:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BC4C:  LDR.W           R2, [R12]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39BC50:  STRH.W          LR, [R0,R3,LSL#2]
39BC54:  ADD.W           R3, R0, R3,LSL#2
39BC58:  MOVS            R0, #1
39BC5A:  STRB            R0, [R3,#0x1A]
39BC5C:  STRH            R1, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39BC5E:  POP             {R7,PC}
