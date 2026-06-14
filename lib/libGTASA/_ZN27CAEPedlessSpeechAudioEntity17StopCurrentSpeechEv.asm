; =========================================================
; Game Engine Function: _ZN27CAEPedlessSpeechAudioEntity17StopCurrentSpeechEv
; Address            : 0x39DBD0 - 0x39DC48
; =========================================================

39DBD0:  PUSH            {R4,R5,R7,LR}
39DBD2:  ADD             R7, SP, #8
39DBD4:  MOV             R4, R0
39DBD6:  LDRB.W          R0, [R4,#0x90]
39DBDA:  CMP             R0, #0
39DBDC:  ITT NE
39DBDE:  LDRBNE.W        R0, [R4,#0x98]
39DBE2:  CMPNE           R0, #0
39DBE4:  BEQ             locret_39DC46
39DBE6:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DBF4)
39DBE8:  MOVW            R5, #0xFFFF
39DBEC:  LDRSH.W         R2, [R4,#0xA8]
39DBF0:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DBF2:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DBF4:  UXTH            R1, R2
39DBF6:  RSB.W           R2, R2, R2,LSL#3
39DBFA:  LDRH.W          R0, [R0,R2,LSL#2]
39DBFE:  CMP             R0, #5
39DC00:  BNE             loc_39DC16
39DC02:  LDR.W           R0, [R4,#0xA0]; this
39DC06:  CBZ             R0, loc_39DC10
39DC08:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
39DC0C:  LDRH.W          R1, [R4,#0xA8]
39DC10:  MOVS            R0, #0
39DC12:  STR.W           R0, [R4,#0xA0]
39DC16:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DC24)
39DC18:  SXTH            R1, R1
39DC1A:  RSB.W           R1, R1, R1,LSL#3
39DC1E:  MOVS            R2, #0
39DC20:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DC22:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DC24:  STRH.W          R2, [R0,R1,LSL#2]
39DC28:  ADD.W           R0, R0, R1,LSL#2
39DC2C:  STRD.W          R2, R2, [R0,#4]
39DC30:  STRH            R5, [R0,#0xC]
39DC32:  STRH            R5, [R0,#0xE]
39DC34:  STR             R2, [R0,#0x10]
39DC36:  STRH            R5, [R0,#0x14]
39DC38:  STRH            R5, [R0,#0x16]
39DC3A:  STRB            R2, [R0,#0x1A]
39DC3C:  STRH            R2, [R0,#0x18]
39DC3E:  STRH.W          R5, [R4,#0xA8]
39DC42:  STRB.W          R2, [R4,#0x98]
39DC46:  POP             {R4,R5,R7,PC}
