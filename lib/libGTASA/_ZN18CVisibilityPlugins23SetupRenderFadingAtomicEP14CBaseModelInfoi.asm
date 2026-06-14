; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins23SetupRenderFadingAtomicEP14CBaseModelInfoi
; Address            : 0x5D4E0C - 0x5D4E1E
; =========================================================

5D4E0C:  LDRB.W          R0, [R0,#0x28]
5D4E10:  LSLS            R0, R0, #0x1D
5D4E12:  IT PL
5D4E14:  BXPL            LR
5D4E16:  MOVS            R0, #0xB
5D4E18:  MOVS            R1, #2
5D4E1A:  B.W             sub_192888
