; =========================================================
; Game Engine Function: _Z25emu_DebugDrawCallsEnabledh
; Address            : 0x1B4F74 - 0x1B4F7E
; =========================================================

1B4F74:  LDR             R1, =(debug_DrawCalls_ptr - 0x1B4F7A)
1B4F76:  ADD             R1, PC; debug_DrawCalls_ptr
1B4F78:  LDR             R1, [R1]; debug_DrawCalls
1B4F7A:  STRB            R0, [R1]
1B4F7C:  BX              LR
