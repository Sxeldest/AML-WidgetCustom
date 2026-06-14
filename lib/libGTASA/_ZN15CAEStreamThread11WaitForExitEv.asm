; =========================================================
; Game Engine Function: _ZN15CAEStreamThread11WaitForExitEv
; Address            : 0x3AA49C - 0x3AA4A8
; =========================================================

3AA49C:  LDR             R0, [R0]; void *
3AA49E:  CMP             R0, #0
3AA4A0:  IT NE
3AA4A2:  BNE.W           sub_196824
3AA4A6:  BX              LR
