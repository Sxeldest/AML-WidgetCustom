; =========================================================
; Game Engine Function: sub_163EBA
; Address            : 0x163EBA - 0x163ECA
; =========================================================

163EBA:  LDR             R2, [R1]
163EBC:  MOVS            R3, #0
163EBE:  STRD.W          R2, R3, [R0,#4]
163EC2:  CBZ             R2, loc_163EC6
163EC4:  STR             R0, [R2,#8]
163EC6:  STR             R0, [R1]
163EC8:  BX              LR
