; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity25RequestPlayerConversationEP4CPed
; Address            : 0x39BC7C - 0x39BD7E
; =========================================================

39BC7C:  PUSH            {R4-R7,LR}
39BC7E:  ADD             R7, SP, #0xC
39BC80:  PUSH.W          {R11}
39BC84:  MOV             R4, R0
39BC86:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr - 0x39BC8C)
39BC88:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr
39BC8A:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled ...
39BC8C:  LDRB            R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled
39BC8E:  CBNZ            R0, loc_39BCA0
39BC90:  LDRB.W          R0, [R4,#0x332]
39BC94:  CMP             R0, #0
39BC96:  ITT EQ
39BC98:  LDRBEQ.W        R0, [R4,#0x331]
39BC9C:  CMPEQ           R0, #0
39BC9E:  BEQ             loc_39BCA8
39BCA0:  MOVS            R0, #0
39BCA2:  POP.W           {R11}
39BCA6:  POP             {R4-R7,PC}
39BCA8:  MOV.W           R0, #0xFFFFFFFF; int
39BCAC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
39BCB0:  CMP             R0, #0
39BCB2:  BEQ             loc_39BCA0
39BCB4:  MOV.W           R0, #0xFFFFFFFF; int
39BCB8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
39BCBC:  LDRB.W          R0, [R0,#0x331]
39BCC0:  CMP             R0, #0
39BCC2:  BNE             loc_39BCA0
39BCC4:  MOV.W           R0, #0xFFFFFFFF; int
39BCC8:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
39BCCC:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39BCD4)
39BCCE:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39BCDA)
39BCD0:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39BCD2:  LDRB.W          R0, [R0,#0x332]
39BCD6:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39BCD8:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39BCDA:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39BCDC:  LDRB            R1, [R1]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39BCDE:  LDRB            R2, [R2]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39BCE0:  ORRS            R0, R1
39BCE2:  ORRS            R0, R2
39BCE4:  LSLS            R0, R0, #0x18
39BCE6:  BNE             loc_39BCA0
39BCE8:  MOV             R0, R4; this
39BCEA:  BLX             j__ZN4CPed13GetPedTalkingEv; CPed::GetPedTalking(void)
39BCEE:  CMP             R0, #0
39BCF0:  BNE             loc_39BCA0
39BCF2:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BCF8)
39BCF4:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BCF6:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BCF8:  LDRH            R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots
39BCFA:  CBZ             R0, loc_39BD2E
39BCFC:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BD02)
39BCFE:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BD00:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BD02:  LDRH            R0, [R0,#(word_944E0C - 0x944DF0)]
39BD04:  CBZ             R0, loc_39BD32
39BD06:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BD0C)
39BD08:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BD0A:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BD0C:  LDRH            R0, [R0,#(word_944E28 - 0x944DF0)]
39BD0E:  CBZ             R0, loc_39BD36
39BD10:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BD16)
39BD12:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BD14:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BD16:  LDRH.W          R0, [R0,#(word_944E44 - 0x944DF0)]
39BD1A:  CBZ             R0, loc_39BD3A
39BD1C:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BD22)
39BD1E:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BD20:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BD22:  LDRH.W          R0, [R0,#(word_944E60 - 0x944DF0)]
39BD26:  CMP             R0, #0
39BD28:  BNE             loc_39BCA0
39BD2A:  MOVS            R6, #4
39BD2C:  B               loc_39BD3C
39BD2E:  MOVS            R6, #0
39BD30:  B               loc_39BD3C
39BD32:  MOVS            R6, #1
39BD34:  B               loc_39BD3C
39BD36:  MOVS            R6, #2
39BD38:  B               loc_39BD3C
39BD3A:  MOVS            R6, #3
39BD3C:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr - 0x39BD48)
39BD3E:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BD4A)
39BD40:  LDR.W           LR, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39BD54)
39BD44:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr
39BD46:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BD48:  LDR.W           R12, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39BD56)
39BD4C:  LDR             R3, [R0]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed ...
39BD4E:  UXTH            R0, R6
39BD50:  ADD             LR, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39BD52:  ADD             R12, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39BD54:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BD56:  RSB.W           R0, R0, R0,LSL#3
39BD5A:  LDR.W           R1, [LR]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39BD5E:  MOV.W           LR, #4
39BD62:  LDR.W           R5, [R12]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39BD66:  STRH.W          LR, [R2,R0,LSL#2]
39BD6A:  ADD.W           R2, R2, R0,LSL#2
39BD6E:  MOVS            R0, #1
39BD70:  STRB            R0, [R2,#0x1A]
39BD72:  STRB            R0, [R5]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39BD74:  STRH            R6, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39BD76:  STR             R4, [R3]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed
39BD78:  POP.W           {R11}
39BD7C:  POP             {R4-R7,PC}
