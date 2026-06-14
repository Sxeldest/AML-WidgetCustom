; =========================================================
; Game Engine Function: _ZN9CGangWars19DontCreateCiviliansEv
; Address            : 0x30E07C - 0x30E08C
; =========================================================

30E07C:  LDR             R0, =(_ZN9CGangWars5StateE_ptr - 0x30E082)
30E07E:  ADD             R0, PC; _ZN9CGangWars5StateE_ptr
30E080:  LDR             R0, [R0]; CGangWars::State ...
30E082:  LDR             R0, [R0]; CGangWars::State
30E084:  CMP             R0, #0
30E086:  IT NE
30E088:  MOVNE           R0, #1
30E08A:  BX              LR
