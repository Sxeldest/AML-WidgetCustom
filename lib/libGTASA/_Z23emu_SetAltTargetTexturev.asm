; =========================================================
; Game Engine Function: _Z23emu_SetAltTargetTexturev
; Address            : 0x1BBBBC - 0x1BBBCE
; =========================================================

1BBBBC:  LDR             R0, =(backTarget_ptr - 0x1BBBC2)
1BBBBE:  ADD             R0, PC; backTarget_ptr
1BBBC0:  LDR             R0, [R0]; backTarget
1BBBC2:  LDR             R0, [R0]
1BBBC4:  LDR             R0, [R0]
1BBBC6:  LDR             R1, [R0]
1BBBC8:  LDR             R2, [R1,#0x18]
1BBBCA:  MOVS            R1, #0
1BBBCC:  BX              R2
