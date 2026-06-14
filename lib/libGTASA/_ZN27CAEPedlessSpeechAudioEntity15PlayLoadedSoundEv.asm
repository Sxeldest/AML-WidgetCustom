; =========================================================
; Game Engine Function: _ZN27CAEPedlessSpeechAudioEntity15PlayLoadedSoundEv
; Address            : 0x39DC50 - 0x39DE2E
; =========================================================

39DC50:  PUSH            {R4-R7,LR}
39DC52:  ADD             R7, SP, #0xC
39DC54:  PUSH.W          {R8-R10}
39DC58:  SUB             SP, SP, #0x30
39DC5A:  MOV             R4, R0
39DC5C:  MOVW            R8, #0xFFFF
39DC60:  LDR.W           R1, [R4,#0x114]
39DC64:  CBZ             R1, loc_39DCC4
39DC66:  LDR             R3, [R1,#0x14]
39DC68:  ADD.W           R6, R4, #0x114
39DC6C:  LDRH.W          R5, [R4,#0xA8]
39DC70:  ADD.W           R9, R4, #8
39DC74:  LDRH.W          R12, [R4,#0xA4]
39DC78:  ADD.W           R2, R3, #0x30 ; '0'
39DC7C:  LDRB.W          R0, [R4,#0x9B]
39DC80:  CMP             R3, #0
39DC82:  IT EQ
39DC84:  ADDEQ           R2, R1, #4
39DC86:  ADD.W           R1, R5, #0x14
39DC8A:  CMP             R0, #0
39DC8C:  BEQ             loc_39DD3C
39DC8E:  MOVS            R3, #0
39DC90:  MOVS            R0, #0
39DC92:  MOV.W           R2, #0x3F800000
39DC96:  MOVT            R3, #0x4040
39DC9A:  STRD.W          R0, R0, [SP,#0x48+var_28]
39DC9E:  SXTH            R1, R1
39DCA0:  STR             R0, [SP,#0x48+var_20]
39DCA2:  STRD.W          R0, R2, [SP,#0x48+var_48]
39DCA6:  STRD.W          R0, R3, [SP,#0x48+var_40]
39DCAA:  MOV             R3, R4
39DCAC:  STRD.W          R2, R2, [SP,#0x48+var_38]
39DCB0:  STRD.W          R2, R0, [SP,#0x48+var_30]
39DCB4:  SXTH.W          R2, R12
39DCB8:  MOV             R0, R9
39DCBA:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39DCBE:  MOVW            R0, #0x387
39DCC2:  B               loc_39DD7E
39DCC4:  LDRB.W          R0, [R4,#0x90]
39DCC8:  CMP             R0, #0
39DCCA:  ITT NE
39DCCC:  LDRBNE.W        R0, [R4,#0x98]
39DCD0:  CMPNE           R0, #0
39DCD2:  BEQ.W           loc_39DE26
39DCD6:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DCE0)
39DCD8:  LDRSH.W         R1, [R4,#0xA8]
39DCDC:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DCDE:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DCE0:  RSB.W           R2, R1, R1,LSL#3
39DCE4:  UXTH            R1, R1
39DCE6:  LDRH.W          R0, [R0,R2,LSL#2]
39DCEA:  CMP             R0, #5
39DCEC:  BNE             loc_39DD02
39DCEE:  LDR.W           R0, [R4,#0xA0]; this
39DCF2:  CBZ             R0, loc_39DCFC
39DCF4:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
39DCF8:  LDRH.W          R1, [R4,#0xA8]
39DCFC:  MOVS            R0, #0
39DCFE:  STR.W           R0, [R4,#0xA0]
39DD02:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DD10)
39DD04:  SXTH            R1, R1
39DD06:  RSB.W           R1, R1, R1,LSL#3
39DD0A:  MOVS            R2, #0
39DD0C:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DD0E:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DD10:  STRH.W          R2, [R0,R1,LSL#2]
39DD14:  ADD.W           R0, R0, R1,LSL#2
39DD18:  STRD.W          R2, R2, [R0,#4]
39DD1C:  STRH.W          R8, [R0,#0xC]
39DD20:  STRH.W          R8, [R0,#0xE]
39DD24:  STR             R2, [R0,#0x10]
39DD26:  STRH.W          R8, [R0,#0x14]
39DD2A:  STRH.W          R8, [R0,#0x16]
39DD2E:  STRB            R2, [R0,#0x1A]
39DD30:  STRH            R2, [R0,#0x18]
39DD32:  STRH.W          R8, [R4,#0xA8]
39DD36:  STRB.W          R2, [R4,#0x98]
39DD3A:  B               loc_39DE26
39DD3C:  MOVW            R10, #0
39DD40:  LDRD.W          LR, R3, [R2]
39DD44:  LDR             R2, [R2,#8]
39DD46:  MOVS            R5, #0
39DD48:  MOV.W           R0, #0x3F800000
39DD4C:  MOVT            R10, #0x4140
39DD50:  STRD.W          R5, R5, [SP,#0x48+var_28]
39DD54:  SXTH            R1, R1
39DD56:  STR             R5, [SP,#0x48+var_20]
39DD58:  STRD.W          LR, R3, [SP,#0x48+var_48]
39DD5C:  MOV             R3, R4
39DD5E:  STRD.W          R2, R10, [SP,#0x48+var_40]
39DD62:  SXTH.W          R2, R12
39DD66:  STRD.W          R0, R0, [SP,#0x48+var_38]
39DD6A:  STRD.W          R0, R5, [SP,#0x48+var_30]
39DD6E:  MOV             R0, R9
39DD70:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
39DD74:  MOVS            R0, #0x40600000
39DD7A:  STR             R0, [R4,#0x20]
39DD7C:  MOVS            R0, #0x86
39DD7E:  LDRB.W          R1, [R4,#0x9C]
39DD82:  STRH.W          R0, [R4,#0x5E]
39DD86:  CMP             R1, #0
39DD88:  ITTT NE
39DD8A:  MOVNE           R0, #0
39DD8C:  MOVTNE          R0, #0x4040
39DD90:  STRNE           R0, [R4,#0x1C]
39DD92:  LDR             R1, [R6]; CEntity *
39DD94:  CBZ             R1, loc_39DDA8
39DD96:  MOV             R0, R9; this
39DD98:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
39DD9C:  LDR             R0, [R6]; this
39DD9E:  MOV             R1, R6; CEntity **
39DDA0:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
39DDA4:  MOVS            R0, #0
39DDA6:  STR             R0, [R6]
39DDA8:  LDR             R0, =(AESoundManager_ptr - 0x39DDB0)
39DDAA:  MOV             R1, R9; CAESound *
39DDAC:  ADD             R0, PC; AESoundManager_ptr
39DDAE:  LDR             R0, [R0]; AESoundManager ; this
39DDB0:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
39DDB4:  LDRSH.W         R1, [R4,#0xA8]
39DDB8:  CMP             R0, #0
39DDBA:  STR.W           R0, [R4,#0xA0]
39DDBE:  BEQ             loc_39DDE0
39DDC0:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DDCA)
39DDC2:  RSB.W           R1, R1, R1,LSL#3
39DDC6:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DDC8:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DDCA:  ADD.W           R1, R2, R1,LSL#2
39DDCE:  STR             R0, [R1,#8]
39DDD0:  MOVS            R1, #5
39DDD2:  LDRSH.W         R0, [R4,#0xA8]
39DDD6:  RSB.W           R0, R0, R0,LSL#3
39DDDA:  STRH.W          R1, [R2,R0,LSL#2]
39DDDE:  B               loc_39DE26
39DDE0:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DDEA)
39DDE2:  RSB.W           R1, R1, R1,LSL#3
39DDE6:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DDE8:  LDR             R2, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DDEA:  MOVS            R0, #0
39DDEC:  STRH.W          R0, [R2,R1,LSL#2]
39DDF0:  ADD.W           R1, R2, R1,LSL#2
39DDF4:  STRD.W          R0, R0, [R1,#4]
39DDF8:  STRH.W          R8, [R1,#0xC]
39DDFC:  STRH.W          R8, [R1,#0xE]
39DE00:  STR             R0, [R1,#0x10]
39DE02:  STRH.W          R8, [R1,#0x14]
39DE06:  STRH.W          R8, [R1,#0x16]
39DE0A:  STRB            R0, [R1,#0x1A]
39DE0C:  STRH            R0, [R1,#0x18]
39DE0E:  LDRH.W          R1, [R4,#0x92]
39DE12:  STRB.W          R0, [R4,#0x98]
39DE16:  CMP             R1, #2
39DE18:  BNE             loc_39DE22
39DE1A:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity18s_bAPlayerSpeakingE_ptr - 0x39DE20)
39DE1C:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity18s_bAPlayerSpeakingE_ptr
39DE1E:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_bAPlayerSpeaking ...
39DE20:  STRB            R0, [R1]; CAEPedSpeechAudioEntity::s_bAPlayerSpeaking
39DE22:  STRH.W          R8, [R4,#0xA8]
39DE26:  ADD             SP, SP, #0x30 ; '0'
39DE28:  POP.W           {R8-R10}
39DE2C:  POP             {R4-R7,PC}
