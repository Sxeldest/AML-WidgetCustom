; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity9TerminateEv
; Address            : 0x399A30 - 0x399A94
; =========================================================

399A30:  PUSH            {R4,R5,R7,LR}
399A32:  ADD             R7, SP, #8
399A34:  MOV             R4, R0
399A36:  MOVS            R5, #0
399A38:  LDR.W           R0, [R4,#0x9C]; this
399A3C:  STR.W           R5, [R4,#0x94]
399A40:  CMP             R0, #0
399A42:  STRB.W          R5, [R4,#0x7C]
399A46:  BEQ             loc_399A50
399A48:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399A4C:  STR.W           R5, [R4,#0x9C]
399A50:  LDR.W           R0, [R4,#0xA0]; this
399A54:  CBZ             R0, loc_399A60
399A56:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399A5A:  MOVS            R0, #0
399A5C:  STR.W           R0, [R4,#0xA0]
399A60:  LDR.W           R0, [R4,#0xA4]; this
399A64:  CBZ             R0, loc_399A70
399A66:  BLX             j__ZN8CAESound18StopSoundAndForgetEv; CAESound::StopSoundAndForget(void)
399A6A:  MOVS            R0, #0
399A6C:  STR.W           R0, [R4,#0xA4]
399A70:  LDR             R0, =(AESoundManager_ptr - 0x399A7A)
399A72:  MOV             R1, R4; CAEAudioEntity *
399A74:  MOVS            R2, #1; unsigned __int8
399A76:  ADD             R0, PC; AESoundManager_ptr
399A78:  LDR             R0, [R0]; AESoundManager ; this
399A7A:  BLX             j__ZN15CAESoundManager30CancelSoundsOwnedByAudioEntityEP14CAEAudioEntityh; CAESoundManager::CancelSoundsOwnedByAudioEntity(CAEAudioEntity *,uchar)
399A7E:  LDRH.W          R0, [R4,#0x130]
399A82:  CMP             R0, #0
399A84:  IT EQ
399A86:  POPEQ           {R4,R5,R7,PC}
399A88:  ADD.W           R0, R4, #0xA8; this
399A8C:  POP.W           {R4,R5,R7,LR}
399A90:  B.W             sub_197778
