; =========================================================
; Game Engine Function: sub_20E6D6
; Address            : 0x20E6D6 - 0x20E6E8
; =========================================================

20E6D6:  PUSH            {R7,LR}
20E6D8:  MOV             R7, SP
20E6DA:  MOV             R2, R0
20E6DC:  LDR             R0, [R0]
20E6DE:  STR             R1, [R2]
20E6E0:  CBZ             R0, locret_20E6E6
20E6E2:  LDR             R1, [R2,#4]
20E6E4:  BLX             R1
20E6E6:  POP             {R7,PC}
