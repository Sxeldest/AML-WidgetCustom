; =========================================================
; Game Engine Function: sub_8004C
; Address            : 0x8004C - 0x80058
; =========================================================

8004C:  LDR             R2, =(_ZTV9Parameter - 0x80052); `vtable for'Parameter ...
8004E:  ADD             R2, PC; `vtable for'Parameter
80050:  ADDS            R2, #8
80052:  STRD.W          R2, R1, [R0]
80056:  BX              LR
