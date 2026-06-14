; =========================================================
; Game Engine Function: _ZN12CMenuManager19ScrollRadioStationsEa
; Address            : 0x432998 - 0x4329E0
; =========================================================

432998:  PUSH            {R4,R5,R7,LR}
43299A:  ADD             R7, SP, #8
43299C:  MOV             R4, R0
43299E:  MOV             R5, R1
4329A0:  LDRB.W          R0, [R4,#0x35]
4329A4:  CMP             R0, #0
4329A6:  IT EQ
4329A8:  POPEQ           {R4,R5,R7,PC}
4329AA:  LDR             R0, =(AudioEngine_ptr - 0x4329B0)
4329AC:  ADD             R0, PC; AudioEngine_ptr
4329AE:  LDR             R0, [R0]; AudioEngine ; this
4329B0:  BLX             j__ZN12CAudioEngine21IsCutsceneTrackActiveEv; CAudioEngine::IsCutsceneTrackActive(void)
4329B4:  CBZ             R0, loc_4329B8
4329B6:  POP             {R4,R5,R7,PC}
4329B8:  LDRB.W          R0, [R4,#0x35]
4329BC:  UXTAB.W         R0, R0, R5
4329C0:  LSLS            R1, R0, #0x18
4329C2:  CMP.W           R1, #0x1000000
4329C6:  IT LT
4329C8:  MOVLT           R0, #0xD
4329CA:  SXTB            R1, R0
4329CC:  CMP             R1, #0xD
4329CE:  IT GT
4329D0:  MOVGT           R0, #1
4329D2:  STRB.W          R0, [R4,#0x35]
4329D6:  MOV             R0, R4; this
4329D8:  POP.W           {R4,R5,R7,LR}
4329DC:  B.W             j_j__ZN12CMenuManager12SaveSettingsEv; j_CMenuManager::SaveSettings(void)
