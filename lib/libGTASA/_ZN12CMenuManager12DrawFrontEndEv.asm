; =========================================================
; Game Engine Function: _ZN12CMenuManager12DrawFrontEndEv
; Address            : 0x42EB9C - 0x42EC20
; =========================================================

42EB9C:  PUSH            {R4,R5,R7,LR}
42EB9E:  ADD             R7, SP, #8
42EBA0:  MOV             R4, R0
42EBA2:  BLX             j__Z21emu_IsAltRenderTargetv; emu_IsAltRenderTarget(void)
42EBA6:  CMP             R0, #0
42EBA8:  IT NE
42EBAA:  BLXNE           j__Z24emu_FlushAltRenderTargetv; emu_FlushAltRenderTarget(void)
42EBAE:  BLX             j__Z22SCCloudSaveStateUpdatev; SCCloudSaveStateUpdate(void)
42EBB2:  MOVS            R0, #0x437F0000; this
42EBB8:  BLX             j__ZN5CFont12SetAlphaFadeEf; CFont::SetAlphaFade(float)
42EBBC:  MOVW            R5, #0x1AAC
42EBC0:  BLX             j__ZN9CSprite2d12InitPerFrameEv; CSprite2d::InitPerFrame(void)
42EBC4:  BLX             j__ZN5CFont12InitPerFrameEv; CFont::InitPerFrame(void)
42EBC8:  BLX             j__Z14DefinedState2dv; DefinedState2d(void)
42EBCC:  LDR             R0, =(AudioEngine_ptr - 0x42EBD6)
42EBCE:  MOVS            R1, #1
42EBD0:  STRB            R1, [R4,R5]
42EBD2:  ADD             R0, PC; AudioEngine_ptr
42EBD4:  LDR             R0, [R0]; AudioEngine ; this
42EBD6:  BLX             j__ZN12CAudioEngine23IsRadioRetuneInProgressEv; CAudioEngine::IsRadioRetuneInProgress(void)
42EBDA:  CMP             R0, #0
42EBDC:  ITTT NE
42EBDE:  ADDNE           R0, R4, R5
42EBE0:  MOVNE           R1, #0
42EBE2:  STRBNE          R1, [R0]
42EBE4:  LDRB.W          R0, [R4,#0x121]
42EBE8:  CMP             R0, #0x2B ; '+'
42EBEA:  BNE             loc_42EBFC
42EBEC:  LDRB.W          R1, [R4,#0xAD]
42EBF0:  MOVS            R0, #0x2A ; '*'
42EBF2:  CMP             R1, #0
42EBF4:  IT NE
42EBF6:  MOVNE           R0, #0x22 ; '"'
42EBF8:  STRB.W          R0, [R4,#0x121]
42EBFC:  LDR             R1, [R4,#0x38]
42EBFE:  CBNZ            R1, loc_42EC18
42EC00:  LDR             R1, =(aScreens_ptr - 0x42EC0A)
42EC02:  SXTB            R0, R0
42EC04:  MOVS            R2, #0xE2
42EC06:  ADD             R1, PC; aScreens_ptr
42EC08:  LDR             R1, [R1]; "FEP_STA" ...
42EC0A:  SMLABB.W        R0, R0, R2, R1
42EC0E:  LDRB            R0, [R0,#0xA]
42EC10:  CMP             R0, #1
42EC12:  ITT EQ
42EC14:  MOVEQ           R0, #1
42EC16:  STREQ           R0, [R4,#0x38]
42EC18:  MOV             R0, R4; this
42EC1A:  POP.W           {R4,R5,R7,LR}
42EC1E:  B               _ZN12CMenuManager14DrawBackgroundEv; CMenuManager::DrawBackground(void)
