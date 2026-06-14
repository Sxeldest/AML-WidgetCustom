; =========================================================
; Game Engine Function: _ZN14MainMenuScreen6OnExitEv
; Address            : 0x29DE88 - 0x29DE94
; =========================================================

29DE88:  LDR             R0, =(RsGlobal_ptr - 0x29DE90)
29DE8A:  MOVS            R1, #1
29DE8C:  ADD             R0, PC; RsGlobal_ptr
29DE8E:  LDR             R0, [R0]; RsGlobal
29DE90:  STR             R1, [R0,#(dword_9FC90C - 0x9FC8FC)]
29DE92:  BX              LR
