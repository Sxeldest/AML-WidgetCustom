; =========================================================
; Game Engine Function: _ZN20CTaskSimpleIKManager11IsSlotEmptyEi
; Address            : 0x4EFDB8 - 0x4EFDC8
; =========================================================

4EFDB8:  ADD.W           R0, R0, R1,LSL#2
4EFDBC:  LDR             R1, [R0,#8]
4EFDBE:  MOVS            R0, #0
4EFDC0:  CMP             R1, #0
4EFDC2:  IT EQ
4EFDC4:  MOVEQ           R0, #1
4EFDC6:  BX              LR
