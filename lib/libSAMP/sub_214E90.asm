; =========================================================
; Game Engine Function: sub_214E90
; Address            : 0x214E90 - 0x214EAC
; =========================================================

214E90:  LDRD.W          R2, R3, [R0,#4]
214E94:  CMP             R2, R3
214E96:  IT CS
214E98:  BCS.W           sub_214F74
214E9C:  LDRD.W          R3, R1, [R1]
214EA0:  STRD.W          R3, R1, [R2]
214EA4:  ADD.W           R1, R2, #8
214EA8:  STR             R1, [R0,#4]
214EAA:  BX              LR
