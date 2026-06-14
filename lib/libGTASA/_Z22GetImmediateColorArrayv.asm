; =========================================================
; Game Engine Function: _Z22GetImmediateColorArrayv
; Address            : 0x1B5078 - 0x1B5082
; =========================================================

1B5078:  LDR             R0, =(Imm_ptr - 0x1B507E)
1B507A:  ADD             R0, PC; Imm_ptr
1B507C:  LDR             R0, [R0]; Imm
1B507E:  ADDS            R0, #0x48 ; 'H'
1B5080:  BX              LR
