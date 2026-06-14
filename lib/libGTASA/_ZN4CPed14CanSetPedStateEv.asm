; =========================================================
; Game Engine Function: _ZN4CPed14CanSetPedStateEv
; Address            : 0x4A4B7C - 0x4A4B9C
; =========================================================

4A4B7C:  LDR.W           R0, [R0,#0x44C]
4A4B80:  SUBS            R0, #0x36 ; '6'
4A4B82:  CMP             R0, #9
4A4B84:  ITT HI
4A4B86:  MOVHI           R0, #1
4A4B88:  BXHI            LR
4A4B8A:  BFC.W           R0, #0xA, #0x16
4A4B8E:  MOV.W           R1, #0x194
4A4B92:  LSR.W           R0, R1, R0
4A4B96:  AND.W           R0, R0, #1
4A4B9A:  BX              LR
