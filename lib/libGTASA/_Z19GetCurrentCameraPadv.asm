; =========================================================
; Game Engine Function: _Z19GetCurrentCameraPadv
; Address            : 0x3BF290 - 0x3BF2A4
; =========================================================

3BF290:  LDR             R0, =(currentPad_ptr - 0x3BF296)
3BF292:  ADD             R0, PC; currentPad_ptr
3BF294:  LDR             R0, [R0]; currentPad
3BF296:  LDR             R0, [R0]
3BF298:  CMP             R0, #0
3BF29A:  ITT EQ
3BF29C:  MOVEQ           R0, #0; this
3BF29E:  BEQ.W           sub_19F8F0
3BF2A2:  BX              LR
