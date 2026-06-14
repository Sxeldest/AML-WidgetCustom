; =========================================================
; Game Engine Function: sub_FF60C
; Address            : 0xFF60C - 0xFF614
; =========================================================

FF60C:  LDR             R0, =(dword_23799C - 0xFF612)
FF60E:  ADD             R0, PC; dword_23799C
FF610:  LDR             R0, [R0]
FF612:  BX              LR
