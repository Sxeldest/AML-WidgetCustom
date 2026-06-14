; =========================================================
; Game Engine Function: mpg123_set_index
; Address            : 0x23375A - 0x23376C
; =========================================================

23375A:  CMP             R0, #0
23375C:  ITTT NE
23375E:  MOVWNE          R1, #0xB468
233762:  MOVNE           R2, #0x26 ; '&'
233764:  STRNE           R2, [R0,R1]
233766:  MOV.W           R0, #0xFFFFFFFF
23376A:  BX              LR
