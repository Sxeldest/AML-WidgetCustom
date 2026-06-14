; =========================================================
; Game Engine Function: _Z23GetImmediateNormalArrayv
; Address            : 0x1B5098 - 0x1B50A2
; =========================================================

1B5098:  LDR             R0, =(Imm_ptr - 0x1B509E)
1B509A:  ADD             R0, PC; Imm_ptr
1B509C:  LDR             R0, [R0]; Imm
1B509E:  ADDS            R0, #0x30 ; '0'
1B50A0:  BX              LR
