; =========================================================
; Game Engine Function: _ZN13CEventRevivedC2Ev
; Address            : 0x374698 - 0x3746AA
; =========================================================

374698:  LDR             R1, =(_ZTV13CEventRevived_ptr - 0x3746A2); Alternative name is 'CEventRevived::CEventRevived(void)'
37469A:  MOVS            R2, #0
37469C:  STRB            R2, [R0,#8]
37469E:  ADD             R1, PC; _ZTV13CEventRevived_ptr
3746A0:  LDR             R1, [R1]; `vtable for'CEventRevived ...
3746A2:  ADDS            R1, #8
3746A4:  STRD.W          R1, R2, [R0]
3746A8:  BX              LR
