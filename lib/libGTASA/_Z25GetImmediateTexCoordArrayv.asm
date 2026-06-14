; =========================================================
; Game Engine Function: _Z25GetImmediateTexCoordArrayv
; Address            : 0x1B5088 - 0x1B5092
; =========================================================

1B5088:  LDR             R0, =(Imm_ptr - 0x1B508E)
1B508A:  ADD             R0, PC; Imm_ptr
1B508C:  LDR             R0, [R0]; Imm
1B508E:  ADDS            R0, #0x18
1B5090:  BX              LR
