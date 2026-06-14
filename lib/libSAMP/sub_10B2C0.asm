; =========================================================
; Game Engine Function: sub_10B2C0
; Address            : 0x10B2C0 - 0x10B2D8
; =========================================================

10B2C0:  LDR             R0, =(dword_263080 - 0x10B2C6)
10B2C2:  ADD             R0, PC; dword_263080
10B2C4:  LDR             R0, [R0,#(dword_263084 - 0x263080)]
10B2C6:  CBZ             R0, loc_10B2D4
10B2C8:  LDR             R0, [R0,#4]
10B2CA:  SUBS.W          R0, R0, #0xFFFFFFFF
10B2CE:  IT NE
10B2D0:  MOVNE           R0, #1
10B2D2:  BX              LR
10B2D4:  MOVS            R0, #0
10B2D6:  BX              LR
