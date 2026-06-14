; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins23ResetRenderFadingAtomicEP14CBaseModelInfo
; Address            : 0x5D4E1E - 0x5D4E30
; =========================================================

5D4E1E:  LDRB.W          R0, [R0,#0x28]
5D4E22:  LSLS            R0, R0, #0x1D
5D4E24:  IT PL
5D4E26:  BXPL            LR
5D4E28:  MOVS            R0, #0xB
5D4E2A:  MOVS            R1, #6
5D4E2C:  B.W             sub_192888
