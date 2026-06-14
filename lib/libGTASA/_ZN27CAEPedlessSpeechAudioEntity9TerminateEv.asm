; =========================================================
; Game Engine Function: _ZN27CAEPedlessSpeechAudioEntity9TerminateEv
; Address            : 0x39DB00 - 0x39DBC8
; =========================================================

39DB00:  PUSH            {R4-R7,LR}
39DB02:  ADD             R7, SP, #0xC
39DB04:  PUSH.W          {R11}
39DB08:  MOV             R4, R0
39DB0A:  MOVW            R5, #0xFFFF
39DB0E:  LDRB.W          R0, [R4,#0x90]
39DB12:  CMP             R0, #0
39DB14:  ITT NE
39DB16:  LDRBNE.W        R0, [R4,#0x98]
39DB1A:  CMPNE           R0, #0
39DB1C:  BEQ             loc_39DB7A
39DB1E:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DB28)
39DB20:  LDRSH.W         R1, [R4,#0xA8]
39DB24:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DB26:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DB28:  RSB.W           R2, R1, R1,LSL#3
39DB2C:  UXTH            R1, R1
39DB2E:  LDRH.W          R0, [R0,R2,LSL#2]
39DB32:  CMP             R0, #5
39DB34:  BNE             loc_39DB4A
39DB36:  LDR.W           R0, [R4,#0xA0]; this
39DB3A:  CBZ             R0, loc_39DB44
39DB3C:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
39DB40:  LDRH.W          R1, [R4,#0xA8]
39DB44:  MOVS            R0, #0
39DB46:  STR.W           R0, [R4,#0xA0]
39DB4A:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DB58)
39DB4C:  SXTH            R1, R1
39DB4E:  RSB.W           R1, R1, R1,LSL#3
39DB52:  MOVS            R2, #0
39DB54:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DB56:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DB58:  STRH.W          R2, [R0,R1,LSL#2]
39DB5C:  ADD.W           R0, R0, R1,LSL#2
39DB60:  STRD.W          R2, R2, [R0,#4]
39DB64:  STRH            R5, [R0,#0xC]
39DB66:  STRH            R5, [R0,#0xE]
39DB68:  STR             R2, [R0,#0x10]
39DB6A:  STRH            R5, [R0,#0x14]
39DB6C:  STRH            R5, [R0,#0x16]
39DB6E:  STRB            R2, [R0,#0x1A]
39DB70:  STRH            R2, [R0,#0x18]
39DB72:  STRH.W          R5, [R4,#0xA8]
39DB76:  STRB.W          R2, [R4,#0x98]
39DB7A:  MOVS            R0, #0
39DB7C:  MOVS            R6, #0
39DB7E:  MOVT            R0, #0xC2C8
39DB82:  STRB.W          R6, [R4,#0x90]
39DB86:  STR             R6, [R4,#4]
39DB88:  STRH.W          R5, [R4,#0x92]
39DB8C:  STRH.W          R5, [R4,#0x94]
39DB90:  STRB.W          R6, [R4,#0x98]
39DB94:  STRB.W          R6, [R4,#0x99]
39DB98:  STRB.W          R6, [R4,#0x9A]
39DB9C:  STR.W           R6, [R4,#0xA0]
39DBA0:  STRH.W          R5, [R4,#0xA4]
39DBA4:  STRH.W          R5, [R4,#0xA6]
39DBA8:  STRH.W          R5, [R4,#0xA8]
39DBAC:  STR.W           R0, [R4,#0xAC]
39DBB0:  LDR.W           R0, [R4,#0x114]; this
39DBB4:  CBZ             R0, loc_39DBC2
39DBB6:  ADD.W           R4, R4, #0x114
39DBBA:  MOV             R1, R4; CEntity **
39DBBC:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
39DBC0:  STR             R6, [R4]
39DBC2:  POP.W           {R11}
39DBC6:  POP             {R4-R7,PC}
