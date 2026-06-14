; =========================================================
; Game Engine Function: sub_20F2C4
; Address            : 0x20F2C4 - 0x20F2D6
; =========================================================

20F2C4:  PUSH            {R7,LR}
20F2C6:  MOV             R7, SP
20F2C8:  MOV             R2, R0
20F2CA:  LDR             R0, [R0]
20F2CC:  STR             R1, [R2]
20F2CE:  CBZ             R0, locret_20F2D4
20F2D0:  LDR             R1, [R2,#4]
20F2D2:  BLX             R1
20F2D4:  POP             {R7,PC}
