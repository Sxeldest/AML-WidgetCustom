; =========================================================
; Game Engine Function: _Z28emu_ArraysDrawStoredSeparatejjjjj
; Address            : 0x1BCFAC - 0x1BCFB4
; =========================================================

1BCFAC:  MOV             R12, R0
1BCFAE:  MOV             R0, R1; this
1BCFB0:  MOV             R1, R12; ArrayState *
1BCFB2:  B               _ZN10ArrayState13DrawWithIndexEPS_jjj; ArrayState::DrawWithIndex(ArrayState*,uint,uint,uint)
