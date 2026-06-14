; =========================================================
; Game Engine Function: _ZN10CTimeCycle15StopExtraColourEb
; Address            : 0x420848 - 0x420864
; =========================================================

420848:  LDR             R1, =(_ZN10CTimeCycle16m_bExtraColourOnE_ptr - 0x420850)
42084A:  CMP             R0, #0
42084C:  ADD             R1, PC; _ZN10CTimeCycle16m_bExtraColourOnE_ptr
42084E:  LDR             R2, [R1]; CTimeCycle::m_bExtraColourOn ...
420850:  MOV.W           R1, #0
420854:  STR             R1, [R2]; CTimeCycle::m_bExtraColourOn
420856:  IT NE
420858:  BXNE            LR
42085A:  LDR             R0, =(_ZN10CTimeCycle18m_ExtraColourInterE_ptr - 0x420860)
42085C:  ADD             R0, PC; _ZN10CTimeCycle18m_ExtraColourInterE_ptr
42085E:  LDR             R0, [R0]; CTimeCycle::m_ExtraColourInter ...
420860:  STR             R1, [R0]; CTimeCycle::m_ExtraColourInter
420862:  BX              LR
