; =========================================================
; Game Engine Function: sub_1EF740
; Address            : 0x1EF740 - 0x1EF750
; =========================================================

1EF740:  PUSH            {R7,LR}
1EF742:  MOV             R7, SP
1EF744:  BL              sub_1EEFF8
1EF748:  MOVS            R1, #0x38 ; '8'
1EF74A:  BLX             sub_220A6C
1EF74E:  POP             {R7,PC}
