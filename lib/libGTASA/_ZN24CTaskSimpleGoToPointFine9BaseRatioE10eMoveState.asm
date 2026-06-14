; =========================================================
; Game Engine Function: _ZN24CTaskSimpleGoToPointFine9BaseRatioE10eMoveState
; Address            : 0x517C68 - 0x517C78
; =========================================================

517C68:  SUBS            R0, #4
517C6A:  CMP             R0, #3
517C6C:  ITEE HI
517C6E:  MOVHI           R0, #0
517C70:  ADRLS           R1, dword_517C78
517C72:  LDRLS.W         R0, [R1,R0,LSL#2]
517C76:  BX              LR
