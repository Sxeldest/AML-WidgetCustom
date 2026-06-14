; =========================================================
; Game Engine Function: _ZN18FxInterpInfoU255_cC2Ev
; Address            : 0x36C7D4 - 0x36C7E8
; =========================================================

36C7D4:  LDR             R1, =(_ZTV18FxInterpInfoU255_c_ptr - 0x36C7DE); Alternative name is 'FxInterpInfoU255_c::FxInterpInfoU255_c(void)'
36C7D6:  MOVS            R2, #0
36C7D8:  STRB            R2, [R0,#4]
36C7DA:  ADD             R1, PC; _ZTV18FxInterpInfoU255_c_ptr
36C7DC:  STRD.W          R2, R2, [R0,#8]
36C7E0:  LDR             R1, [R1]; `vtable for'FxInterpInfoU255_c ...
36C7E2:  ADDS            R1, #8
36C7E4:  STR             R1, [R0]
36C7E6:  BX              LR
