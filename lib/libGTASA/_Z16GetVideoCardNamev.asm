; =========================================================
; Game Engine Function: _Z16GetVideoCardNamev
; Address            : 0x5E5028 - 0x5E503E
; =========================================================

5E5028:  LDR             R0, =(GcurSel_ptr - 0x5E5030)
5E502A:  LDR             R1, =(unk_A9889C - 0x5E5032)
5E502C:  ADD             R0, PC; GcurSel_ptr
5E502E:  ADD             R1, PC; unk_A9889C
5E5030:  LDR             R0, [R0]; GcurSel
5E5032:  LDR             R0, [R0]
5E5034:  ADD.W           R0, R0, R0,LSL#2
5E5038:  ADD.W           R0, R1, R0,LSL#4
5E503C:  BX              LR
