; =========================================================
; Game Engine Function: sub_17D4A8
; Address            : 0x17D4A8 - 0x17D4C0
; =========================================================

17D4A8:  MOVS            R1, #1
17D4AA:  MOVS            R2, #0
17D4AC:  STRB            R1, [R0,#0x10]
17D4AE:  ADD.W           R1, R0, #0x11
17D4B2:  MOV.W           R3, #0x800
17D4B6:  STRD.W          R2, R3, [R0]
17D4BA:  STRD.W          R2, R1, [R0,#8]
17D4BE:  BX              LR
