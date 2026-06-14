; =========================================================
; Game Engine Function: _Z20BreakableConstructorPvii
; Address            : 0x450DC0 - 0x450DD2
; =========================================================

450DC0:  LDR             R1, =(g_BreakablePlugin_ptr - 0x450DC6)
450DC2:  ADD             R1, PC; g_BreakablePlugin_ptr
450DC4:  LDR             R1, [R1]; g_BreakablePlugin
450DC6:  LDR             R1, [R1]
450DC8:  CMP             R1, #1
450DCA:  ITT GE
450DCC:  MOVGE           R2, #0
450DCE:  STRGE           R2, [R0,R1]
450DD0:  BX              LR
