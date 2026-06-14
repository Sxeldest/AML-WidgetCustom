; =========================================================
; Game Engine Function: sub_214EE4
; Address            : 0x214EE4 - 0x214EF8
; =========================================================

214EE4:  LDRD.W          R2, R3, [R0,#4]
214EE8:  CMP             R2, R3
214EEA:  IT EQ
214EEC:  BEQ.W           sub_2150D0
214EF0:  LDR             R1, [R1]
214EF2:  STM             R2!, {R1}
214EF4:  STR             R2, [R0,#4]
214EF6:  BX              LR
