; =========================================================
; Game Engine Function: sub_1EEE22
; Address            : 0x1EEE22 - 0x1EEE38
; =========================================================

1EEE22:  PUSH            {R4,R6,R7,LR}
1EEE24:  ADD             R7, SP, #8
1EEE26:  MOV             R4, R0
1EEE28:  BL              sub_1EEE38
1EEE2C:  LDR             R0, [R4]; void *
1EEE2E:  CBZ             R0, loc_1EEE34
1EEE30:  BLX             j__ZdlPv; operator delete(void *)
1EEE34:  MOV             R0, R4
1EEE36:  POP             {R4,R6,R7,PC}
