; =========================================================
; Game Engine Function: sub_1F1BF2
; Address            : 0x1F1BF2 - 0x1F1C0E
; =========================================================

1F1BF2:  LDRD.W          R2, R3, [R0,#4]
1F1BF6:  CMP             R2, R3
1F1BF8:  IT CS
1F1BFA:  BCS.W           loc_22461C
1F1BFE:  LDRD.W          R3, R1, [R1]
1F1C02:  STRD.W          R3, R1, [R2]
1F1C06:  ADD.W           R1, R2, #8
1F1C0A:  STR             R1, [R0,#4]
1F1C0C:  BX              LR
