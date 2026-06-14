; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity22RequestPedConversationEP4CPedS1_
; Address            : 0x39BE8C - 0x39C0B6
; =========================================================

39BE8C:  PUSH            {R4-R7,LR}
39BE8E:  ADD             R7, SP, #0xC
39BE90:  PUSH.W          {R8-R10}
39BE94:  MOV             R5, R0
39BE96:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr - 0x39BE9E)
39BE98:  MOV             R4, R1
39BE9A:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity20s_bAllSpeechDisabledE_ptr
39BE9C:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled ...
39BE9E:  LDRB            R0, [R0]; CAEPedSpeechAudioEntity::s_bAllSpeechDisabled
39BEA0:  CMP             R0, #0
39BEA2:  ITT EQ
39BEA4:  LDRBEQ.W        R0, [R5,#0x332]
39BEA8:  CMPEQ           R0, #0
39BEAA:  BEQ             loc_39BEB4
39BEAC:  MOVS            R0, #0
39BEAE:  POP.W           {R8-R10}
39BEB2:  POP             {R4-R7,PC}
39BEB4:  LDRB.W          R0, [R5,#0x331]
39BEB8:  CMP             R0, #0
39BEBA:  ITT EQ
39BEBC:  LDRBEQ.W        R0, [R4,#0x332]
39BEC0:  CMPEQ           R0, #0
39BEC2:  BNE             loc_39BEAC
39BEC4:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39BECC)
39BEC6:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr - 0x39BED2)
39BEC8:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39BECA:  LDRB.W          R2, [R4,#0x331]
39BECE:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity30s_bPlayerConversationHappeningE_ptr
39BED0:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39BED2:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening ...
39BED4:  LDRB            R0, [R0]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39BED6:  LDRB            R1, [R1]; CAEPedSpeechAudioEntity::s_bPlayerConversationHappening
39BED8:  ORRS            R0, R2
39BEDA:  ORRS            R0, R1
39BEDC:  LSLS            R0, R0, #0x18
39BEDE:  BNE             loc_39BEAC
39BEE0:  LDRH.W          R0, [R4,#0x32C]
39BEE4:  LDRH.W          R1, [R5,#0x32C]
39BEE8:  CMP             R1, R0
39BEEA:  BEQ             loc_39BEAC
39BEEC:  MOV             R0, R5; this
39BEEE:  BLX             j__ZN4CPed22CanPedHoldConversationEv; CPed::CanPedHoldConversation(void)
39BEF2:  CMP             R0, #0
39BEF4:  BEQ             loc_39BEAC
39BEF6:  MOV             R0, R4; this
39BEF8:  BLX             j__ZN4CPed22CanPedHoldConversationEv; CPed::CanPedHoldConversation(void)
39BEFC:  CMP             R0, #0
39BEFE:  BEQ             loc_39BEAC
39BF00:  MOV             R0, R5; this
39BF02:  BLX             j__ZN4CPed13GetPedTalkingEv; CPed::GetPedTalking(void)
39BF06:  CMP             R0, #0
39BF08:  BNE             loc_39BEAC
39BF0A:  MOV             R0, R4; this
39BF0C:  BLX             j__ZN4CPed13GetPedTalkingEv; CPed::GetPedTalking(void)
39BF10:  CMP             R0, #0
39BF12:  BNE             loc_39BEAC
39BF14:  LDR             R0, =(TheCamera_ptr - 0x39BF1C)
39BF16:  LDR             R1, [R5,#0x14]
39BF18:  ADD             R0, PC; TheCamera_ptr
39BF1A:  ADD.W           R2, R1, #0x30 ; '0'
39BF1E:  CMP             R1, #0
39BF20:  LDR             R0, [R0]; TheCamera
39BF22:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
39BF24:  IT EQ
39BF26:  ADDEQ           R2, R5, #4
39BF28:  VLDR            S6, [R2]
39BF2C:  ADD.W           R1, R3, #0x30 ; '0'
39BF30:  CMP             R3, #0
39BF32:  VLDR            S8, [R2,#4]
39BF36:  VLDR            S10, [R2,#8]
39BF3A:  IT EQ
39BF3C:  ADDEQ           R1, R0, #4
39BF3E:  VLDR            S0, [R1]
39BF42:  VLDR            S4, [R1,#4]
39BF46:  VSUB.F32        S6, S6, S0
39BF4A:  VLDR            S2, [R1,#8]
39BF4E:  VSUB.F32        S8, S8, S4
39BF52:  VSUB.F32        S10, S10, S2
39BF56:  VMUL.F32        S6, S6, S6
39BF5A:  VMUL.F32        S8, S8, S8
39BF5E:  VMUL.F32        S10, S10, S10
39BF62:  VADD.F32        S6, S6, S8
39BF66:  VADD.F32        S8, S6, S10
39BF6A:  VLDR            S6, =1600.0
39BF6E:  VCMPE.F32       S8, S6
39BF72:  VMRS            APSR_nzcv, FPSCR
39BF76:  BGT             loc_39BEAC
39BF78:  LDR             R0, [R4,#0x14]
39BF7A:  ADD.W           R1, R0, #0x30 ; '0'
39BF7E:  CMP             R0, #0
39BF80:  IT EQ
39BF82:  ADDEQ           R1, R4, #4
39BF84:  VLDR            S8, [R1]
39BF88:  VLDR            S10, [R1,#4]
39BF8C:  VSUB.F32        S0, S8, S0
39BF90:  VLDR            S12, [R1,#8]
39BF94:  VSUB.F32        S4, S10, S4
39BF98:  VSUB.F32        S2, S12, S2
39BF9C:  VMUL.F32        S0, S0, S0
39BFA0:  VMUL.F32        S4, S4, S4
39BFA4:  VMUL.F32        S2, S2, S2
39BFA8:  VADD.F32        S0, S0, S4
39BFAC:  VADD.F32        S0, S0, S2
39BFB0:  VCMPE.F32       S0, S6
39BFB4:  VMRS            APSR_nzcv, FPSCR
39BFB8:  BGT.W           loc_39BEAC
39BFBC:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BFC6)
39BFBE:  MOV.W           LR, #(stderr+1)
39BFC2:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BFC4:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BFC6:  LDRH            R2, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots
39BFC8:  LDRH            R3, [R0,#(word_944E0C - 0x944DF0)]
39BFCA:  CMP             R2, #0
39BFCC:  MOV             R0, R2
39BFCE:  IT NE
39BFD0:  MOVNE.W         R0, #0xFFFFFFFF
39BFD4:  CMP             R3, #0
39BFD6:  IT EQ
39BFD8:  MOVEQ           R0, LR
39BFDA:  ORRS            R2, R3
39BFDC:  BEQ             loc_39BFF0
39BFDE:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39BFE8)
39BFE0:  MOVW            R12, #0xFFFF
39BFE4:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39BFE6:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39BFE8:  LDRH            R2, [R2,#(word_944E28 - 0x944DF0)]
39BFEA:  CBZ             R2, loc_39BFF8
39BFEC:  MOV             R8, R0
39BFEE:  B               loc_39C002
39BFF0:  MOVS            R0, #0
39BFF2:  MOV.W           R8, #1
39BFF6:  B               loc_39C044
39BFF8:  UXTH            R3, R0
39BFFA:  MOV.W           R8, #2
39BFFE:  CMP             R3, R12
39C000:  BNE             loc_39C044
39C002:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C008)
39C004:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C006:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C008:  LDRH.W          R0, [R0,#(word_944E44 - 0x944DF0)]
39C00C:  CBZ             R0, loc_39C012
39C00E:  MOV             R3, R8
39C010:  B               loc_39C024
39C012:  UXTH.W          R0, R8
39C016:  CMP             R0, R12
39C018:  MOV             R0, R8
39C01A:  MOV.W           R3, #3
39C01E:  MOV.W           R8, #3
39C022:  BNE             loc_39C044
39C024:  UXTH            R2, R3
39C026:  MOVS            R0, #0
39C028:  CMP             R2, R12
39C02A:  BEQ.W           loc_39BEAE
39C02E:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C034)
39C030:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C032:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C034:  LDRH.W          R2, [R2,#(word_944E60 - 0x944DF0)]
39C038:  CMP             R2, #0
39C03A:  BNE.W           loc_39BEAE
39C03E:  MOV.W           R8, #4
39C042:  MOV             R0, R3; this
39C044:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C054)
39C046:  SXTH            R1, R0
39C048:  RSB.W           R1, R1, R1,LSL#3
39C04C:  MOV.W           R9, #4
39C050:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C052:  LDR.W           R12, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr - 0x39C05C)
39C056:  LDR             R3, [R3]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C058:  ADD             R12, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr
39C05A:  ADD.W           R6, R3, R1,LSL#2
39C05E:  LDR.W           R12, [R12]; CAEPedSpeechAudioEntity::s_pConversationPed2 ...
39C062:  STRB.W          LR, [R6,#0x19]
39C066:  UXTH.W          R6, R8
39C06A:  RSB.W           R6, R6, R6,LSL#3
39C06E:  STR.W           R4, [R12]; CAEPedSpeechAudioEntity::s_pConversationPed2
39C072:  ADD.W           R2, R3, R6,LSL#2
39C076:  STRB.W          LR, [R2,#0x19]
39C07A:  STRH.W          R9, [R3,R1,LSL#2]
39C07E:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr - 0x39C086)
39C080:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39C08C)
39C082:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr
39C084:  STRH.W          R9, [R3,R6,LSL#2]
39C088:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39C08A:  LDR.W           R10, [R1]; CAEPedSpeechAudioEntity::s_pConversationPed1 ...
39C08E:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39C096)
39C090:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr - 0x39C09A)
39C092:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39C094:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39C096:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr
39C098:  STR.W           R5, [R10]; CAEPedSpeechAudioEntity::s_pConversationPed1
39C09C:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39C09E:  LDR             R3, [R3]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2 ...
39C0A0:  STRB.W          LR, [R2]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39C0A4:  STRH            R0, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39C0A6:  STRH.W          R8, [R3]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2
39C0AA:  BLX             j__ZN23CAEPedSpeechAudioEntity17SetUpConversationEv; CAEPedSpeechAudioEntity::SetUpConversation(void)
39C0AE:  MOVS            R0, #1
39C0B0:  POP.W           {R8-R10}
39C0B4:  POP             {R4-R7,PC}
