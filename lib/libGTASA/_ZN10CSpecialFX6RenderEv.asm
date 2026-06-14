; =========================================================
; Game Engine Function: _ZN10CSpecialFX6RenderEv
; Address            : 0x5C0AC4 - 0x5C0B4C
; =========================================================

5C0AC4:  PUSH            {R4-R7,LR}
5C0AC6:  ADD             R7, SP, #0xC
5C0AC8:  PUSH.W          {R11}
5C0ACC:  MOVS            R0, #8
5C0ACE:  MOVS            R1, #0
5C0AD0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0AD4:  MOVS            R0, #0xA
5C0AD6:  MOVS            R1, #5
5C0AD8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0ADC:  MOVS            R0, #0xB
5C0ADE:  MOVS            R1, #6
5C0AE0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0AE4:  MOVS            R0, #0x14
5C0AE6:  MOVS            R1, #1
5C0AE8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0AEC:  MOVS            R0, #0xC
5C0AEE:  MOVS            R1, #1
5C0AF0:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0AF4:  MOVS            R0, #1
5C0AF6:  MOVS            R1, #0
5C0AF8:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5C0AFC:  BLX.W           j__ZN18CMotionBlurStreaks6RenderEv; CMotionBlurStreaks::Render(void)
5C0B00:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x5C0B06)
5C0B02:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
5C0B04:  LDR             R0, [R0]; MobileSettings::settings ...
5C0B06:  LDR             R0, [R0,#(dword_6E03FC - 0x6E03F4)]; this
5C0B08:  CMP             R0, #3
5C0B0A:  IT EQ
5C0B0C:  BLXEQ.W         j__ZN13CBulletTraces6RenderEv; CBulletTraces::Render(void)
5C0B10:  BLX.W           j__ZN11CShinyTexts6RenderEv; CShinyTexts::Render(void)
5C0B14:  BLX.W           j__ZN10C3dMarkers6RenderEv; C3dMarkers::Render(void)
5C0B18:  LDR             R0, =(_ZN12CCheckpoints15m_aCheckPtArrayE_ptr - 0x5C0B20)
5C0B1A:  MOVS            R4, #0
5C0B1C:  ADD             R0, PC; _ZN12CCheckpoints15m_aCheckPtArrayE_ptr
5C0B1E:  LDR             R5, [R0]; CCheckpoints::m_aCheckPtArray ...
5C0B20:  LDR             R0, =(_ZN12CCheckpoints15m_aCheckPtArrayE_ptr - 0x5C0B26)
5C0B22:  ADD             R0, PC; _ZN12CCheckpoints15m_aCheckPtArrayE_ptr
5C0B24:  LDR             R6, [R0]; CCheckpoints::m_aCheckPtArray ...
5C0B26:  ADDS            R0, R5, R4
5C0B28:  LDRB            R0, [R0,#2]
5C0B2A:  CMP             R0, #0
5C0B2C:  ITT NE
5C0B2E:  ADDNE           R0, R6, R4; this
5C0B30:  BLXNE.W         j__ZN11CCheckpoint6RenderEv; CCheckpoint::Render(void)
5C0B34:  ADDS            R4, #0x38 ; '8'
5C0B36:  CMP.W           R4, #0x700
5C0B3A:  BNE             loc_5C0B26
5C0B3C:  MOVS            R0, #0x14
5C0B3E:  MOVS            R1, #2
5C0B40:  POP.W           {R11}
5C0B44:  POP.W           {R4-R7,LR}
5C0B48:  B.W             sub_192888
