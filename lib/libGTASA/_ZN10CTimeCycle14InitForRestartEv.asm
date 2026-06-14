; =========================================================
; Game Engine Function: _ZN10CTimeCycle14InitForRestartEv
; Address            : 0x420900 - 0x420914
; =========================================================

420900:  LDR             R0, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x42090A)
420902:  MOVS            R2, #0
420904:  LDR             R1, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x42090C)
420906:  ADD             R0, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
420908:  ADD             R1, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
42090A:  LDR             R0, [R0]; CTimeCycle::m_ExtraColourInter ...
42090C:  LDR             R1, [R1]; CTimeCycle::m_bExtraColourOn ...
42090E:  STR             R2, [R0]; CTimeCycle::m_ExtraColourInter
420910:  STR             R2, [R1]; CTimeCycle::m_bExtraColourOn
420912:  BX              LR
