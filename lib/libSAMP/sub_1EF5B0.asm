; =========================================================
; Game Engine Function: sub_1EF5B0
; Address            : 0x1EF5B0 - 0x1EF5C0
; =========================================================

1EF5B0:  PUSH            {R4,R6,R7,LR}
1EF5B2:  ADD             R7, SP, #8
1EF5B4:  MOVS            R1, #0
1EF5B6:  MOV             R4, R0
1EF5B8:  BL              sub_1EF644
1EF5BC:  MOV             R0, R4
1EF5BE:  POP             {R4,R6,R7,PC}
