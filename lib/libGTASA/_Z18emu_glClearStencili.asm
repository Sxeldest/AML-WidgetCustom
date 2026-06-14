; =========================================================
; Game Engine Function: _Z18emu_glClearStencili
; Address            : 0x1BB904 - 0x1BB90C
; =========================================================

1BB904:  LDR             R1, =(dword_6B4088 - 0x1BB90A)
1BB906:  ADD             R1, PC; dword_6B4088
1BB908:  STR             R0, [R1]
1BB90A:  BX              LR
