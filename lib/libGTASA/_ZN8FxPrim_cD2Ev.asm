; =========================================================
; Game Engine Function: _ZN8FxPrim_cD2Ev
; Address            : 0x36DCF4 - 0x36DD06
; =========================================================

36DCF4:  LDR             R1, =(_ZTV8FxPrim_c_ptr - 0x36DCFC); Alternative name is 'FxPrim_c::~FxPrim_c()'
36DCF6:  MOVS            R2, #0
36DCF8:  ADD             R1, PC; _ZTV8FxPrim_c_ptr
36DCFA:  LDR             R1, [R1]; `vtable for'FxPrim_c ...
36DCFC:  ADDS            R1, #8
36DCFE:  STRD.W          R1, R2, [R0]
36DD02:  STR             R2, [R0,#8]
36DD04:  BX              LR
