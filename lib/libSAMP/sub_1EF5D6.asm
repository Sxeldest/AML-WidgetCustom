; =========================================================
; Game Engine Function: sub_1EF5D6
; Address            : 0x1EF5D6 - 0x1EF5F2
; =========================================================

1EF5D6:  PUSH            {R4,R5,R7,LR}
1EF5D8:  ADD             R7, SP, #8
1EF5DA:  SUBS            R2, R2, R1
1EF5DC:  LDR             R4, [R0,#8]
1EF5DE:  BIC.W           R2, R2, #3
1EF5E2:  ADDS            R3, R4, R2
1EF5E4:  CBZ             R2, loc_1EF5EE
1EF5E6:  LDM             R1!, {R5}
1EF5E8:  SUBS            R2, #4
1EF5EA:  STM             R4!, {R5}
1EF5EC:  B               loc_1EF5E4
1EF5EE:  STR             R3, [R0,#8]
1EF5F0:  POP             {R4,R5,R7,PC}
