; =========================================================
; Game Engine Function: _ZN5CFont28RemapCharacterWithoutGraphicEt
; Address            : 0x5A870A - 0x5A871A
; =========================================================

5A870A:  CMP             R0, #0x91
5A870C:  ITT EQ
5A870E:  MOVEQ           R0, #0x40 ; '@'
5A8710:  BXEQ            LR
5A8712:  CMP             R0, #0x9B
5A8714:  IT HI
5A8716:  MOVHI           R0, #0
5A8718:  BX              LR
