; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity28CanWePlayGlobalSpeechContextEs
; Address            : 0x39AB20 - 0x39AD16
; =========================================================

39AB20:  PUSH            {R4-R7,LR}
39AB22:  ADD             R7, SP, #0xC
39AB24:  PUSH.W          {R11}
39AB28:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39AB32)
39AB2A:  MOVW            R12, #0xFFFF
39AB2E:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39AB30:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39AB32:  LDRB            R2, [R2]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39AB34:  CBZ             R2, loc_39AB88
39AB36:  SUB.W           R2, R1, #0x7D ; '}'
39AB3A:  CMP             R2, #3
39AB3C:  BCC             loc_39AB88
39AB3E:  CMP             R1, #0xD
39AB40:  IT NE
39AB42:  CMPNE           R1, #0xF
39AB44:  BEQ             loc_39AB88
39AB46:  SUB.W           R2, R1, #0x154
39AB4A:  UXTH            R2, R2
39AB4C:  CMP             R2, #0x13
39AB4E:  BCC             loc_39AB88
39AB50:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr - 0x39AB56)
39AB52:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr
39AB54:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed1 ...
39AB56:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed1
39AB58:  ADD.W           R2, R2, #0x298
39AB5C:  CMP             R2, R0
39AB5E:  BEQ             loc_39AB76
39AB60:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr - 0x39AB66)
39AB62:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr
39AB64:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed2 ...
39AB66:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPed2
39AB68:  ADD.W           R2, R2, #0x298
39AB6C:  CMP             R2, R0
39AB6E:  BNE             loc_39AB88
39AB70:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr - 0x39AB76)
39AB72:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr
39AB74:  B               loc_39AB7A
39AB76:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39AB7C)
39AB78:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39AB7A:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39AB7C:  LDRSH.W         R3, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39AB80:  UXTH            R2, R3
39AB82:  CMP             R2, R12
39AB84:  BNE.W           loc_39ACFE
39AB88:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39AB8E)
39AB8A:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39AB8C:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39AB8E:  LDRB            R2, [R2]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39AB90:  CBZ             R2, loc_39ABD2
39AB92:  SUB.W           R2, R1, #0x7D ; '}'
39AB96:  CMP             R2, #3
39AB98:  BCC             loc_39ABD2
39AB9A:  CMP             R1, #0xD
39AB9C:  IT NE
39AB9E:  CMPNE           R1, #0xF
39ABA0:  BEQ             loc_39ABD2
39ABA2:  SUB.W           R2, R1, #0x154
39ABA6:  UXTH            R2, R2
39ABA8:  CMP             R2, #0x12
39ABAA:  BLS             loc_39ABD2
39ABAC:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39ABB2)
39ABAE:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39ABB0:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39ABB2:  LDRSH.W         R3, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39ABB6:  UXTH            R2, R3
39ABB8:  CMP             R2, R12
39ABBA:  BEQ             loc_39ABD2
39ABBC:  LDR             R5, =(_ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr - 0x39ABC2)
39ABBE:  ADD             R5, PC; _ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr
39ABC0:  LDR             R5, [R5]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed ...
39ABC2:  LDR             R5, [R5]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed
39ABC4:  ADD.W           R5, R5, #0x298
39ABC8:  CMP             R5, R0
39ABCA:  BNE             loc_39ABD2
39ABCC:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39ABD2)
39ABCE:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39ABD0:  B               loc_39AD02
39ABD2:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr - 0x39ABE2)
39ABD4:  MOV             LR, #0x66666667
39ABDC:  LDR             R4, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39ABE4)
39ABDE:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr
39ABE0:  ADD             R4, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39ABE2:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_NextSpeechSlot ...
39ABE4:  LDR             R4, [R4]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39ABE6:  LDRSH.W         R2, [R2]; CAEPedSpeechAudioEntity::s_NextSpeechSlot
39ABEA:  SMMUL.W         R3, R2, LR
39ABEE:  ASRS            R5, R3, #1
39ABF0:  ADD.W           R3, R5, R3,LSR#31
39ABF4:  ADD.W           R3, R3, R3,LSL#2
39ABF8:  SUBS            R3, R2, R3
39ABFA:  RSB.W           R5, R3, R3,LSL#3
39ABFE:  LDRH.W          R4, [R4,R5,LSL#2]
39AC02:  CMP             R4, #0
39AC04:  BEQ             loc_39AC96
39AC06:  ADDS            R3, R2, #1
39AC08:  LDR             R5, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39AC12)
39AC0A:  SMMUL.W         R4, R3, LR
39AC0E:  ADD             R5, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39AC10:  LDR             R5, [R5]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39AC12:  ASRS            R6, R4, #1
39AC14:  ADD.W           R4, R6, R4,LSR#31
39AC18:  ADD.W           R4, R4, R4,LSL#2
39AC1C:  SUBS            R3, R3, R4
39AC1E:  RSB.W           R4, R3, R3,LSL#3
39AC22:  LDRH.W          R4, [R5,R4,LSL#2]
39AC26:  CBZ             R4, loc_39AC96
39AC28:  ADDS            R3, R2, #2
39AC2A:  LDR             R5, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39AC34)
39AC2C:  SMMUL.W         R4, R3, LR
39AC30:  ADD             R5, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39AC32:  LDR             R5, [R5]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39AC34:  ASRS            R6, R4, #1
39AC36:  ADD.W           R4, R6, R4,LSR#31
39AC3A:  ADD.W           R4, R4, R4,LSL#2
39AC3E:  SUBS            R3, R3, R4
39AC40:  RSB.W           R4, R3, R3,LSL#3
39AC44:  LDRH.W          R4, [R5,R4,LSL#2]
39AC48:  CBZ             R4, loc_39AC96
39AC4A:  ADDS            R3, R2, #3
39AC4C:  LDR             R5, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39AC56)
39AC4E:  SMMUL.W         R4, R3, LR
39AC52:  ADD             R5, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39AC54:  LDR             R5, [R5]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39AC56:  ASRS            R6, R4, #1
39AC58:  ADD.W           R4, R6, R4,LSR#31
39AC5C:  ADD.W           R4, R4, R4,LSL#2
39AC60:  SUBS            R3, R3, R4
39AC62:  RSB.W           R4, R3, R3,LSL#3
39AC66:  LDRH.W          R4, [R5,R4,LSL#2]
39AC6A:  CBZ             R4, loc_39AC96
39AC6C:  ADDS            R2, #4
39AC6E:  LDR             R4, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39AC78)
39AC70:  SMMUL.W         R3, R2, LR
39AC74:  ADD             R4, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39AC76:  LDR             R4, [R4]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39AC78:  ASRS            R5, R3, #1
39AC7A:  ADD.W           R3, R5, R3,LSR#31
39AC7E:  ADD.W           R3, R3, R3,LSL#2
39AC82:  SUBS            R2, R2, R3
39AC84:  RSB.W           R3, R2, R2,LSL#3
39AC88:  LDRH.W          R3, [R4,R3,LSL#2]
39AC8C:  CMP             R3, #0
39AC8E:  MOVW            R3, #0xFFFF
39AC92:  BNE             loc_39ACF6
39AC94:  MOV             R3, R2
39AC96:  ADDS            R4, R3, #1
39AC98:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39ACA4)
39AC9A:  LDR             R5, =(_ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr - 0x39ACA6)
39AC9C:  SMMUL.W         R6, R4, LR
39ACA0:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39ACA2:  ADD             R5, PC; _ZN23CAEPedSpeechAudioEntity16s_NextSpeechSlotE_ptr
39ACA4:  LDR.W           LR, [R2]; CTimer::m_snTimeInMilliseconds ...
39ACA8:  LDR             R5, [R5]; CAEPedSpeechAudioEntity::s_NextSpeechSlot ...
39ACAA:  ASRS            R2, R6, #1
39ACAC:  ADD.W           R2, R2, R6,LSR#31
39ACB0:  ADD.W           R2, R2, R2,LSL#2
39ACB4:  SUBS            R2, R4, R2
39ACB6:  STRH            R2, [R5]; CAEPedSpeechAudioEntity::s_NextSpeechSlot
39ACB8:  UBFX.W          R4, R1, #3, #0xD
39ACBC:  LDR.W           R2, [LR]; CTimer::m_snTimeInMilliseconds
39ACC0:  CMP             R4, #0x2C ; ','
39ACC2:  BLS             loc_39ACC8
39ACC4:  MOVS            R0, #0
39ACC6:  B               loc_39ACF0
39ACC8:  SUB.W           R6, R1, #0x154
39ACCC:  UXTH            R6, R6
39ACCE:  CMP             R6, #0x12
39ACD0:  BHI             loc_39ACE4
39ACD2:  MOVS            R6, #0xFEAC0000
39ACD8:  ADD.W           R1, R6, R1,LSL#16
39ACDC:  ADD.W           R0, R0, R1,ASR#14
39ACE0:  ADDS            R0, #0xB4
39ACE2:  B               loc_39ACEE
39ACE4:  LDR             R0, =(gGlobalSpeechContextNextPlayTime_ptr - 0x39ACEA)
39ACE6:  ADD             R0, PC; gGlobalSpeechContextNextPlayTime_ptr
39ACE8:  LDR             R0, [R0]; gGlobalSpeechContextNextPlayTime
39ACEA:  ADD.W           R0, R0, R1,LSL#2
39ACEE:  LDR             R0, [R0]
39ACF0:  CMP             R2, R0
39ACF2:  IT CC
39ACF4:  MOVCC           R3, R12
39ACF6:  SXTH            R0, R3
39ACF8:  POP.W           {R11}
39ACFC:  POP             {R4-R7,PC}
39ACFE:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39AD04)
39AD00:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39AD02:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39AD04:  RSB.W           R1, R3, R3,LSL#3
39AD08:  LDRH.W          R0, [R0,R1,LSL#2]
39AD0C:  CMP             R0, #4
39AD0E:  IT EQ
39AD10:  MOVEQ           R12, R2
39AD12:  MOV             R3, R12
39AD14:  B               loc_39ACF6
