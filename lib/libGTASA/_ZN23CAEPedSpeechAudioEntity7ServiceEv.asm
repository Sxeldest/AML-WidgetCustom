; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity7ServiceEv
; Address            : 0x39B9B4 - 0x39BA8C
; =========================================================

39B9B4:  PUSH            {R4-R7,LR}
39B9B6:  ADD             R7, SP, #0xC
39B9B8:  PUSH.W          {R8-R11}
39B9BC:  SUB             SP, SP, #0x14
39B9BE:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B9CC)
39B9C0:  MOVS            R6, #0x14
39B9C2:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B9D2)
39B9C4:  MOV.W           R9, #0
39B9C8:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B9CA:  MOV.W           R10, #0
39B9CE:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B9D0:  LDR             R5, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B9D2:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B9DC)
39B9D4:  LDR.W           R8, [R1]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B9D8:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B9DA:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B9DC:  STR             R0, [SP,#0x30+var_20]
39B9DE:  LDR             R0, =(AEAudioHardware_ptr - 0x39B9E4)
39B9E0:  ADD             R0, PC; AEAudioHardware_ptr
39B9E2:  LDR             R0, [R0]; AEAudioHardware
39B9E4:  STR             R0, [SP,#0x30+var_24]
39B9E6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x39B9EC)
39B9E8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
39B9EA:  LDR             R4, [R0]; CTimer::m_snTimeInMilliseconds ...
39B9EC:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B9F2)
39B9EE:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B9F0:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B9F2:  STR             R0, [SP,#0x30+var_2C]
39B9F4:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39B9FA)
39B9F6:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39B9F8:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39B9FA:  STR             R0, [SP,#0x30+var_28]
39B9FC:  LDRH.W          R0, [R5,R9]
39BA00:  ADD.W           R11, R5, R9
39BA04:  CMP             R0, #1
39BA06:  BNE             loc_39BA26
39BA08:  LDR             R0, [SP,#0x30+var_20]
39BA0A:  SXTH            R3, R6; __int16
39BA0C:  ADD             R0, R9
39BA0E:  LDRH            R2, [R0,#0xC]; unsigned __int16
39BA10:  LDRH            R1, [R0,#0xE]; unsigned __int16
39BA12:  LDR             R0, [SP,#0x30+var_24]; this
39BA14:  BLX             j__ZN16CAEAudioHardware13IsSoundLoadedEtts; CAEAudioHardware::IsSoundLoaded(ushort,ushort,short)
39BA18:  CBZ             R0, loc_39BA22
39BA1A:  MOVS            R0, #2
39BA1C:  STRH.W          R0, [R11]
39BA20:  B               loc_39BA2A
39BA22:  LDRH.W          R0, [R11]
39BA26:  CMP             R0, #2
39BA28:  BNE             loc_39BA48
39BA2A:  ADD.W           R1, R8, R9
39BA2E:  LDR             R0, [R4]; CTimer::m_snTimeInMilliseconds
39BA30:  LDR             R1, [R1,#0x10]
39BA32:  CMP             R1, R0
39BA34:  BHI             loc_39BA66
39BA36:  LDR             R0, [SP,#0x30+var_2C]
39BA38:  ADD             R0, R9
39BA3A:  LDR             R0, [R0,#4]
39BA3C:  CBZ             R0, loc_39BA60
39BA3E:  LDR             R1, [R0]
39BA40:  LDR             R1, [R1,#0xC]
39BA42:  BLX             R1
39BA44:  LDRH.W          R0, [R11]
39BA48:  CMP             R0, #5
39BA4A:  IT NE
39BA4C:  CMPNE           R0, #3
39BA4E:  BNE             loc_39BA66
39BA50:  LDR             R0, [SP,#0x30+var_28]
39BA52:  ADD             R0, R9
39BA54:  LDRB            R0, [R0,#0x18]
39BA56:  CMP             R0, #0
39BA58:  IT NE
39BA5A:  MOVNE.W         R10, #1
39BA5E:  B               loc_39BA66
39BA60:  MOVS            R0, #0
39BA62:  STRH.W          R0, [R11]
39BA66:  ADD.W           R9, R9, #0x1C
39BA6A:  ADDS            R6, #1
39BA6C:  CMP.W           R9, #0xA8
39BA70:  BNE             loc_39B9FC
39BA72:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity15s_bForceAudibleE_ptr - 0x39BA7E)
39BA74:  UXTB.W          R1, R10
39BA78:  CMP             R1, #0
39BA7A:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity15s_bForceAudibleE_ptr
39BA7C:  IT NE
39BA7E:  MOVNE           R1, #1
39BA80:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bForceAudible ...
39BA82:  STRB            R1, [R0]; CAEPedSpeechAudioEntity::s_bForceAudible
39BA84:  ADD             SP, SP, #0x14
39BA86:  POP.W           {R8-R11}
39BA8A:  POP             {R4-R7,PC}
