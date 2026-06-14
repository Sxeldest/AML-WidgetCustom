; =========================================================
; Game Engine Function: _ZN6CEventC2Ev
; Address            : 0x36FAF4 - 0x36FB06
; =========================================================

36FAF4:  LDR             R1, =(_ZTV6CEvent_ptr - 0x36FAFE)
36FAF6:  MOVS            R2, #0
36FAF8:  STRB            R2, [R0,#8]
36FAFA:  ADD             R1, PC; _ZTV6CEvent_ptr
36FAFC:  LDR             R1, [R1]; `vtable for'CEvent ...
36FAFE:  ADDS            R1, #8
36FB00:  STRD.W          R1, R2, [R0]
36FB04:  BX              LR
