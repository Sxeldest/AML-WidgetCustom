; =========================================================
; Game Engine Function: celt_lcg_rand
; Address            : 0xBDA90 - 0xBDAA6
; =========================================================

BDA90:  MOVW            R1, #0xF35F
BDA94:  MOVW            R2, #:lower16:unk_19660D
BDA98:  MOVT            R1, #0x3C6E
BDA9C:  MOVT            R2, #:upper16:unk_19660D
BDAA0:  MLA.W           R0, R0, R2, R1
BDAA4:  BX              LR
