; =========================================================
; Game Engine Function: sub_AEA38
; Address            : 0xAEA38 - 0xAEA4E
; =========================================================

AEA38:  MOVS            R1, #0
AEA3A:  STRD.W          R1, R1, [R0]
AEA3E:  STRD.W          R1, R1, [R0,#8]
AEA42:  STRD.W          R1, R1, [R0,#0x10]
AEA46:  STRD.W          R1, R1, [R0,#0x18]
AEA4A:  STR             R1, [R0,#0x20]
AEA4C:  BX              LR
