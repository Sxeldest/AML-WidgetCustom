; =========================================================
; Game Engine Function: _Z26emu_SetShadowTargetTexturev
; Address            : 0x1BBBD4 - 0x1BBBE6
; =========================================================

1BBBD4:  LDR             R0, =(shadowTarget_ptr - 0x1BBBDA)
1BBBD6:  ADD             R0, PC; shadowTarget_ptr
1BBBD8:  LDR             R0, [R0]; shadowTarget
1BBBDA:  LDR             R0, [R0]
1BBBDC:  LDR             R0, [R0]
1BBBDE:  LDR             R1, [R0]
1BBBE0:  LDR             R2, [R1,#0x18]
1BBBE2:  MOVS            R1, #0
1BBBE4:  BX              R2
