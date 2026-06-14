; =========================================================
; Game Engine Function: _ZN10CStreaming20GetDefaultMedicModelEv
; Address            : 0x2D6D44 - 0x2D6D56
; =========================================================

2D6D44:  LDR             R0, =(_ZN9CTheZones11m_CurrLevelE_ptr - 0x2D6D4C)
2D6D46:  LDR             R1, =(unk_60F10C - 0x2D6D4E)
2D6D48:  ADD             R0, PC; _ZN9CTheZones11m_CurrLevelE_ptr
2D6D4A:  ADD             R1, PC; unk_60F10C
2D6D4C:  LDR             R0, [R0]; CTheZones::m_CurrLevel ...
2D6D4E:  LDR             R0, [R0]; CTheZones::m_CurrLevel
2D6D50:  LDR.W           R0, [R1,R0,LSL#2]
2D6D54:  BX              LR
