; =========================================================
; Game Engine Function: _ZN27CAEPedlessSpeechAudioEntity16UpdateParametersEP8CAESounds
; Address            : 0x39D9E8 - 0x39DA92
; =========================================================

39D9E8:  PUSH            {R4,R6,R7,LR}
39D9EA:  ADD             R7, SP, #8
39D9EC:  SUB             SP, SP, #0x48
39D9EE:  MOVS            R3, #0
39D9F0:  ADDS            R2, #1
39D9F2:  STRD.W          R3, R3, [SP,#0x50+var_10]
39D9F6:  BNE             loc_39DA42
39D9F8:  LDR.W           R12, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DA08)
39D9FC:  MOVW            R4, #0xFFFF
39DA00:  LDRSH.W         LR, [R0,#0xA8]
39DA04:  ADD             R12, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DA06:  STRB.W          R3, [R0,#0x98]
39DA0A:  LDR.W           R2, [R12]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DA0E:  RSB.W           R1, LR, LR,LSL#3
39DA12:  STRH.W          R3, [R2,R1,LSL#2]
39DA16:  ADD.W           R1, R2, R1,LSL#2
39DA1A:  STRD.W          R3, R3, [R1,#4]
39DA1E:  STRH            R4, [R1,#0xC]
39DA20:  STRH            R4, [R1,#0xE]
39DA22:  STR             R3, [R1,#0x10]
39DA24:  STRH            R4, [R1,#0x14]
39DA26:  STRH            R4, [R1,#0x16]
39DA28:  STRB            R3, [R1,#0x1A]
39DA2A:  STRH            R3, [R1,#0x18]
39DA2C:  STRH.W          R4, [R0,#0xA4]
39DA30:  STR.W           R3, [R0,#0xA0]
39DA34:  STRH.W          R4, [R0,#0xA6]
39DA38:  STRH.W          R4, [R0,#0xA8]
39DA3C:  STRB.W          R3, [R0,#0x9C]
39DA40:  B               loc_39DA64
39DA42:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39DA4E)
39DA44:  MOVS            R4, #5
39DA46:  LDRSH.W         R3, [R0,#0xA8]
39DA4A:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39DA4C:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39DA4E:  RSB.W           R3, R3, R3,LSL#3
39DA52:  STRH.W          R4, [R2,R3,LSL#2]
39DA56:  LDRB.W          R2, [R0,#0x9B]
39DA5A:  CMP             R2, #0
39DA5C:  ITT EQ
39DA5E:  LDREQ           R2, [R1,#0xC]
39DA60:  CMPEQ           R2, #0x34 ; '4'
39DA62:  BEQ             loc_39DA6E
39DA64:  MOV             R0, SP; this
39DA66:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
39DA6A:  ADD             SP, SP, #0x48 ; 'H'
39DA6C:  POP             {R4,R6,R7,PC}
39DA6E:  LDR.W           R0, [R0,#0x114]
39DA72:  CMP             R0, #0
39DA74:  BEQ             loc_39DA64
39DA76:  LDR             R2, [R0,#0x14]
39DA78:  ADD.W           R3, R2, #0x30 ; '0'
39DA7C:  CMP             R2, #0
39DA7E:  IT EQ
39DA80:  ADDEQ           R3, R0, #4
39DA82:  MOV             R0, R1
39DA84:  LDRD.W          R12, R2, [R3]
39DA88:  LDR             R3, [R3,#8]
39DA8A:  MOV             R1, R12
39DA8C:  BLX             j__ZN8CAESound11SetPositionE7CVector; CAESound::SetPosition(CVector)
39DA90:  B               loc_39DA64
