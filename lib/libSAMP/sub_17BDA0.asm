; =========================================================
; Game Engine Function: sub_17BDA0
; Address            : 0x17BDA0 - 0x17BDB6
; =========================================================

17BDA0:  MOVS            R1, #0
17BDA2:  STRD.W          R1, R1, [R0]
17BDA6:  STRD.W          R1, R1, [R0,#8]
17BDAA:  STRD.W          R1, R1, [R0,#0x10]
17BDAE:  STRD.W          R1, R1, [R0,#0x18]
17BDB2:  STR             R1, [R0,#0x20]
17BDB4:  BX              LR
