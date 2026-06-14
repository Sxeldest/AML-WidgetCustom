; =========================================================
; Game Engine Function: _Z30emu_InternalSkinGetVectorCountv
; Address            : 0x1C1FC8 - 0x1C1FD6
; =========================================================

1C1FC8:  LDR             R0, =(skin_num_ptr - 0x1C1FCE)
1C1FCA:  ADD             R0, PC; skin_num_ptr
1C1FCC:  LDR             R0, [R0]; skin_num
1C1FCE:  LDR             R0, [R0]
1C1FD0:  ADD.W           R0, R0, R0,LSL#1
1C1FD4:  BX              LR
