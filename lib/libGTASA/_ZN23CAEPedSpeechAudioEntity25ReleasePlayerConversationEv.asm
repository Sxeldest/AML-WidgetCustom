; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity25ReleasePlayerConversationEv
; Address            : 0x39BDB0 - 0x39BE68
; =========================================================

39BDB0:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39BDB6)
39BDB2:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39BDB4:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39BDB6:  LDRB            R0, [R0]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39BDB8:  CMP             R0, #0
39BDBA:  IT EQ
39BDBC:  BXEQ            LR
39BDBE:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39BDC4)
39BDC0:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39BDC2:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39BDC4:  LDRSH.W         R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39BDC8:  CMP.W           R0, #0xFFFFFFFF
39BDCC:  BLE             loc_39BE28
39BDCE:  PUSH            {R4,R6,R7,LR}
39BDD0:  ADD             R7, SP, #0x10+var_8
39BDD2:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BDDC)
39BDD4:  MOVW            LR, #0xFFFF
39BDD8:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BDDA:  LDR             R2, [R1]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BDDC:  RSB.W           R1, R0, R0,LSL#3
39BDE0:  LDRSH.W         R0, [R2,R1,LSL#2]
39BDE4:  ORR.W           R3, R0, #4
39BDE8:  CMP             R3, #4
39BDEA:  BNE             loc_39BE34
39BDEC:  LDR.W           R12, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BDFA)
39BDF0:  ADD.W           R2, R2, R1,LSL#2
39BDF4:  MOVS            R3, #0
39BDF6:  ADD             R12, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BDF8:  STRH            R3, [R2]
39BDFA:  LDR.W           R2, [R12]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BDFE:  ADD.W           R1, R2, R1,LSL#2
39BE02:  STRB.W          R3, [R1,#0x1A]!
39BE06:  STR.W           R3, [R1,#-0x16]
39BE0A:  STR.W           R3, [R1,#-0x12]
39BE0E:  STRH.W          LR, [R1,#-0xE]
39BE12:  STRH.W          LR, [R1,#-0xC]
39BE16:  STR.W           R3, [R1,#-0xA]
39BE1A:  STRH.W          LR, [R1,#-6]
39BE1E:  STRH.W          LR, [R1,#-4]
39BE22:  STRH.W          R3, [R1,#-2]
39BE26:  B               loc_39BE40
39BE28:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39BE30)
39BE2A:  MOVS            R1, #0
39BE2C:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39BE2E:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39BE30:  STRB            R1, [R0]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39BE32:  BX              LR
39BE34:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BE3A)
39BE36:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BE38:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BE3A:  ADD.W           R1, R2, R1,LSL#2
39BE3E:  ADDS            R1, #0x1A
39BE40:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39BE4E)
39BE42:  MOVS            R0, #0
39BE44:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr - 0x39BE50)
39BE46:  LDR.W           R12, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39BE54)
39BE4A:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39BE4C:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity24s_pPlayerConversationPedE_ptr
39BE4E:  STRB            R0, [R1]
39BE50:  ADD             R12, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39BE52:  LDR             R4, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39BE54:  LDR             R3, [R3]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed ...
39BE56:  LDR.W           R2, [R12]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39BE5A:  STRH.W          LR, [R4]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39BE5E:  STR             R0, [R3]; CAEPedSpeechAudioEntity::s_pPlayerConversationPed
39BE60:  STRB            R0, [R2]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39BE62:  POP.W           {R4,R6,R7,LR}
39BE66:  BX              LR
