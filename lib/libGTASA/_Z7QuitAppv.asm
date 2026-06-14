; =========================================================
; Game Engine Function: _Z7QuitAppv
; Address            : 0x4D42F8 - 0x4D4304
; =========================================================

4D42F8:  LDR             R0, =(RsGlobal_ptr - 0x4D4300)
4D42FA:  MOVS            R1, #1
4D42FC:  ADD             R0, PC; RsGlobal_ptr
4D42FE:  LDR             R0, [R0]; RsGlobal
4D4300:  STR             R1, [R0,#(dword_9FC90C - 0x9FC8FC)]
4D4302:  BX              LR
